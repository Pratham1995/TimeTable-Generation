package Generate;


import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.*;

class Test {

    public static void main(String[] args) {
        ArrayList<String> PracticalSub = new ArrayList<String>();
        PracticalSub.add("a");
        PracticalSub.add("b");
        PracticalSub.add("c");
        PracticalSub.add("d");
        String subject = "";
        for (int i = 0; i < PracticalSub.size(); i++) {
            subject = subject +"-"+PracticalSub.get(i)+"B"+i;
        }
          System.out.println("PracticalSub: "+PracticalSub);
        String first = PracticalSub.get(0);
        PracticalSub.remove(first);
        PracticalSub.add(first);
        System.out.println("PracticalSub: "+PracticalSub);
    }
}
