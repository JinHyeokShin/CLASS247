package com.ourcompany.class247.admin.controller;

import java.util.ArrayList;

import com.ourcompany.class247.course.model.vo.SingleCourse;

public class AStat {
	
	public SingleCourse perStat(ArrayList<SingleCourse> personStat) {
		
		ArrayList<SingleCourse> list = personStat;
		
		ArrayList<SingleCourse> tempList = new ArrayList<SingleCourse>();
		
		int count = 0;
		
		for(int i= 0 ; i < list.size()-1; i=i+1+count) {
			
			count= 0;
			
			int tPrice = 0;
			
			int lSum = 0;
			
			for(int j = i ; j<list.size(); j++) {
				
				lSum += list.get(i).getLoveCount();
				tPrice += list.get(i).getCoursePrice()*list.get(i).getLoveCount()*list.get(i).getLoveCount();
			
				if(list.get(j).getCoursePrice() == list.get(j+1).getCoursePrice()) {
					
					count ++;
					
					
				}else if(j==list.size() -1){
					
					int ttPrice = tPrice/lSum;
					
					SingleCourse sc = new SingleCourse(list.get(i).getCoursePrice(), ttPrice);
					
					tempList.add(sc);
					
					break;
				
					
				}else {
					
					int ttPrice = tPrice/lSum;
					
					SingleCourse sc = new SingleCourse(list.get(i).getCoursePrice(), ttPrice);
					
					tempList.add(sc);
					
					break;
				
				}
			}

			
		}
		
		for(int i = 0; i < tempList.size()-1; i++) {
			for(int j = i+1 ; j < tempList.size(); j++) {
				
				if(tempList.get(i).getLoveCount() < tempList.get(j).getLoveCount()) {
					SingleCourse temp = tempList.get(i);
					tempList.set(i, tempList.get(j));
					tempList.set(j, temp);
					
				}
				
			}
			
		}
		
		
		return tempList.get(0);
	}
	
	

}
