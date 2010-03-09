解决的问题：以xml为数据源构建model

1拆分xml树element 层次,基于StructClass建立业务层面的基础对象.
 分析xml属性，基于StructClass建立可重用性的对象。比如这里的Money，为多个业务层面对象共用。

2 建立整个xml的object。

3 使用REXML::Document.new(File)读取xml文件

4 通过attributes 与elements 的method实例化 xml object.(包括创建基础实例化的method)

5 View，使用xml实例数据。
