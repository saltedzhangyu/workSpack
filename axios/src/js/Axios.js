function Axios(config) {
    // 配置项
    this.defaults = config;
    // 拦截器
    this.interceptors = {
        request: new InterceptorManager(),
        response: new InterceptorManager()
    }
}

Axios.prototype.request = function (config) {
    let promise = Promise.resolve(config)
    const chains = [dispatchRequest, undefined]

    this.interceptors.request.handlers.forEach(item => {
        chains.unshift(item.fulfilled, item.rejected)
    })
    this.interceptors.response.handlers.forEach(item => {
        chains.push(item.fulfilled, item.rejected)
    })

    while (chains.length > 0) {
        promise = promise.then(chains.shift(), chains.shift())
    }

    return promise
}

function InterceptorManager() {
    this.handlers = []
}

InterceptorManager.prototype.use = function (fulfilled, rejected) {
    this.handlers.push({
            fulfilled,
            rejected
        }
    )
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
        instance[key] = context[key]
    })
    return instance
}

let axios = createInstance({method: "Get"})

axios.interceptors.request.use(function (config) {
    console.log("请求拦截器成功")
    return config
}, function (error) {
    console.log("请求拦截器失败")
    return Promise.reject(error)
})

axios.interceptors.response.use(function (config) {
    console.log("响应拦截器成功")
    return config
}, function (error) {
    console.log("响应拦截器失败")
    return Promise.reject(error)
})

console.dir(axios)

axios.get({
    url: "http://localhost:3000/posts",
    method: "get"
}).then(value => {
    console.log(value)
})
