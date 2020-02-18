package validation;

public class Validator {
	
	public String cleanUserName(String userName) {
		userName = userName.trim().replaceAll("[^\\w]+", "");
		return userName;
	}
	
	public int cleanAge(String age) {
		age = age.trim().replaceAll("\\D+", "");
		return Integer.parseInt(age);
	}
	
	public String cleanHTMLContent(String htmlContent) {
		htmlContent = htmlContent.trim().replaceAll("</?[^>]+>*", "");
		return htmlContent;
	}

}
