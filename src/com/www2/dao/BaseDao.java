package com.www2.dao;

public interface BaseDao <T> {
	void add(T t);		//Ôö
	void delete(T t);	//É¾
	void update(T t);	//¸Ä
	T find(T t);		//²é
}
