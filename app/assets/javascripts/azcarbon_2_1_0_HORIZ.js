
var _carbonads={init:function()
{var baseurl='srv.buysellads.com';if(window.location.protocol!='https:')
baseurl='srv.carbonads.net';var pro=document.createElement('script');pro.id='_carbonads_projs';pro.type='text/javascript';pro.src='//'+baseurl+'/ads/C6AILKT.json?segment=placement:ihatetomatoesnet&callback=_carbonads_go';document.getElementsByTagName('head')[0].appendChild(pro);}};function _carbonads_go(b)
{var ad=b['ads'][0],link,fulllink,image,description;if(ad.html!=null)
ad=JSON.parse(ad.html);if(ad.fetch!=null)
{var fetch=document.createElement('script');fetch.type='text/javascript';fetch.src=ad.fetch+'?'+Math.round(Date.now()/10000);document.getElementsByTagName('head')[0].appendChild(fetch);return;}
image=ad.image;link=ad.statlink.split('?encredirect=');description=ad.description;var style=document.createElement('style');style.innerHTML='.carbonad{display:block;background:#fdfdfd;background-image:-moz-linear-gradient(top,#f8f8f8,#fdfdfd);background-image:-webkit-gradient(linear,left top,left bottom,color-stop(0,#f8f8f8),color-stop(1,#fdfdfd));border:1px solid #d5d5d5;font-family:Lucida Grande,Arial,Helvetica,sans-serif;font-size:11px;height:118px;line-height:15px;overflow:hidden;width:300px}.carbonad-img{border:none;display:inline;float:left;height:100px;margin:9px;width:130px}.carbonad-text{display:inline;float:left;width:142px;padding-top:13px}.carbonad-text a{color:#000;text-decoration:none;text-transform:none;}.carbonad-tag{float:left;margin-top:9px;text-align:center;width:142px;color:#999}.carbonad-tag a{color:#999;text-decoration:none}';if(typeof link[1]!='undefined')
fulllink=link[0]+'?segment=placement:ihatetomatoesnet&encredirect='+encodeURIComponent(link[1]);else if(link[0].search('srv.buysellads.com')>0)
fulllink=link[0]+'?segment=placement:ihatetomatoesnet';else
fulllink=link[0];if(window.location.protocol!='https:')
fulllink=fulllink.replace('srv.buysellads.com','srv.carbonads.net');var el=document.createElement('span');el.innerHTML='<span class="carbonad-image"><a href="'+fulllink+'" target="_blank"><img width="130" height="100" border="0" src="'+ad.image+'" class="carbonad-image carbonad-img"></a></span><span class="carbonad-text"><a href="'+fulllink+'">'+ad.description+'</a></span><span class="carbonad-tag">ads via <a href="http://carbonads.com"/>Carbon</a></span>';var legacy=document.getElementById('azcarbon');if(legacy==null)
legacy=document.getElementById('carbon');if(typeof ad.pixel!='undefined')
{var pix=document.createElement('img');pix.src=ad.pixel;pix.border='0';pix.height='1';pix.width='1';pix.style.display='none';el.appendChild(pix);}
if(ad!=null)
{try{document.getElementsByTagName('head')[0].appendChild(style);}catch(e){}}
if(legacy!=null)
legacy.appendChild(el);}
_carbonads.init();