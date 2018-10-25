import * as koaRouter from 'koa-router'
import { Article } from '@models'

const router = new koaRouter()

router.prefix('/blog')

router.get('/getAllArticles', async (ctx, next) => {
    const articles = await new Article().fetchAll()
    return ctx.body = { articles: articles }
})

export default router
