package kr.ac.kopo.hanabit.product.service;

import kr.ac.kopo.hanabit.product.dao.SavingProductMapper;
import kr.ac.kopo.hanabit.product.vo.SavingProductVO;
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
