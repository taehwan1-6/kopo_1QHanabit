package kr.ac.kopo.hanabit.product.v1.service;

import kr.ac.kopo.hanabit.product.v1.dao.ChallengeDepositProductMapper;
import kr.ac.kopo.hanabit.product.v1.vo.ChallengeDepositProductVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ChallengeDepositProductService {

    private ChallengeDepositProductMapper mapper;

    @Autowired
    public ChallengeDepositProductService(ChallengeDepositProductMapper mapper) {
        this.mapper = mapper;
    }

    public List<ChallengeDepositProductVO> getAll() {
        List<ChallengeDepositProductVO> productVOList = mapper.selectAll();

        return productVOList;
    }

    public ChallengeDepositProductVO getOneById(Long id) {
        ChallengeDepositProductVO productVO = mapper.selectOneById(id);

        return productVO;
    }
}
