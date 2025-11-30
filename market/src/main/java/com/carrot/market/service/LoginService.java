package com.carrot.market.service;

import org.springframework.stereotype.Service;
import com.carrot.market.mapper.LoginMapper;
import com.carrot.market.vo.Customer;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class LoginService {

    private final LoginMapper loginMapper;

    public int  insertCustomer(Customer customer) {
        return loginMapper.insertCustomer(customer);

    }

}
