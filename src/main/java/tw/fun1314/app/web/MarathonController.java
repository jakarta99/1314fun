package tw.fun1314.app.web;

import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.slf4j.Slf4j;
import tw.fun1314.app.entity.MarathonTeam;

@Slf4j
@Controller
@RequestMapping("/marathon")
public class MarathonController {

	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String registerPage(Model model) {
		
		return "/marathon/register";
	}
	
	
	@RequestMapping(method = RequestMethod.POST)
	@ResponseBody
	public MarathonTeam insert(final Model model, @RequestBody HashMap<String, String> form) {
		log.debug("{}", form);
//		final AjaxResponse<MarathonTeam> response = new AjaxResponse<MarathonTeam>();
//
//		try {
//			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//			String studentCode = ((UserEntity)auth.getPrincipal()).getCode();
//			StudentEntity student = studentService.getByCode(studentCode);
//			
//			
//			BookOrderEntity bookOrder = bookOrderService.getByTermAndStudentCode(term, studentCode);
//			if(bookOrder != null) {
//				bookOrderService.delete(bookOrder.getId());
//			}
//			
//			
//			
//			bookOrder = new BookOrderEntity();
//			bookOrder.setTerm(term);
//			bookOrder.setStudentCode(student.getCode());
//			bookOrder.setStudentName(student.getName());
//			bookOrder.setStudentId(student.getId());
//			
//			log.debug("{}", bookOrder);
//			
//			
//			List<BookOrderItemEntity> items = new ArrayList<BookOrderItemEntity>();
//			
//			List<BookEntity> books = bookService.getByTerm(term);
//			for(BookEntity book:books) {
//				int bookQty = NumberUtils.toInt(form.get("bookQty_"+book.getId()), 0);
//				
//				BookOrderItemEntity item = new BookOrderItemEntity();
//				item.setBook(book);
//				item.setBookOrder(bookOrder);
//				item.setQty(bookQty);
//				
//				log.debug("{}",item);
//				items.add(item);
//			}
//			
//			bookOrder.setItems(items);
//			
//			
//			
//			BookOrderEntity insertResult = bookOrderService.insert(bookOrder);
//			response.setData(insertResult);
//			
//			
//		} catch (final ApplicationException e) {
//			e.printStackTrace();
//			final List<Message> messages = e.getMessages();
//			for(final Message message:messages) {
//				response.addMessage(message.getName(), message.getValue());
//			}			
//		} catch (final Exception e) {
//			e.printStackTrace();
//			response.addException(e);
//		}

		return null; //response;
	}
	
}
