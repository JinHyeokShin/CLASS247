package com.ourcompany.class247;

import java.util.ArrayList;
import java.util.Collections;

public class checkPassword {
	
	public static void main(String[] msg) {
		
		String password = "a1a2a3";
		
		ArrayList<Integer> tempList2 = new ArrayList();
		ArrayList<Integer> tempList = new ArrayList();
		ArrayList<Integer> checkList = new ArrayList();
		
		String check = "";
		
		int checkNum = 0;
		int temp = 0;
		int temp2 = -1;
		
		for(int i = 0 ; i<password.length(); i++) {
			
			tempList.add((int)(byte)password.charAt(i));
			
		}	
		
		for(int i = 0 ; i<tempList.size()-1 ; i ++) {
			
			checkList.add(tempList.get(i)-tempList.get(i+1));
			
			tempList2.add(password.charAt(i)-password.charAt(i+1));
			
		}
		
		System.out.println(tempList2);
		
		Collections.sort(checkList);
		Collections.sort(tempList2);
		
		System.out.println(tempList2);
		

		
		for(int i=0 ; i< checkList.size(); i++) {
			
			if(temp2 == tempList2.get(i)) {
				checkNum++;
				checkNum++;
			}
			
			if(temp == checkList.get(i)) {
				checkNum++;
			}
			
			temp = checkList.get(i);
			temp2 = tempList2.get(i);
			
		}
				
		if(checkNum > 4) {
			
			if(temp == 0) {
				check="같은 값 반복";
			}else {
				check="같은 패턴 반복";
			}
			
			System.out.println(check);
			return;
		}
		
		System.out.println("성공");
		
	}

}
