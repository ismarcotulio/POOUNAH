
public class Validator {
		
	public int maxInt(String numericString, int min, int max) {
		
		numericString = numericString.trim();
		
		if(numericString.matches("\\d+")) {
			int number = Integer.parseInt(numericString);
			
			if(number>=min && number <=max) {
				return number;
			}
		}
		return 0;
	}
}
