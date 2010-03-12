解决的问题：
使用build方法，解决一个FORM中两个model的create (update)。

前提：两个Model的关系，一对多的关系。 A project has many tasks.

其核心概念是将"project"=>{"name"=>"ruby basic"},通过build方法,构造一个新的属性，变为

"project" =>{
	
	"name" =>"ruby basic",
	
	"new_task_attributes" =>[
	
	{"name"=>"ruby facts"},
	
	{"name"=>"ruby metaprogram"}
		
	]
	
}


构造的新的属性，根据Creat,update action 不同

而作为From中task field，其input 的值将被存为 project[existing_task_attributes][1][name]。




步骤：

1  在两个Model中建立关系
2  new action中，创建一个project的对象，initialize a new
  Task(In Memory) that's associated with the Project.
  
3 Form template
  Form =>Project Object , 其中 Task partial =>Project.task object.
  
4 add_task_link helper 定义

5__task 子模板，核心是构建project[existing_task_attributes][1][name]hash 结构。

6  project.model 中定义new_task_attributes =(task___attributes), 以及，save_task，这样通过savet
task把数据存到task 任务表中了。
  
