package utilities;

import java.util.HashMap;

public class OICUtility {

    public  void assignValues(double sellNet,
                                                String policyType,
                                                String carCode,
                                                int engineSize,
                                                int driverAge,
                                                int carAge,
                                                int sumInsured,
                                                int carGroup,
                                                int injuryTPPerson,
                                                int injuryTPTime,
                                                int injuryTPDamage,
                                                int seat,
                                                int coverageLifeloss,
                                                int coverageMedical,
                                                int coverageBailbond,
                                                int deductible) {

        HashMap<String, Object> pathParam = new HashMap<>();

        pathParam.put("sellNet", sellNet);
        pathParam.put("policyType", policyType);
        pathParam.put("carCode", carCode);
        pathParam.put("engineSize", engineSize);
        pathParam.put("driverAge", driverAge);
        pathParam.put("carAge", carAge);
        pathParam.put("sumInsured", sumInsured);
        pathParam.put("carGroup", carGroup);
        pathParam.put("injuryTPPerson", injuryTPPerson);
        pathParam.put("injuryTPTime", injuryTPTime);
        pathParam.put("injuryTPDamage", injuryTPDamage);
        pathParam.put("seat", seat);
        pathParam.put("coverageLifeloss", coverageLifeloss);
        pathParam.put("coverageMedical", coverageMedical);
        pathParam.put("coverageBailbond", coverageBailbond);
        pathParam.put("deductible", deductible);


        //return pathParam;

    }

}
