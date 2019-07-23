package util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

public class HibernateUtil {
	
	public static ThreadLocal<Session> threadLocal=new ThreadLocal<Session>();
	public static SessionFactory factory;
	//这里得到的是工厂
	static{
	
		Configuration configuration=new Configuration().configure();
		StandardServiceRegistry serviceRegistry=new StandardServiceRegistryBuilder().applySettings(configuration.getProperties()).build();
		factory=configuration.buildSessionFactory(serviceRegistry);
		
	}
//
	public HibernateUtil() {
	}
		
	
	public static Session getSession() {
     Session session=threadLocal.get();
		if(session==null){
			session=factory.openSession();
			threadLocal.set(session);
			System.out.println("连接成功！");
		}
		return session;
	}
	public static void closeSession() {
		Session session=threadLocal.get();
		if(session==null){
			if(session.isOpen()){
				session.close();
			}
			threadLocal.set(null);
		}
		System.out.println("成功关闭了session");
		
	}
	
	/*public static void main(String[] args) {
		Session session=getSession();
		System.out.println(session);
		System.out.println("OK");
		closeSession();
	}
*/
}
