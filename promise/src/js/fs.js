const fs = require("fs")

new Promise((resolve, reject) => {
    fs.readFile("./../../public/Test1.html", (err, data) => {
        if (err) {
            reject(err)
        }
        resolve(data)
    })
}).then(value => {
    console.log(value.toString())
}, reason => {
    console.log(reason)
})

