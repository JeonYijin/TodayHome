/**
 *  Questions Reply.javascript
 */
 
 
 // [댓글]
// 게시물의 댓글 목록을 불러오는 함수입니다.
const ReplyList = function(quests_num) {
    $.ajax({
        url : '/questions/replyList',
        type : 'get',
        data : {
            quests_num : quests_num
        },
        success : function(data) {

            console.log("댓글 리스트 가져오기 성공");

            // 댓글 목록을 html로 담기
            let listHtml = "";
            for(const i in data){
                let rnum = data[i].rnum;
                let qnum = data[i].qnum;
                let ref = data[i].ref;
                let step = data[i].step;
                let depth = data[i].depth;
                let nickname = data[i].nickname;
                let contents = data[i].contents;
                let regDate = data[i].regDate;
                let hearts = data[i].hearts;
//              let profile = data[i].profile;

                console.log(depth);	// 모댓글일땐 0, 답글일땐 1

                listHtml += "<div class='row replyrow reply" + rnum + "'>";

                if(content == ""){		// 삭제된 댓글일때
                    listHtml += "	<div>";
                    listHtml += "		(삭제된 댓글입니다)";
                    listHtml += "	</div>";
                }else{
                    if(depth == 0){	// 모댓글일때
                        listHtml += "	<div class='col-1'>";
                        listHtml += "		<a href='other_profile.do?other_nick="+nickname+"'> ";
                        listHtml += "			<img class='reply_list_profileImage' src='./upload/profile/"+ profile +"'/>";
                        listHtml += "		</a> ";
                        listHtml += "	</div>";
                        listHtml += "	<div class='rereply-content col-8'>";
                        listHtml += "		<div>";
                        listHtml += "			<span>";
                        listHtml += "				<b>"+ nickname +"</b>";
                        listHtml += "			</span>";
                        listHtml += "			<span>";
                        listHtml += 				contents;
                        listHtml += "			</span>";
                        listHtml += "		</div>";
                        // 현재 로그인 상태일때 답글작성 버튼이 나온다.
                        if("${nick}" != ""){
                            listHtml += "		<div>";
                            // 함수에 게시글번호(qnum), 모댓글번호(rnum), 모댓글 작성자(nickname)를 인자로 담아서 넘긴다.
                            // 이때 모댓글 작성자 writer는 string인데 string을 인자에 넣기 위해선''나""로 감싸줘야한다.
                            // 여기선 ''와 ""가 이미 둘다 쓰이고 있는데  href를 감싸고 있는 ''와 겹치지 않는 ""를 \" 처리해서 넣어줬다.
                            listHtml += "			<a href='#' class='write_reply_start' data-bs-toggle='collapse' data-bs-target='#re_reply"+ rnum +"' aria-expanded='false' aria-controls='collapseExample'>답글&nbsp;달기</a>";
                            listHtml += "		</div>";
                        }
                        listHtml += "	</div>";

                    }else{	// 답글일때
                        listHtml += "	<div class='col-1'>"
                        listHtml += "	</div>"
                        listHtml += "	<div class='col-1'>";
                        listHtml += "		<img class='reply_list_profileImage' src='./upload/profile/"+ profile +"'/>";
                        listHtml += "	</div>";
                        listHtml += "	<div class='rereply-content"+ rnum +" col-7'>";
                        listHtml += "		<div>";
                        listHtml += "			<span>";
                        listHtml += "				<b>"+ nickname +"</b>";
                        listHtml += "			</span>";
                        listHtml += "			<span>";
                        listHtml += 				contents;
                        listHtml += "			</span>";
                        listHtml += "		</div>";

                        listHtml += "	</div>";
                    }

                    listHtml += "	<div class='col-3 reply-right'>";
                    listHtml += "		<div>";
                    listHtml += 			regDate;
                    listHtml += "		</div>";
                    // 책갈피
                    // 현재 로그인 상태이고..
                    if("${nick}" != ""){

                        //현재 사용자가 이 댓글의 작성자일때 삭제 버튼이 나온다.
                        if("${nick}" == writer){
                            listHtml += "		<div>";
                            // 수정할 댓글의 no를 grpl과 함께 넘긴다. 
                            // 모댓글 수정칸과 답글 수정칸을 화면에 다르게 나타내야하기 때문에 모댓글과 답글을 구분하는 grpl을 함께 넘겨주어야한다.
                            //listHtml += "			<a href='javascript:' no='"+ no +"' grpl='"+ grpl +"' class='reply_modify'>수정</a>";
                            //listHtml += "			&nbsp;|&nbsp;";
                            // 삭제는 no만 넘겨주면 된다.
                            listHtml += "			<a href='javascript:' no='"+ rnum +"' grpl='"+ depth + "' bno='"+ bno +"' grp='"+ grp +"' class='reply_delete'>삭제</a>";
                            listHtml += "		</div>";
                        }
                    }

                    listHtml += "	</div>";
                    // 댓글에 대댓글달기를 누르면 대댓글입력란이 나온다.
                    // ---- 대댓글입력란
                    listHtml += "	<div class='collapse row rereply_write' id='re_reply"+ rnum +"'>";
                    listHtml += "		<div class='col-1'>"
                    listHtml += "		</div>"
                    listHtml += "		<div class='col-1'>"
                    listHtml += "			<a href='other_profile.do?other_nick="+nickname+"'> ";
                    listHtml += "				<img id='write_reply_profileImage' src='./upload/profile/${profile}'/>"
                    listHtml += "			</a> ";
                    listHtml += "		</div>"
                    listHtml += "		<div class='col-7'>"
                    listHtml +=  "  		<input class='w-100 input_rereply_div form-control' id='input_rereply"+ no +"' type='text' placeholder='댓글입력...'>"
                    listHtml += "		</div>"
                    listHtml += "		<div class='col-3'>"
                    // 대댓글달기 버튼이 눌리면 모댓글 번호(rnum)와 게시물번호(qnum)를 함수에 전달한다.

                    // 동적으로 넣은 html태그에서 발생하는 이벤트는 동적으로 처리해줘야한다 !!!!!
                    // 예를들어, 동적으로 넣은 html태그에서 발생하는 click 이벤트는 html태그 안에서 onclick으로 처리하면 안되고, jquery에서 클래스명이나 id값으로 받아서 처리하도록 해야한다.
                    // 아래코드를 보자~~~~
                    // listHtml += "			<button onclick='javascript:WriteReReply("+ no +","+ bno +")' type='button' class='btn btn-success mb-1 write_rereply' >답글&nbsp;달기</button>"
                    // 위 코드는 클릭되어도 값이 넘겨지지 않는다. 값이 undefined가 된다.
                    // 아래코드처럼 짜야한다. click이벤트를 처리하지 않고 데이터(no, bno)만 속성으로 넘겨주도록 작성한다.
                    listHtml += "			<button type='button' class='btn btn-success mb-1 write_rereply' no='" + rnum + "' bno='" + qnum + "'>답글&nbsp;달기</button>"
                    listHtml += "		</div>";
                    listHtml += "	</div>";
                    // ---- 답글입력란 끝
                }

                listHtml += "</div>";


            };

            ///////////// 동적으로 넣어준 html에 대한 이벤트 처리는 같은 함수내에서 다 해줘야한다.
            ///////////// $(document).ready(function(){}); 안에 써주면 안된다.

            // 댓글 리스트 부분에 받아온 댓글 리스트를 넣기
            $(".reply-list"+rnum).html(listHtml);

            // 답글에서 답글달기를 누르면 input란에 "@답글작성자"가 들어간다.
            //$('.write_re_reply_start').on('click', function(){
            //	$('#input_rereply'+ $(this).attr('no')).val("@"+$(this).attr('writer')+" ");
            //});

            //답글을 작성한 후 답글달기 버튼을 눌렀을 때 그 click event를 아래처럼 jquery로 처리한다.
            $('button.btn.btn-success.mb-1.write_rereply').on( 'click', function() {
                console.log( 'rnum', $(this).attr('rnum') );
                console.log( 'qnum', $(this).attr('qnum') );

                // 답글을 DB에 저장하는 함수를 호출한다. bno와 no를 같이 넘겨주어야한다.
                WriteReReply($(this).attr('rnum'), $(this).attr('rnum') );
            });

            // 삭제버튼을 클릭했을 때
            $('.reply_delete').on('click', function(){
                // 모댓글 삭제일때
                if($(this).attr('depth') == 0){	
                    DeleteReply($(this).attr('rnum'), $(this).attr('qnum'));

                // 답글 삭제일때
                }else{
                    DeleteReReply($(this).attr('rnum'), $(this).attr('qnum'), $(this).attr('ref'));
                }

            })


        },
        error : function() {
            alert('서버 에러');
        }
    });
};

// 답글 달기 버튼 클릭시  실행 - 답글 저장, 댓글 갯수 가져오기
const WriteReReply = function(qnum,rnum) {

    console.log(qnum);
    console.log(rnum);

    console.log($("#input_rereply" + rnum).val());

    // 댓글 입력란의 내용을 가져온다. 
    // ||"" 를 붙인 이유  => 앞뒤 공백을 제거한다.(띄어쓰기만 입력했을때 댓글작성안되게 처리하기위함)
    let content = $("#input_rereply" + rnum).val();
    content = content.trim();


    if(content == ""){	// 입력된게 없을때
        alert("글을 입력하세요!");
    }else{	
        // 입력란 비우기
        $("#input_rereply" + rnum).val("");

        // reply+1 하고 그 값을 가져옴
        $.ajax({
            url : '/questions/delete_rereply',
            type : 'get',
            data : {
                rnum : rnum,
                qnum : qnum,
                contents: contents
            },
            success : function(qvo) {

                let reply = qvo.reply;
                // 페이지, 모달창에 댓글수 갱신
                $('#m_reply'+qnum).text(reply);//
                $('#reply'+qnum).text(reply);

                console.log("답글 작성 성공");

                // 게시물 번호(qnum)에 해당하는 댓글리스트를 새로 받아오기
                ReplyList(qnum);
            },
            error : function() {
                alert('서버 에러');
            }
        });

    };
};

// 모댓글 삭제일때
const DeleteReply = function(rnum, qnum){
    // ref이 no인 댓글이 있는 경우 contents에 null을 넣고 없으면 삭제한다.
    $.ajax({
        url : '/questions/delete_reply',
        type : 'get',
        data : {
            rnum : rnum,
            qnum : qnum
        },
        success : function(qvo) {

            let reply = avo.reply;

            // 페이지, 모달창에 댓글수 갱신
            $('#m_reply'+qnum).text(reply);
            $('#reply'+qnum).text(reply);

            console.log("모댓글 삭제 성공");

            // 게시물 번호(bno)에 해당하는 댓글리스트를 새로 받아오기
            ReplyList(qnum);
        },
        error : function() {
            alert('서버 에러');
        }
    });
};

// 답글 삭제일때
const DeleteReReply = function(rnum, qnum, ref){

    //console.log("grp : " + grp);

    // 답글을 삭제한다.
    $.ajax({
        url : '/questions/delete_rereply',
        type : 'get',
        data : {
            rnum : rnum,
           	qnum : qnum,
            ref : ref
        },
        success : function(qvo) {

            let reply = qvo.reply;

            // 페이지, 모달창에 댓글수 갱신
            $('#m_reply'+qnum).text(reply);
            $('#reply'+qnum).text(reply);

            console.log("답글 삭제 성공");

            // 게시물 번호(bno)에 해당하는 댓글리스트를 새로 받아오기
            ReplyList(qnum);
        },
        error : function() {
            alert('서버 에러');
        }
    });

};