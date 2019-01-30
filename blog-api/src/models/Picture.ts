import db from '@libs/db'

export const Picture = db.Model.extend({
    tableName: 'pictures',
    hasTimestamps: ['create_at', 'update_at']
}) as typeof db.Model
/**
 * `picture_id` int(11) NOT NULL AUTO_INCREMENT,
 * `name` varchar(45) DEFAULT NULL,
 * `description` varchar(45) DEFAULT NULL,
 * `create_at` timestamp(6) NULL DEFAULT NULL,
 * `update_at` timestamp(6) NULL DEFAULT NULL,
 * `picture_url` varchar(45) DEFAULT NULL,
 */
