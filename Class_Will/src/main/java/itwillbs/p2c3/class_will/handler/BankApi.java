package itwillbs.p2c3.class_will.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class BankApi {
	@Autowired
	private BankValueGenerator bankValueGenerator;
}
