package main.com.imisme;

import org.apache.log4j.Logger;

/**
 * @Author ISME
 * @Date 2017/9/28
 * @Time 14:56
 */

public class Test {
    public static void main(String[] args) {
        Logger logger = Logger.getLogger(Test.class);
        logger.info("test logger info");
        logger.debug("test logger debug");
        try {
            throw new NullPointerException();
        }catch (Exception e){
            logger.info(e);
        }
        logger.error("test logger error");
        logger.fatal("test logger fatal");
    }
}
