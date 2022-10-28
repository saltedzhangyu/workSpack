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
    console.log("发送ajax请求 === request " + config)
}

Axios.prototype.get = function (config) {
    console.log("将通过get发送ajax请求")
    return this.request(config)
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
axios.get()
axios.request()
axios()
console.dir(axios)