package com.spring.finalcrawling;

public class DataVO {

	private int startDate;
	private int endDate;
	private int importA2;
	private int playA3;
	private int trafficA5;
	private int sleepA6;
	private int countA7_1;
	private int withA7;
	private int costA10;
	private int gender;
	private int age;

	public int getStartDate() {
		return startDate;
	}
	public void setStartDate(int startDate) {
		this.startDate = startDate;
	}

	public int getEndDate() {
		return endDate;
	}
	public void setEndDate(int endDate) {
		this.endDate = endDate;
	}
	public int getImportA2() {
		return importA2;
	}
	public void setImportA2(int importA2) {
		this.importA2 = importA2;
	}
	public int getPlayA3() {
		return playA3;
	}
	public void setPlayA3(int playA3) {
		this.playA3 = playA3;
	}
	public int getTrafficA5() {
		return trafficA5;
	}
	public void setTrafficA5(int trafficA5) {
		this.trafficA5 = trafficA5;
	}
	public int getSleepA6() {
		return sleepA6;
	}
	public void setSleepA6(int sleepA6) {
		this.sleepA6 = sleepA6;
	}
	public int getCountA7_1() {
		return countA7_1;
	}
	public void setCountA7_1(int countA7_1) {
		this.countA7_1 = countA7_1;
	}
	public int getWithA7() {
		return withA7;
	}
	public void setWithA7(int withA7) {
		this.withA7 = withA7;
	}
	public int getCostA10() {
		return costA10;
	}
	public void setCostA10(int costA10) {
		this.costA10 = costA10;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	@Override
	public String toString() {
		return startDate + "," + endDate + "," + importA2 + ","
				+ playA3 + "," + trafficA5 + "," + sleepA6 + "," + countA7_1
				+ "," + withA7 + "," + costA10 + "," + gender + "," + age;
	}
	
	
	
	
}
