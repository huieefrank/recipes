解决的问题，数据表与csv文件的inport与export
 
使用：
 $gem install fastercsv
 
1 确定数据表结构，$ruby script/generate scaffold .....

2 index.html文件中，创建 upload_form ，创建一个名为wether_data实例对象，其中
  wether_data[file_data]就是用来零时存储csv文件。

3 controller中定义import，根据 params[:weather_data][:file_data]创建解析器对象,
   根据FieldInfo object的header，来处理值的转换为必要的格式。
   逐行存入数据到数据表。
   
4 export定义 ，csv中加入列名信息；提取数据库中的数据，逐行加入csv；发送数据到浏览器（下载）
 