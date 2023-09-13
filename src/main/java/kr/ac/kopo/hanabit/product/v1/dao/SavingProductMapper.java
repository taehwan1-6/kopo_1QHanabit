package kr.ac.kopo.hanabit.product.v1.dao;

import kr.ac.kopo.hanabit.product.v1.vo.SavingProductVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
// -> Mybatis와 같은 ORM 프레임워크에서 쉽게 사용할 수 있게 하기 위해 만들어진 어노테이션
// - 원래는 DAO interface를 implements하여 DAOImpl를 만들었었는데, 그것을 생략할 수 있다.
// - 그래서 꼭! 이 interface의 메소드는 savingProductMapper.xml에서 select 태그의 id값과 동일해야한다.
public interface SavingProductMapper {

    public List<SavingProductVO> selectAll();

    public SavingProductVO selectOneById(int id);

}
