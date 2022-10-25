// 引入express
const express = require('express');
// 创建应用对象
const app = express();
// 创建路由规则
app.all('/service', (request, response)=>{
    // 设置允许跨域
    response.setHeader("Access-Control-Allow-Origin", "*")
    response.setHeader("Access-Control-Allow-Headers", "*")

    const data = {
        name: "lisi"
    }
    let str = JSON.stringify(data)
    response.send(str)

})

app.listen(8000, ()=>{
    console.log("服务已经启动")
})