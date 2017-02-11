package tw.fun1314.app.vo;

import java.util.ArrayList;
import java.util.List;

public class AjaxResponse {

	private List<String> messages;
	
	private Boolean isMessageEmpty = true;
	
	private Object data;

	public List<String> getMessages() {
		return messages;
	}

	public void setMessages(List<String> messages) {
		this.messages = messages;
	}
	
	public void addMessage(String message) {
		if(messages == null) {
			messages = new ArrayList<String>();
		}
		
		messages.add(message);
		isMessageEmpty = false;
	}


	public Boolean getIsMessageEmpty() {
		return isMessageEmpty;
	}

	public void setIsMessageEmpty(Boolean isMessageEmpty) {
		this.isMessageEmpty = isMessageEmpty;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}
	
	
	
}
