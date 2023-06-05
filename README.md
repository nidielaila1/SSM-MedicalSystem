# MedicalSystem
自己学习ssm框架，开发的一个医疗系统
（一共分为三端，用户端，医生端，管理员端）

（1）预约挂号：
进入预约挂号功能界面，选择需要进行预约的科室，进入到门诊界面，选择需要进行预约的时间（只能选择其中有号的时间进行预约），之后找到对应的号源选择上午或者下午，并选择门诊类型（专家门诊，普通门诊），选择好之后选择就诊人（如没有则需进行填写就诊人的信息），最终确认挂号

（2）当日取号
进入当日取号功能界面，选择需要进行预约的科室，进入到对应的科室门诊中选择对应科室，系统会自动显示当前正在接诊的医师，如果当前的医师的号已满则会显现出已挂满的情况，如未挂满则可以进行挂号选项，进入到挂号选项后，需要用户添加就诊人，添加成功后，可以立即进行挂号。

（3）查看采血预约核酸
进入到查看采血核酸预约界面后，选择已经添加过的就诊人其中一位进行查验，其中会显示还未完成的采血核酸预约记录，显示对应的信息并且还可在当前页面下选择查看曾经的预约记录

（4）候诊查询
进入到候诊查询预约界面后，用户选择已经添加过的就诊人其中一位进行查验，其中会显示当前正在等候就诊的对应就诊人的预约就诊记录信息

（5）检查预约改约
进入检查预约改约界面后，用户选择已经添加过的就诊人其中一位进行检查预约，如果当前就诊人有检查预约，那么就会在对应的界面进行显示，反之则没有显示。如果想要进行改约操作，那么就点击修改按钮，跳转到对应预约科室的对应预约见面（直接跳转到当前就诊人 当前已经预约的检查的科室 的预约挂号界面）。 如果用户想要取消当前就诊人的检查预约，那么直接点击取消按钮即可。

（6）门诊出诊表
进入到门诊出诊表后，用户可以根据 疾病名称、科室名称、医师名称进行来进行相应得查询出诊信息，在默认门诊出诊表界面中，会显示未来一周的门诊出诊表。
并且在当前的门诊出诊表中，点击医师的姓名会跳转到对应的医师介绍页面。

（7）科室导航
进入到科室导航界面中，所有的科室通过非手术科室、手术科室、诊断相关科室进行分类，点击任意科室标签，会跳转到对应的科室介绍页面。其中在科室导航页面中 还可以通过出诊信息来进行查询，跳转到对应的门诊出诊表查询信息界面。

（8）办理住院
进入到办理住院页面中，用户选择需要进行办理住院的就诊人，如没有需要进行添加的就诊人，那么用户可以通过添加就诊人来增加对应的信息。选好就诊人后，系统会进行查询对应就诊人的住院证明，如果相对应的的住院证明存在，那么用户需要核对信息，核对无误后，点击办理住院。
（住院申请由医生来进行提交，通过管理员来审核，只有管理员审核通过，用户才可以查看到对应的住院证明信息）

（9）手术查询
进入到手术查询界面中，用户选择需要查询的就诊人，点击查询按钮后，系统会查询就诊人正在进行手术信息。


医生：
（1）医生登录系统，可以查看当天选择挂自己的号的患者信息，在患者进行看病时，医生选择已就诊（用户只有在就诊前可以选择取消预约或者更换）

（2）医生登录系统，对于已经就诊的病人可以进行选择是否住院，如果选择住院，则可以提交住院申请

（3）医生登录系统，可以提交本周不出诊的时间申请


管理员：对于已经存在的住院申请以及信息进行审查，并决定是否通过。然后根据空缺的病房给就诊人分配房对于医生提交的不出诊的信息来审核，决定是否通过


---------------------------------------------------------------------------------------------------------------------------
2023-6-2
已经完成了网页的更新完成了上传
----------------------------------------------------------------------------
以下是页面的展示
![image](https://github.com/nidielaila1/MedicalSystem/assets/118882579/56896103-8687-4858-97dd-09ab79696720)
用户登录：
![image](https://github.com/nidielaila1/MedicalSystem/assets/118882579/bf88f51e-6760-47fb-96ed-b367e254abf3)
用户主页：
![image](https://github.com/nidielaila1/MedicalSystem/assets/118882579/5a189fe9-70c2-4876-8f1e-515fb043c922)
用户功能界面：
![image](https://github.com/nidielaila1/MedicalSystem/assets/118882579/e3dc78f7-60c7-4170-9dcb-63f26d54b69f)
管理员功能界面：
![image](https://github.com/nidielaila1/MedicalSystem/assets/118882579/f46fad50-b6dd-41da-b9fe-38045bfd8d40)
医生功能界面：
![image](https://github.com/nidielaila1/MedicalSystem/assets/118882579/6c1f453e-df8e-4582-aa88-731821983183)

