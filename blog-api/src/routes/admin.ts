import * as koaRouter from 'koa-router'
import * as fs from 'fs'
const router = new koaRouter()

router.prefix('/admin')

router.post('/upload', async (ctx, next) => {
    const file = ctx.request.files.file
    const reader = fs.createReadStream(file.path)
    const ext = file.name.split('.').pop()
    const upStream = fs.createWriteStream(`upload/${Math.random().toString()}.${ext}`)
    reader.pipe(upStream)
    return ctx.body = { 'text': '上传成功' }
})
router.post('commitArticle', async (ctx, next) => {
    const articleValue = ctx.request.body.text
    console.log(articleValue)
})

router.post('addArticle', async (ctx, next) => {
    console.log(ctx.request.body)
})

export default router
