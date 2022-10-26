function rand(m, n) {
    return Math.ceil(Math.random() * (n - m + 1)) + m - 1
}

const click = document.getElementsByClassName("click")[0];
click.addEventListener("click", new Promise(((resolve, reject) => {
        const count = rand(1, 100)
        if (count <= 30) {
            resolve(count)
        } else {
            reject(count)
        }
    })).then(value => {
        alert("中奖 号码为 : " + value)
    }, reason => {
        alert("未中奖 号码为 : " + reason)
    })
)
