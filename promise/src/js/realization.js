function Promise(executor) {
    this.PromiseState = "pending"
    this.PromiseResult = undefined
    this.callbacks = []
    const self = this

    function resolve(data) {
        // 已经进行过一次更改了
        if (self.PromiseState !== "pending") {
            return
        }
        self.PromiseState = "resolved"
        self.PromiseResult = data
        self.callbacks.forEach(item => {
            item.onResolved(data)
        })
    }

    function reject(data) {
        if (self.PromiseState !== "pending") {
            return
        }
        self.PromiseState = "reject"
        self.PromiseResult = data
        self.callbacks.forEach(item => {
            item.onRejected(data)
        })
    }

    try {
        executor(resolve, reject)
    } catch (e) {
        reject(e)
    }
}

Promise.prototype.then = function (onResolved, onRejected) {
    const self = this
    if (typeof onRejected !== "function") {
        onRejected = reason => {
            throw reason
        }
    }
    return new Promise((resolve, reject) => {
        function promiseReturn(result) {
            if (result instanceof Promise) {
                result.then(value => {
                    resolve(value)
                }, reason => {
                    reject(reason)
                })
            } else {
                resolve(result)
            }
        }

        if (this.PromiseState === "resolved") {
            let result = onResolved(this.PromiseResult)
            promiseReturn(result)
        } else if (this.PromiseState === "reject") {
            onRejected(this.PromiseResult)
        } else if (this.PromiseState === "pending") {
            try {
                this.callbacks.push({
                        onResolved() {
                            let result = onResolved(self.PromiseResult)
                            promiseReturn(result)
                        },
                        onRejected() {
                            let result = onRejected(self.PromiseResult)
                            promiseReturn(result)
                        }
                    }
                )
            } catch (e) {
                resolve(e)
            }
        }
    })
}

Promise.prototype.catch = function (onRejected) {
    return this.then(undefined, onRejected)
}


let promise = new Promise((resolve, reject) => {
    setTimeout(() => {
        reject("123")
    }, 1000)
})

let then = promise.then(value => {
    console.log("1")
}).then(value => {
    console.log("2")
}).then(value => {
    console.log("3")
})

console.log(then)

then.catch(reason => {
    console.warn(reason)
})


