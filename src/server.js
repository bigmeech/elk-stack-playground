const Koa = require('koa');
const logger = require('koa-logger');
const Router = require('koa-router');

const app = new Koa();
const PORT = process.env.PORT || 3000;
const router = new Router();
router.get('/api/sample', (ctx) => {
    ctx.body = 'hello world'
});

app.use(logger());
app.use(router.routes());
app.use(router.allowedMethods());

app.listen(PORT, () => {
    console.log(`ELK Playground Server Started at http://localhost:${PORT}`);
});
