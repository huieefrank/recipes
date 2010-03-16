解决的问题： 连续的表单操作。

基于此，可以做出很棒的“调研”组件。

数据结构： question，answer ，quiz ,每次用户参与调研，创建一个新的Quiz instant。

步骤：
1 根据当前状态（B）和条件（Y）的组合表 建立Quiz Model 中的state，event。通过回调的方式，
调用相关model，来提取下个action所需要的数据。
2 创建/应用 不同类型问题 子model，创建新问题及tag，完成调研问题的设计。
3 helper，特定类型的问题，使用特定的局部模板。
4 创建特定问题的子模板
5 quiz controller，update action是最重要的。


  