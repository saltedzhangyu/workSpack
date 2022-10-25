require("fs");
const fs = require("fs");

function readFile(filePath) {
    return new Promise((resolve, reject) => {
        fs.readFile(filePath, (err,data) => {
            if (err)
                reject(err)
            resolve(data)
        })
    })
}

async function main() {
    let text1 = await readFile("../resources/text1.txt")
    let text2 = await readFile("../resources/text2.txt")
    let text3 = await readFile("../resources/text3.txt")
    console.log(text1.toString())
    console.log(text2.toString())
    console.log(text3.toString())
}
main()



// console.log(new Vue({
//     el: "#root",
//     data() {
//         return {
//             response: " "
//         }
//     },
//     methods: {
//         send() {
//             // axios.post("http://127.0.0.1:8000/service", {
//             //     username: "name"
//             // })
//
//             axios({
//                 method: "post",
//                 url: "http://127.0.0.1:8000/service",
//                 params: {
//                     password: "admin"
//                 },
//                 data: {
//                     username: "admin"
//                 },
//             }).then(response => {
//                 this.response = response.data.name
//             })
//         }
//     }
// }))
