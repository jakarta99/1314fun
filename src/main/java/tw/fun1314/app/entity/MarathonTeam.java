package tw.fun1314.app.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
@Table(name="marathon_team")
public class MarathonTeam {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name="UUID")
	private String uuid;
	
	@Column(name="REGISTER_TIME")
	private LocalDateTime registerTime;
	
	@Enumerated(EnumType.STRING)
	@Column(name="STATUS")
	private MarathonStatus status;

	@Column(name="PAY_AMOUNT")
	private String payAmount;

	@Column(name="PAY_NAME")
	private String payName;

	@Column(name="PAY_ACCOUNT")
	private String payAccount;

	@Column(name="TEAM_NAME")
	private String teamName;

	@Column(name="LEADER_NAME")
	private String leaderName;

	@Column(name="ADDRESS")
	private String address;

	@Column(name="PHONE")
	private String phone;

	@Column(name="EMAIL")
	private String email;

	@Enumerated(EnumType.STRING)
	@Column(name="CATEGORY")
	private MarathonCategory category;

	@Enumerated(EnumType.STRING)
	@Column(name="TYPE")
	private MarathonType type;

	@Column(name="MEMBER_NAME_W1")
	private String memberNameW1;

	@Column(name="MEMBER_CLASS_W1")
	private String memberClassW1;

	@Column(name="MEMBER_NAME_W2")
	private String memberNameW2;

	@Column(name="MEMBER_CLASS_W2")
	private String memberClassW2;

	@Column(name="MEMBER_NAME_W3")
	private String memberNameW3;

	@Column(name="MEMBER_CLASS_W3")
	private String memberClassW3;

	@Column(name="MEMBER_NAME_W4")
	private String memberNameW4;

	@Column(name="MEMBER_CLASS_W4")
	private String memberClassW4;
	
	@Column(name="MEMBER_NAME_W5")
	private String memberNameW5;

	@Column(name="MEMBER_CLASS_W5")
	private String memberClassW5;
	
	@Column(name="MEMBER_NAME_W6")
	private String memberNameW6;

	@Column(name="MEMBER_CLASS_W6")
	private String memberClassW6;
	
	@Column(name="MEMBER_NAME_W7")
	private String memberNameW7;

	@Column(name="MEMBER_CLASS_W7")
	private String memberClassW7;
	
	@Column(name="MEMBER_NAME_W8")
	private String memberNameW8;

	@Column(name="MEMBER_CLASS_W8")
	private String memberClassW8;
	
	@Column(name="MEMBER_NAME_W9")
	private String memberNameW9;

	@Column(name="MEMBER_CLASS_W9")
	private String memberClassW9;
	
	@Column(name="MEMBER_NAME_M1")
	private String memberNameM1;

	@Column(name="MEMBER_CLASS_M1")
	private String memberClassM1;

	@Column(name="MEMBER_NAME_M2")
	private String memberNameM2;

	@Column(name="MEMBER_CLASS_M2")
	private String memberClassM2;
	
	@Column(name="MEMBER_NAME_M3")
	private String memberNameM3;

	@Column(name="MEMBER_CLASS_M3")
	private String memberClassM3;
	
	@Column(name="MEMBER_NAME_M4")
	private String memberNameM4;

	@Column(name="MEMBER_CLASS_M4")
	private String memberClassM4;
	
	@Column(name="MEMBER_NAME_M5")
	private String memberNameM5;

	@Column(name="MEMBER_CLASS_M5")
	private String memberClassM5;
	
	@Column(name="MEMBER_NAME_M6")
	private String memberNameM6;

	@Column(name="MEMBER_CLASS_M6")
	private String memberClassM6;
	
	@Column(name="MEMBER_NAME_M7")
	private String memberNameM7;

	@Column(name="MEMBER_CLASS_M7")
	private String memberClassM7;
	
	@Column(name="MEMBER_NAME_M8")
	private String memberNameM8;

	@Column(name="MEMBER_CLASS_M8")
	private String memberClassM8;
	
	@Column(name="MEMBER_NAME_M9")
	private String memberNameM9;

	@Column(name="MEMBER_CLASS_M9")
	private String memberClassM9;

	@Override
	public String toString() {
		return "MarathonTeam [id=" + id + ", uuid=" + uuid + ", registerTime=" + registerTime + ", status=" + status + ", payAmount=" + payAmount + ", payName="
				+ payName + ", payAccount=" + payAccount + ", teamName=" + teamName + ", leaderName=" + leaderName + ", address=" + address + ", phone=" + phone
				+ ", email=" + email + ", category=" + category + ", type=" + type + ", memberNameW1=" + memberNameW1 + ", memberClassW1=" + memberClassW1
				+ ", memberNameW2=" + memberNameW2 + ", memberClassW2=" + memberClassW2 + ", memberNameW3=" + memberNameW3 + ", memberClassW3=" + memberClassW3
				+ ", memberNameW4=" + memberNameW4 + ", memberClassW4=" + memberClassW4 + ", memberNameW5=" + memberNameW5 + ", memberClassW5=" + memberClassW5
				+ ", memberNameW6=" + memberNameW6 + ", memberClassW6=" + memberClassW6 + ", memberNameW7=" + memberNameW7 + ", memberClassW7=" + memberClassW7
				+ ", memberNameW8=" + memberNameW8 + ", memberClassW8=" + memberClassW8 + ", memberNameW9=" + memberNameW9 + ", memberClassW9=" + memberClassW9
				+ ", memberNameM1=" + memberNameM1 + ", memberClassM1=" + memberClassM1 + ", memberNameM2=" + memberNameM2 + ", memberClassM2=" + memberClassM2
				+ ", memberNameM3=" + memberNameM3 + ", memberClassM3=" + memberClassM3 + ", memberNameM4=" + memberNameM4 + ", memberClassM4=" + memberClassM4
				+ ", memberNameM5=" + memberNameM5 + ", memberClassM5=" + memberClassM5 + ", memberNameM6=" + memberNameM6 + ", memberClassM6=" + memberClassM6
				+ ", memberNameM7=" + memberNameM7 + ", memberClassM7=" + memberClassM7 + ", memberNameM8=" + memberNameM8 + ", memberClassM8=" + memberClassM8
				+ ", memberNameM9=" + memberNameM9 + ", memberClassM9=" + memberClassM9 + "]";
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUuid() {
		return uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public LocalDateTime getRegisterTime() {
		return registerTime;
	}

	public void setRegisterTime(LocalDateTime registerTime) {
		this.registerTime = registerTime;
	}

	public MarathonStatus getStatus() {
		return status;
	}

	public void setStatus(MarathonStatus status) {
		this.status = status;
	}

	public String getPayAmount() {
		return payAmount;
	}

	public void setPayAmount(String payAmount) {
		this.payAmount = payAmount;
	}

	public String getPayName() {
		return payName;
	}

	public void setPayName(String payName) {
		this.payName = payName;
	}

	public String getPayAccount() {
		return payAccount;
	}

	public void setPayAccount(String payAccount) {
		this.payAccount = payAccount;
	}

	public String getTeamName() {
		return teamName;
	}

	public void setTeamName(String teamName) {
		this.teamName = teamName;
	}

	public String getLeaderName() {
		return leaderName;
	}

	public void setLeaderName(String leaderName) {
		this.leaderName = leaderName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public MarathonCategory getCategory() {
		return category;
	}

	public void setCategory(MarathonCategory category) {
		this.category = category;
	}

	public MarathonType getType() {
		return type;
	}

	public void setType(MarathonType type) {
		this.type = type;
	}

	public String getMemberNameW1() {
		return memberNameW1;
	}

	public void setMemberNameW1(String memberNameW1) {
		this.memberNameW1 = memberNameW1;
	}

	public String getMemberClassW1() {
		return memberClassW1;
	}

	public void setMemberClassW1(String memberClassW1) {
		this.memberClassW1 = memberClassW1;
	}

	public String getMemberNameW2() {
		return memberNameW2;
	}

	public void setMemberNameW2(String memberNameW2) {
		this.memberNameW2 = memberNameW2;
	}

	public String getMemberClassW2() {
		return memberClassW2;
	}

	public void setMemberClassW2(String memberClassW2) {
		this.memberClassW2 = memberClassW2;
	}

	public String getMemberNameW3() {
		return memberNameW3;
	}

	public void setMemberNameW3(String memberNameW3) {
		this.memberNameW3 = memberNameW3;
	}

	public String getMemberClassW3() {
		return memberClassW3;
	}

	public void setMemberClassW3(String memberClassW3) {
		this.memberClassW3 = memberClassW3;
	}

	public String getMemberNameW4() {
		return memberNameW4;
	}

	public void setMemberNameW4(String memberNameW4) {
		this.memberNameW4 = memberNameW4;
	}

	public String getMemberClassW4() {
		return memberClassW4;
	}

	public void setMemberClassW4(String memberClassW4) {
		this.memberClassW4 = memberClassW4;
	}

	public String getMemberNameW5() {
		return memberNameW5;
	}

	public void setMemberNameW5(String memberNameW5) {
		this.memberNameW5 = memberNameW5;
	}

	public String getMemberClassW5() {
		return memberClassW5;
	}

	public void setMemberClassW5(String memberClassW5) {
		this.memberClassW5 = memberClassW5;
	}

	public String getMemberNameW6() {
		return memberNameW6;
	}

	public void setMemberNameW6(String memberNameW6) {
		this.memberNameW6 = memberNameW6;
	}

	public String getMemberClassW6() {
		return memberClassW6;
	}

	public void setMemberClassW6(String memberClassW6) {
		this.memberClassW6 = memberClassW6;
	}

	public String getMemberNameW7() {
		return memberNameW7;
	}

	public void setMemberNameW7(String memberNameW7) {
		this.memberNameW7 = memberNameW7;
	}

	public String getMemberClassW7() {
		return memberClassW7;
	}

	public void setMemberClassW7(String memberClassW7) {
		this.memberClassW7 = memberClassW7;
	}

	public String getMemberNameW8() {
		return memberNameW8;
	}

	public void setMemberNameW8(String memberNameW8) {
		this.memberNameW8 = memberNameW8;
	}

	public String getMemberClassW8() {
		return memberClassW8;
	}

	public void setMemberClassW8(String memberClassW8) {
		this.memberClassW8 = memberClassW8;
	}

	public String getMemberNameW9() {
		return memberNameW9;
	}

	public void setMemberNameW9(String memberNameW9) {
		this.memberNameW9 = memberNameW9;
	}

	public String getMemberClassW9() {
		return memberClassW9;
	}

	public void setMemberClassW9(String memberClassW9) {
		this.memberClassW9 = memberClassW9;
	}

	public String getMemberNameM1() {
		return memberNameM1;
	}

	public void setMemberNameM1(String memberNameM1) {
		this.memberNameM1 = memberNameM1;
	}

	public String getMemberClassM1() {
		return memberClassM1;
	}

	public void setMemberClassM1(String memberClassM1) {
		this.memberClassM1 = memberClassM1;
	}

	public String getMemberNameM2() {
		return memberNameM2;
	}

	public void setMemberNameM2(String memberNameM2) {
		this.memberNameM2 = memberNameM2;
	}

	public String getMemberClassM2() {
		return memberClassM2;
	}

	public void setMemberClassM2(String memberClassM2) {
		this.memberClassM2 = memberClassM2;
	}

	public String getMemberNameM3() {
		return memberNameM3;
	}

	public void setMemberNameM3(String memberNameM3) {
		this.memberNameM3 = memberNameM3;
	}

	public String getMemberClassM3() {
		return memberClassM3;
	}

	public void setMemberClassM3(String memberClassM3) {
		this.memberClassM3 = memberClassM3;
	}

	public String getMemberNameM4() {
		return memberNameM4;
	}

	public void setMemberNameM4(String memberNameM4) {
		this.memberNameM4 = memberNameM4;
	}

	public String getMemberClassM4() {
		return memberClassM4;
	}

	public void setMemberClassM4(String memberClassM4) {
		this.memberClassM4 = memberClassM4;
	}

	public String getMemberNameM5() {
		return memberNameM5;
	}

	public void setMemberNameM5(String memberNameM5) {
		this.memberNameM5 = memberNameM5;
	}

	public String getMemberClassM5() {
		return memberClassM5;
	}

	public void setMemberClassM5(String memberClassM5) {
		this.memberClassM5 = memberClassM5;
	}

	public String getMemberNameM6() {
		return memberNameM6;
	}

	public void setMemberNameM6(String memberNameM6) {
		this.memberNameM6 = memberNameM6;
	}

	public String getMemberClassM6() {
		return memberClassM6;
	}

	public void setMemberClassM6(String memberClassM6) {
		this.memberClassM6 = memberClassM6;
	}

	public String getMemberNameM7() {
		return memberNameM7;
	}

	public void setMemberNameM7(String memberNameM7) {
		this.memberNameM7 = memberNameM7;
	}

	public String getMemberClassM7() {
		return memberClassM7;
	}

	public void setMemberClassM7(String memberClassM7) {
		this.memberClassM7 = memberClassM7;
	}

	public String getMemberNameM8() {
		return memberNameM8;
	}

	public void setMemberNameM8(String memberNameM8) {
		this.memberNameM8 = memberNameM8;
	}

	public String getMemberClassM8() {
		return memberClassM8;
	}

	public void setMemberClassM8(String memberClassM8) {
		this.memberClassM8 = memberClassM8;
	}

	public String getMemberNameM9() {
		return memberNameM9;
	}

	public void setMemberNameM9(String memberNameM9) {
		this.memberNameM9 = memberNameM9;
	}

	public String getMemberClassM9() {
		return memberClassM9;
	}

	public void setMemberClassM9(String memberClassM9) {
		this.memberClassM9 = memberClassM9;
	}
	
	
	
	
	

}
