package programers;

public class Run {

}


class Solution {
    public String solution(String[] participant, String[] completion) {
        for(int i=0; i<participant.length; i++) {
            for(int j=0; j<participant.length; j++) {
                if (participant[i] != completion[j])
                    continue;
                else if (participant[i].equals(completion[j]))
                    participant[i] = participant[i+1];
                    break;
                
            }
        }
        String answer = "";
        return answer;
    }
}