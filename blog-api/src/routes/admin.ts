import * as koaRouter from 'koa-router'
import * as fs from 'fs'
import { uploadFile } from '@libs/uploadFile'
const router = new koaRouter()

router.prefix('/admin')

router.post('/upload', async (ctx, next) => {
    await uploadFile(ctx, {
        fileType: 'album', // common or album
        path: 'public/'
    })
    return ctx.body = { 'text': '上传成功' }
})

router.post('/commitArticle', async (ctx, next) => {
    console.log('ddddddddddddddddddddd')
    return ctx.body = { 'text': '你好' }
})

export default router
