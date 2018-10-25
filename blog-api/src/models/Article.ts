import db from '@libs/db'

export const Article = db.Model.extend({
    tableName: 'articles',
    hasTimestamps: ['create_at', 'update_at']
}) as typeof db.Model
