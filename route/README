Route:
1 建立带有参数的url，url：http://localhost:3000/events?order=starts_at 
   修改events_controller.rb 中index action。

2 extended the :collection routes and added a new action for searching
  http://localhost:3000/events/search?q=rubyconf
  修改 events model：
           extend Searchable
           search_column :name, :starts_at
  新增：lib/searchable.rb
  新增： events_controller.rb 中search action。
  新增：search.html.erb
  修改route.rb ----map.resources :events ,
                  :collection => { :search => :get }
  

3 extended the :member routes and added a new action for copying,
 http://localhost:3000/events/3/copy
 新增： events_controller.rb 中copy action。
 新增：events model中copymethod
 修改route.rb ----map.resources :events ,
                 :member     => { :copy => :post }
 

4 event_client.rb，建立简单的本机客户端程序，维护后台数据。
   $ ruby script/server 
   修改 services/event_client.rb 中的代码，将要进行的CRUD操作写入。
   $ ruby services/event_client.rb
