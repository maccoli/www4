package com.www2.dao;

public interface BaseDao <T> {
	void add(T t);		//��
	void delete(T t);	//ɾ
	void update(T t);	//��
	T find(T t);		//��
}
