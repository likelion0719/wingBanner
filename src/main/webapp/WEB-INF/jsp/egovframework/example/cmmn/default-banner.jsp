<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
/* 윙배너 공간 css */
.fixed-item {
	height: 212px;
	width: 88px;
	background: white;
	background-color: rgba(255, 165, 52);
	position: fixed;
	top: 30%;
	right: 15px;
	z-index: 1;
	border: 1px solid black;
	overflow-y: auto;
	overflow-x: hidden;
}

/* 윙배너 안에 들어갈 이미지 css */
img {
	width: 70px;
	height: 70px;
}
</style>
<script src="js/jquery.cookie.js"></script>
<script>
	$(function() {
	
		favoritesCheck.init();
		favoritesCheck.initFn();
		var arr = trCookie.getCookieArray();
		
		for (var i = arr.length-1; i>=0; i--) {
			$("#favorites").prepend("<img data-code='"+arr[i]+"'src='images/logo/"+arr[i]+".jpg'>");
			
		}
	});
	
	var trCookie = {
			setCookieArray : function(arr) {
				console.log(arr)
				var str = "";
				for(var key in arr){
					if (str != "") {
						str+= ",";
					}	
					str +=key+":" +arr[key];
				}
				this.setCookie(str);
			},
			setCookie : function(str) {
				$.cookie("trCookie",str,{expires:1});
			},
			getCookie : function() {
				return $.cookie("trCookie");
			},
			getCookieArray : function() {
				var str = this.getCookie();
				
				if(str === null) {
					str = "";
				}
				var tmpl = str.split(","),
					result = [];
				for(var i in tmpl) {
					var tmp = tmpl[i].split(":");
					result[tmp[0]] = tmp[1];
				}
				return result;
			}
	}
	var favoritesCheck = {
			$asTarget : null,
			init : function() {
				this.$asTarget = $("#targetParent a");	
			},
			initFn : function() {
				var that = this;
				
				this.$asTarget.click(function() {
					var $brandCd = $(this).data("key");
					
					that.favoritesFn($brandCd);	
				})
			},
			favoritesFn : function(brandCd) {
				var arr = [],
				$favorites = $("#favorites"),
				duplicateChk = false,
				duplicateTarget = null,
				imgSize = $favorites.children().size();
				
			$favorites.find("img").each(function() {
				if ($(this).data("code") === brandCd) {
					duplicateChk = true;
					duplicateTarget = $(this);
				}
				
			})
			
			if (duplicateChk) {
				duplicateTarget.remove();
				/* for (var i =0; i<arr.length; i++) {
					if (duplicateTarget.data("code") === arr[i]){
						var temp;
						arr[temp] = arr[i];
						for(var j = i; j<arr.length-1; j++) {
							arr[j]= arr[j+1];
						}
						arr.pop()
					}	
				} */
				
			} else if(imgSize >=5) {
				$favorites.children().last().remove();
				//arr.shift()
			}
			$("#favorites").prepend("<img data-code='"+brandCd+"'src='images/logo/"+brandCd+".jpg'>");
			$favorites.find("img").each(function() {
				arr.push($(this).data("code"))
				
			})			
			trCookie.setCookieArray(arr);
			}
			
	}
</script>
<div class="fixed-item" id="favorites">

</div>