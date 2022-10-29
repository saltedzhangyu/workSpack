function Axios(config) {
    // 配置项
    this.defaults = config;
    // 拦截器
    this.interceptors = {
        request: new InterceptorManager(),
        response: new InterceptorManager()
    }
}

// 拦截器
function InterceptorManager() {
    this.handlers = []
}

// 添加拦截器
InterceptorManager.prototype.use = function (fulfilled, rejected) {
    this.handlers.push({
            fulfilled,
            rejected
        }
    )
}

// 发送get请求
Axios.prototype.get = function (config) {
    console.log("将通过get发送ajax请求")
    return this.request(config)
}

// 发送请求
Axios.prototype.request = function (config) {
    // 根据config 返回一个promise
    let promise = Promise.resolve(config)
    // 执行数组 dispatchRequest 发送请求的
    const chains = [dispatchRequest, undefined]

    // 请求拦截器
    this.interceptors.request.handlers.forEach(item => {
        chains.unshift(item.fulfilled, item.rejected)
    })
    // 响应拦截器
    this.interceptors.response.handlers.forEach(item => {
        chains.push(item.fulfilled, item.rejected)
    })

    // 依次执行
    while (chains.length > 0) {
        promise = promise.then(chains.shift(), chains.shift())
    }
    return promise
}

// 取消请求
Axios.prototype.CancelToken = function (executor) {
    // 调用resolvePromise 即等于 将下面的promise状态改为成功
    let resolvePromise
    this.promise = new Promise((resolve) => {
        resolvePromise = resolve
    })
    executor(function () {
        resolvePromise()
    })
}

// 调用适配器发送请求
function dispatchRequest(config) {
    return xhrAdapter(config).then(value => {
        return value
    }, reason => {
        return reason
    })
}

// 适配器 调用xhr发送ajax请求
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

        // 如果config中配置了 cancelToken 则会在promise成功后取消请求
        if (config.cancelToken) {
            config.cancelToken.promise.then(() => {
                xhr.abort()
            })
        }
    })
}

// 创建实例对象
function createInstance(config) {
    // Axios对象实例
    let context = new Axios(config)
    // instance定义为一个方法 可以直接调用发送请求 this指向Axios实例
    let instance = Axios.prototype.request.bind(context)
    // 将Axios原型的方法 复制到 instance上
    Object.keys(Axios.prototype).forEach(key => {
        instance[key] = Axios.prototype[key].bind(context)
    })
    // 将context的属性 复制到 instance上
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

let cancel = null

axios.get({
    url: "http://localhost:3000/posts",
    method: "get",
    cancelToken: new axios.CancelToken(function (c) {
        cancel = c
    }),
}).then(value => {
    console.log(value)
})

cancel()