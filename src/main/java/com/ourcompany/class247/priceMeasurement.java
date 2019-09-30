package com.ourcompany.class247;

import java.util.ArrayList;

public class priceMeasurement {

//	public static void main(String[] args) {
		
		ArrayList<Integer> priceList = new ArrayList();


		
		int size = 100;
		
		int sum=0;
		int avg=0;
		double staDev = 0;
		double aCount = 0;
		int listSize = 0;
		ArrayList<Double> resultList = new ArrayList();
		
		
		while(priceList.size() != size) {
			
			sum = 0;
			avg = 0;
			staDev = 0;
			double temp = 0;

			int count = 0;
			
			resultList = new ArrayList();
			ArrayList<Integer> devList = new ArrayList();
			
	
			for(int i = priceList.size() ; i< size ; i++) {
				
				int price = ((int)(Math.random()*100))*100;
				
				priceList.add(price);
				
			}
			
			for(int i = 0 ; i<priceList.size() ; i++) {
				sum += priceList.get(i);
			}
			
			avg = Math.round(sum/priceList.size());
			

			
			for(int i=0; i<priceList.size(); i++) {
				devList.add((priceList.get(i)*100-(int)(avg*100))/100);
			}
			
			for(int i=0 ; i < devList.size(); i++) {
				temp += (int)(Math.pow(devList.get(i), 2)*10000)/10000;
			}
			
			staDev = (Math.floor(Math.sqrt(temp/size)*1000))/1000;
			

			
			for(int i = 0 ; i < size ; i++) {
				resultList.add((Math.floor(((priceList.get(i)-avg)/staDev)*10000))/10000);
				
			}
			
			
			for(int i= listSize ; i<resultList.size(); i++) {
								
				if(resultList.get(i) > 2.5-aCount || resultList.get(i)< aCount-2.5 ) {
					
					priceList.remove(i-count);
					count++;
				}
			}
			
			if(aCount <= 1.5) {
			aCount = aCount+0.2;
			}else {
				aCount = 1.5;
			}
			listSize = priceList.size();
		}
		
		
		
//		System.out.println("총합 : " + sum );
//		
//		System.out.println("평균 : " + avg );
//		
//		System.out.println("표준편차 : " + staDev);
		

			System.out.println(resultList);
			
			
			double min = avg-(0.92)*staDev/(Math.sqrt(size));
			double max = avg+(0.92)*staDev/(Math.sqrt(size));

			System.out.println((int)min);
			System.out.println((int)max);
		
		
		
//	}

}
