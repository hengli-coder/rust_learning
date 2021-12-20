class GenericMethod{
    // 泛型方法 printParam
    public static < E > void printParam( E input )
    {
          // 输出数组元素
          System.out.println(input);
     }

     public static void main( String args[] )
     {
         Integer intParam = 1;
         Double doubleParam = 1.1;
         Character charParam = 'a';
         int a = 10;

         printParam(intParam); // 传递一个整型

         printParam(doubleParam); // 传递一个双精度型

         printParam(charParam); // 传递一个字符型
     }
 }