解决的问题：数据迁移中，定义mysql数据库层的外键约束。

前提：使用mysql数据库，sqlite3是不支持外键约束的。

1 lib文件夹中定义MigrationHelpers extend Migrate Class.

2 migrate 任务中应用fk method。

