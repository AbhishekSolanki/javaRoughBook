package com.mis;

public class Parsing {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		String inp = "ID[]=8&ID[]=5&ID[]=7&ID[]=6&ID[]=2";
		
		
		String[] inp_delim_str = inp.split("&");
		
		int id_pos=1;
		for(String temp:inp_delim_str){
			
			String[] temp2 = temp.split("=");
			
			System.out.println("update config_table set chart="+Integer.parseInt(temp2[1])+" where id_pos="+id_pos);
			id_pos++;
		}
		

	}

}
