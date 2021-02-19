package com.atguigu.java;

/**
 * @author cjx
 * @create 2020-12-09-23:05
 * @description
 */
public class MyInterfaceImpl implements MyInterface{

    @Override
    public void methodAbstract() {

    }

    @Override
    public void methodDefault() {
        System.out.println("实现类重写了接口中的默认方法");
    }

    public static void main(String[] args) {
        //接口中的静态方法只能由自己调用
        MyInterface.methodStatic();
        //接口的实现类不能调用接口的静态方法
//        MyInterfaceImpl.methodStatic();

        MyInterfaceImpl impl = new MyInterfaceImpl();
        impl.methodDefault();
        //私有方法不能在接口外部调用
//        impl.methodPrivate();

    }


}
