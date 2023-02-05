package com.util;

import java.util.UUID;

public class UuidUtil {
    private UuidUtil(){}
    public static String getUuid(){
        return UUID.randomUUID().toString().replace("-", "");
    }

    public static void main(String[] args) {
        System.out.println(UuidUtil.getUuid());
    }
}
