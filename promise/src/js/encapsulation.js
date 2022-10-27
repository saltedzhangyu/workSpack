function mineReadFile(path) {
    return new Promise((resolve, reject) => {
        require("fs").readFile(path, (err, data) => {
            if (err) {
                reject(err)
            } else {
                resolve(data)
            }
        })
    })
}

mineReadFile("./../../public/Test1.html").then(value => {
    console.log(value.toString())
}, reason => {
    console.log(reason)
})