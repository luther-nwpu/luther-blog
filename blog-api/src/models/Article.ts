import db from '@libs/db'
import { Picture } from '@models'
export const Article = db.Model.extend({
    tableName: 'articles',
    hasTimestamps: ['create_at', 'update_at'],
    picture: function () {
        return this.belongsTo(Picture, 'picture_id', 'picture_id')
    }
}) as typeof db.Model
