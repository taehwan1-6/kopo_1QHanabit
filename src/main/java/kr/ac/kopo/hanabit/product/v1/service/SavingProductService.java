package kr.ac.kopo.hanabit.product.v1.service;

import kr.ac.kopo.hanabit.product.v1.dao.SavingProductMapper;
import kr.ac.kopo.hanabit.product.v1.vo.SavingProductVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SavingProductService {

    private SavingProductMapper savingProductMapper;

    @Autowired
    public SavingProductService(SavingProductMapper savingProductMapper) {
        this.savingProductMapper = savingProductMapper;
    }

    public List<SavingProductVO> selectAll() {
        List<SavingProductVO> savingProductVOList = savingProductMapper.selectAll();

        return savingProductVOList;
    }

    public SavingProductVO selectOneById(int id) {
        SavingProductVO savingProductVO = savingProductMapper.selectOneById(id);

        return savingProductVO;
    }
}
