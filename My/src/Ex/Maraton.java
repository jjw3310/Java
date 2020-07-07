package Ex;

class Maraton {
	public String[] participant = {"hohog", "holly", "hoolo", "ojl"};
	public String[] completion = {"hohog", "hoolo", "ojl"};
	
    public String solution(String[] participant, String[] completion) {
        for(int i=0; i<participant.length; i++) {
            for(int j=0; j<participant.length; j++) {
                if (participant[i] == completion[j])
                    participant[i] = "ho";
            }
        }
        for(int i=0; i<participant.length; i++) {
        	if(participant[i] != "ho") {
        		String answer = "participant[i]";
        		return answer;
        	}
        }
    }
    public static void main(String[] args) {
    	new solution(participant, completion);
    }
}