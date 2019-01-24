import * as koaRouter from 'koa-router'
import * as fs from 'fs'
import { mkdirsSync } from '@libs/util'
import { Picture } from '@models'
const router = new koaRouter()

router.prefix('/admin')

router.post('/upload', async (ctx, next) => {
    mkdirsSync('upload/')
    const file = ctx.request.files.file
    const reader = fs.createReadStream(file.path)
    const fileNameArr = file.name.split('.')
    const ext = fileNameArr.pop()
    const oldFileName = fileNameArr.join()
    const newFileName = `${oldFileName}_${new Date().getTime()}`
    const newFileUrl = `upload/${newFileName}.${ext}`
    const upStream = fs.createWriteStream(newFileUrl)
    reader.pipe(upStream)
    new Picture({ name: oldFileName, picture_url: newFileUrl }).save(null, { method: 'insert' })
    return ctx.body = '上传成功'
})

router.post('/commitArticle', async (ctx, next) => {
    return ctx.body = { 'text': '你好' }
})

export default router
