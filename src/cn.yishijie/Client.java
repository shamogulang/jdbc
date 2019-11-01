import domain.CityEntity;

import java.lang.reflect.Method;

/**
 * @author chenjianhui on 2019/11/01
 */
public class Client {

    public static void main(String[] args) {
        try {
            Class clas = CityEntity.class;
            Method[] methods = clas.getDeclaredMethods();
            if(methods != null && methods.length > 0){
                for(Method method : methods){

                }
            }
            clas.getName();
        }catch (Exception e){
            System.out.println(e);
        }
    }
}
