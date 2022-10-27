new Promise((resolve, reject) => {
    setTimeout(() => {
        reject("ok")
    }, 1000)
}).then(value => {
    return new Promise((resolve, reject) => {
        resolve("success")
    })
}).then(value => {
    console.log(value)
}).then(value => {
    console.log(value)
}).catch(reason => {
    console.warn(reason)
})

