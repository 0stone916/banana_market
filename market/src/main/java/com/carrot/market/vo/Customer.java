package com.carrot.market.vo;

import java.time.LocalDateTime;
import lombok.Data;

@Data
public class Customer {

    private Long customerId;

    private String customerNo;

    private String userId;

    private String password;

    private String name;

    private String email;

    private String phone;

    private String zipcode;

    private String address;

    private String addressDtl;

    private LocalDateTime createdAt;

    private LocalDateTime updatedAt;

    private String status;

}