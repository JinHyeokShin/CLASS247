package com.ourcompany.class247.notice.model.service;

import java.util.ArrayList;

import com.ourcompany.class247.common.PageInfo;
import com.ourcompany.class247.notice.model.vo.FAQ;

public interface FAQService {
	
	int insertFAQ(FAQ f);

	int getListCountf();

	ArrayList<FAQ> selectListf(PageInfo pi);

}
