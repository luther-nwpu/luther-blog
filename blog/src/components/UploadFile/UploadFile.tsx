import * as React from 'react'
import { PureComponent } from 'react'

export class UploadFile extends PureComponent {
    public state = {
        name: '',
        path: '',
        preview: null,
        data: null,
    }
    public changeName = (e: any) => {
        this.setState({ name: e.target.value })
    }

    public changePath = (e: any) => {
        const file = e.target.files[0]
        if (!file) {
            return
        }
        let src, preview, type = file.type
        if (/^image\/\S+$/.test(type)) {         // 匹配类型为image/开头的字符串
            src = URL.createObjectURL(file)
            preview = <img src={src} alt="" />
        } else if (/^video\/\S+$/.test(type)) {         // 匹配类型为video/开头的字符串
            src = URL.createObjectURL(file)
            preview = <video src={src} autoPlay={true} loop={true} controls={true} />
        } else if (/^text\/\S+$/.test(type)) {           // 匹配类型为text/开头的字符串
            // const self = this
            const reader = new FileReader()
            reader.readAsText(file)
            // 注：onload是异步函数，此处需独立处
            // reader.onload = function() {
            //    // preview = <textarea value={this.result} readOnly={true}/>
            //     self.setState({ path: file.name, data: file, preview })
            // }
            return
        }
        this.setState({ path: file.name, data: file, preview })
    }
    // 上传文件
    public upload = () => {
        const data = this.state.data
        if (!data) {
            return
        }
        // 此处的url应该是服务端提供的上传文件api
        const url = '/admin/upload'
        const form = new FormData()
        // 此处的file字段由上传的api决定，可以是其它值
        form.append('file', data)
        console.log(data)
        fetch(url, {
            method: 'POST',
            body: form,
        }).then((res) => {
            console.log(res)
        })
    }
    public render() {
        return (
            <div>
                <input id="upfile" type="file" accept="image/*" onChange={this.changePath} />
            </div>
        )
    }
}
