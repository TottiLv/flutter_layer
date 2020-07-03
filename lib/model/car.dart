class Car {
  //final 修饰的话，不能修改,赋值之后不能边（运行时）
  final String name;
  final String imageUrl;
  //默认有构造函数，与类同名；
  // dart中没有析构函数，有自己的虚拟机，垃圾回收

  //构造函数第一种写法
  //this. 意思是不用写函数体
//  Car(this.name,this.imageUrl);

  //Widget是要渲染到界面的
  /*
  * 构造函数第2种写法 不可修改
  * const修饰构造函数(尤其在Widget中)，可以节约性能
  * const修饰的函数成员必须为final类型
  * */

//  const Car(this.name,this.imageUrl);
//    final String name;
//    String imageUrl;
    /*
    * 构造函数第3种写法 (可选参数) 带{}
    * 调用方式：
    * Car ca1 = Car('lvjianxiong', imageUrl: 'url3');//
    * ca1.imageUrl = 'url3';
    * */
//
    //带花括号的参数，代表可赋值也可不赋值
    Car({this.name, this.imageUrl });


//    String name;
//    String imageUrl;
//    Car({this.name,  this.imageUrl });


    /*
    * 构造函数第4种写法
    * 调用方式：Car ca1 = Car.fromList(['lvjianxong','url4']);
    * */
//    Car.fromList(List<dynamic> list){
//      name = list[0];
//      imageUrl = list[1];
//    }


  /*
    重定向构造方法 其中this代表同名构造函数(直接调用第23行的构造函数)
    重定向构造使用场景：自定义类型给外面做接口时候
    调用方式：Car ca1 = Car.defaults('lvjianixong', 'url5');
   */
    //Car.defaults(String name, String url):this(name:name ,imageUrl: url);
//    Car.defaults(String name, String url):this(name:name ,imageUrl: url);

}