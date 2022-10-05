package com.demo6.shop.dao;

import com.demo6.shop.entity.User;
import com.demo6.shop.entity.Voucher;

import java.util.List;

public interface VoucherDao {
    Voucher findOneByCode(String code);
    List<Voucher> findAll();
    void persist(Voucher voucher);
    void merge(Voucher voucher);
    void delete(String voucherId);
    Voucher findOneById(String voucherId);
    Voucher findOneByCodeActive(String code);
}
