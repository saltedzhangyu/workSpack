function Axios(config) {
    // 配置项
    this.defaults = config;
    // 拦截器
    this.intercepters = {
        request: {},
        response: {}
    }
}

Axios.prototype.request = function (config) {
    let promise = Promise.resolve(config)
    let chains = [dispatchRequest, undefined]
    return promise.then(chains[0], chains[1])
}

Axios.prototype.get = function (config) {
    console.log("将通过get发送ajax请求")
    return this.request(config)
}

function dispatchRequest(config) {
    return xhrAdapter(config).then(value => {
        return value
    }, reason => {
        return reason
    })
}

function xhrAdapter(config) {
    return new Promise((resolve, reject) => {
        let xhr = new XMLHttpRequest();
        xhr.open(config.method, config.url)
        xhr.send();
        xhr.onreadystatechange = function () {
            if (xhr.readyState === 4) {
                if (xhr.status >= 200 && xhr.status < 300) {
                    resolve({
                        config,
                        data: xhr.response,
                        headers: xhr.getAllResponseHeaders(),
                        request: xhr,
                        status: xhr.status,
                        statusText: xhr.statusText
                    })
                } else {
                    reject(new Error("请求失败" + xhr.status))
                }
            }
        }
    })
}

function createInstance(config) {
    let context = new Axios(config)
    let instance = Axios.prototype.request.bind(context)
    Object.keys(Axios.prototype).forEach(key => {
        instance[key] = Axios.prototype[key].bind(context)
    })
    Object.keys(context).forEach(key => {
        instance[key] = console[key]
    })
    return instance
}

let axios = createInstance({method: "Get"})


axios.get({
    url:"http://localhost:3000/posts",
    method: "get"
}).then(value => {
    console.log(value)
})
