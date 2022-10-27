$(".click").click(() => {
    new Promise((resolve, reject) => {
        $.ajax({
            type: "get",
            url: "https://api.apiopen.top/api/sentences",
            success: function (value) {
                resolve(value)
            },
            error: function (reason) {
                reject(reason)
            }
        })
    }).then(value => {
        console.log(value)
    }, reason => {
        console.log(reason)
    })
})