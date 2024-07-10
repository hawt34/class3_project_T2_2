package itwillbs.p2c3.class_will.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class ChatRoomVO {
	private String chat_room_code;
	private String sender_email;
	private String receiver_email;
	private String status;
}
