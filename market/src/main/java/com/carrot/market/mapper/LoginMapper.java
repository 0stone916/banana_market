package com.carrot.market.mapper;

import com.carrot.market.vo.Customer;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LoginMapper {
    int insertCustomer(Customer customer);
}
