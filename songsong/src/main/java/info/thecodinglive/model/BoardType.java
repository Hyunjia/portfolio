package info.thecodinglive.model;

public enum BoardType {
	notice("공지사항"),
	free("자유게시판");
	
	//사실상 class 편의를 위해서 enum만을 위한 문법적 형식을 가지고 있기 때문 enum이라는 키워드를 사용
	//생성자의 접근 제어자가 private->클래스 BoardType를 인스턴스로 만들 수 없음: 다른 용도로 사용하는 것을 금지
	
	private String value;
	private BoardType(String value) {
		this.value=value;
	}
	public String getValue() {
		return this.value;
	}
	

}
