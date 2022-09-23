package kr.ac.kopo.sms;

public class SmsMain {
	
	public static void main(String[] args) {
		SmsService smsService = new SmsService();
		
		smsService.sendMessage("01011111111", "xx님의 주머니 잔여 잔액 xx원이 파킹 주머니로 자동 이동되었습니다.");
		
		//String value;
		//smsService.sendMessage("01086289491", value + "님 안녕하세요"); //받는 번호와 문자 내용 돈 나간다 아껴써라!!
	}

}
