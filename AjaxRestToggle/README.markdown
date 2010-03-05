解决的问题：
使用ajax的方法去更新数据，使用前提是该数据类型是不需要验证的，常常是checkbox。

原理：使ajax发送一个rest的请求，该请求toggle “the fixed ”attribute。

步骤：
1 index.html.erb中，使用check_box_tag该DOM元素，并赋予onclick选项参数。
2 建立显示进程的DOM的元素。
3 application_helper.rb中建立  helper  toggle_value，这里确定ajax行为。
    http://www.railsbrain.com/api/rails-2.3.2/doc/index.html?a=M002467&name=link_to_remote
4 此时，ajax向服务器请求PUT /errata/4?erratum[fixed]=1
  重新定义action 逻辑。
