package com.www2.model;

import java.io.BufferedWriter;  
import java.io.File;  
import java.io.FileWriter;  
import java.io.IOException;  
import java.sql.Connection;  
import java.sql.DriverManager;  
import java.sql.PreparedStatement;  
import java.sql.ResultSet;  
import java.sql.ResultSetMetaData;  
import java.sql.SQLException;  
import java.util.Vector;  

public class Answer {  
    private Connection connection;  
    private PreparedStatement UserQuery;  
    /*mysql url�������ַ���*/  
    private static String url = "jdbc:mysql://127.0.0.1:3306/test1?useUnicode=true&characterEncoding=utf-8&useOldAliasMetadataBehavior=true";  
    //�˺�  
    private static String user = "root";  
    //����  
    private static String password = "123";  
    private Vector<String> vector = new Vector<String>();  
    //mysql jdbc��java�������ַ���  
    private String driverClassName = "com.mysql.jdbc.Driver";  
    //���ݿ��еı���  
    String table = "e_task_result";  
    //���ݿ��������  
    private String[] colnames; // ��������  
    //������������    
    private String[] colTypes;  
    public Answer(){  
        try {//����ע��  
            Class.forName(driverClassName);  
            if (connection == null || connection.isClosed())  
                //�������  
                connection = DriverManager.getConnection(url, user, password);  
        } catch (ClassNotFoundException ex) {  
                ex.printStackTrace();  
                System.out.println("Oh,not");  
            } catch (SQLException e) {  
                e.printStackTrace();  
                System.out.println("Oh,not");  
            }  
    }  
      
    public Connection getConnection() {  
        return connection;  
    }  
    public void setConnection(Connection connection) {  
        this.connection = connection;  
    }  
  
    public void doAction(){  
        String sql = "select * from "+table;  
        try {  
            PreparedStatement statement = connection.prepareStatement(sql);  
            //��ȡ���ݿ��Ԫ����   
            ResultSetMetaData metadata = statement.getMetaData();  
            //���ݿ���ֶθ���  
            int len = metadata.getColumnCount();  
            //�ֶ�����  
            colnames = new String[len+1];  
            //�ֶ����� --->�Ѿ�ת��Ϊjava�е���������  
            colTypes = new String[len+1];  
            for(int i= 1;i<=len;i++){  
                //System.out.println(metadata.getColumnName(i)+":"+metadata.getColumnTypeName(i)+":"+sqlType2JavaType(metadata.getColumnTypeName(i).toLowerCase())+":"+metadata.getColumnDisplaySize(i));  
                //metadata.getColumnDisplaySize(i);  
                colnames[i] = metadata.getColumnName(i); //��ȡ�ֶ�����  
                colTypes[i] = sqlType2JavaType(metadata.getColumnTypeName(i)); //��ȡ�ֶ�����       
            }  
        } catch (SQLException e) {  
            e.printStackTrace();  
        }  
    }  
    /* 
     * mysql���ֶ�����ת��Ϊjava������*/  
    private String sqlType2JavaType(String sqlType) {    
          
        if(sqlType.equalsIgnoreCase("bit")){    
            return "boolean";    
        }else if(sqlType.equalsIgnoreCase("tinyint")){    
            return "byte";    
        }else if(sqlType.equalsIgnoreCase("smallint")){    
            return "short";    
        }else if(sqlType.equalsIgnoreCase("int")){    
            return "int";    
        }else if(sqlType.equalsIgnoreCase("bigint")){    
            return "long";    
        }else if(sqlType.equalsIgnoreCase("float")){    
            return "float";    
        }else if(sqlType.equalsIgnoreCase("decimal") || sqlType.equalsIgnoreCase("numeric")     
                || sqlType.equalsIgnoreCase("real") || sqlType.equalsIgnoreCase("money")     
                || sqlType.equalsIgnoreCase("smallmoney")){    
            return "double";    
        }else if(sqlType.equalsIgnoreCase("varchar") || sqlType.equalsIgnoreCase("char")     
                || sqlType.equalsIgnoreCase("nvarchar") || sqlType.equalsIgnoreCase("nchar")     
                || sqlType.equalsIgnoreCase("text")){    
            return "String";    
        }else if(sqlType.equalsIgnoreCase("datetime") ||sqlType.equalsIgnoreCase("date")){    
            return "Date";    
        }else if(sqlType.equalsIgnoreCase("image")){    
            return "Blod";    
        }    
            
        return null;    
    }  
    /*��ȡ��������ַ����������Ϊjava�ļ� 
     * */  
    public  StringBuffer getClassStr(){  
        //��������ַ���  
        StringBuffer str = new StringBuffer("");  
        //��ȡ�����ͺͱ������ֶ���  
        this.doAction();  
        //У��  
        if(null == colnames && null == colTypes) return null;  
        //ƴ��  
        str.append("public class "+table+" {\r\n");  
        //ƴ������  
        for(int index=1; index < colnames.length ; index++){  
            str.append(getAttrbuteString(colnames[index],colTypes[index]));  
        }  
        //ƴ��get��Set����         
        for(int index=1; index < colnames.length ; index++){  
            str.append(getGetMethodString(colnames[index],colTypes[index]));  
            str.append(getSetMethodString(colnames[index],colTypes[index]));  
        }  
        str.append("}\r\n");  
        //������ļ���  
        File file = new File(table+".java");  
        BufferedWriter write = null;  
  
        try {  
            write = new BufferedWriter(new FileWriter(file));  
            write.write(str.toString());  
            write.close();  
        } catch (IOException e) {  
  
            e.printStackTrace();  
            if (write != null)  
                try {  
                    write.close();  
                } catch (IOException e1) {            
                    e1.printStackTrace();  
                }  
        }  
        return str;  
    }  
    /* 
     * ��ȡ�ֶ��ַ���*/  
    public StringBuffer getAttrbuteString(String name, String type) {  
        if(!check(name,type)) {  
            System.out.println("���������Ի�������Ϊ��");  
            return null;  
        };  
        String format = String.format("    private %s %s;\n\r", new String[]{type,name});  
        return new StringBuffer(format);  
    }  
    /* 
     * У��name��type�Ƿ�Ϸ�*/  
    public boolean check(String name, String type) {  
        if("".equals(name) || name == null || name.trim().length() ==0){  
            return false;  
        }  
        if("".equals(type) || type == null || type.trim().length() ==0){  
            return false;  
        }  
        return true;  
          
    }  
    /* 
     * ��ȡget�����ַ���*/  
    private StringBuffer getGetMethodString(String name, String type) {  
        if(!check(name,type)) {  
            System.out.println("���������Ի�������Ϊ��");  
            return null;  
        };  
        String Methodname = "get"+GetTuoFeng(name);  
        String format = String.format("    public %s %s(){\n\r", new Object[]{type,Methodname});  
        format += String.format("        return this.%s;\r\n", new Object[]{name});  
        format += "    }\r\n";  
        return new StringBuffer(format);  
    }  
    //���������ַ���д  
    private String GetTuoFeng(String name) {  
        name = name.trim();  
        if(name.length() > 1){  
            name = name.substring(0, 1).toUpperCase()+name.substring(1);  
        }else  
        {  
            name = name.toUpperCase();  
        }  
        return name;  
    }  
    /* 
     * ��ȡ�ֶε�get�����ַ���*/  
    private Object getSetMethodString(String name, String type) {  
        if(!check(name,type)) {  
            System.out.println("���������Ի�������Ϊ��");  
            return null;  
        };  
        String Methodname = "set"+GetTuoFeng(name);  
        String format = String.format("    public void %s(%s %s){\n\r", new Object[]{Methodname,type,name});  
        format += String.format("        this.%s = %s;\r\n", new Object[]{name,name});  
        format += "    }\r\n";  
        return new StringBuffer(format);  
    }  
  
    public static void main(String[] args) {  
        Answer answer = new Answer();  
        System.err.println(answer.getClassStr());  
    }  
      
}  