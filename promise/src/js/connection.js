new Promise((resolve, reject) => {
    setTimeout(() => {
        resolve("ok")
    }, 1000)
}).then(value => {
    return new Promise((resolve, reject) => {
        resolve("success")
    })
}).then(value => {
    console.log(value)
    return new Promise(() => {})
}).then(value => {
    console.log(value)
}).catch(reason => {
    console.warn(reason)
})

