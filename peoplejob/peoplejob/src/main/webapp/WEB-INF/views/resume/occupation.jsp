<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={xpid:"Ug4CWFFXGwABVlBXAwE="};window.NREUM||(NREUM={}),__nr_require=function(t,n,e){function r(e){if(!n[e]){var o=n[e]={exports:{}};t[e][0].call(o.exports,function(n){var o=t[e][1][n];return r(o||n)},o,o.exports)}return n[e].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<e.length;o++)r(e[o]);return r}({1:[function(t,n,e){function r(t){try{s.console&&console.log(t)}catch(n){}}var o,i=t("ee"),a=t(18),s={};try{o=localStorage.getItem("__nr_flags").split(","),console&&"function"==typeof console.log&&(s.console=!0,o.indexOf("dev")!==-1&&(s.dev=!0),o.indexOf("nr_dev")!==-1&&(s.nrDev=!0))}catch(c){}s.nrDev&&i.on("internal-error",function(t){r(t.stack)}),s.dev&&i.on("fn-err",function(t,n,e){r(e.stack)}),s.dev&&(r("NR AGENT IN DEVELOPMENT MODE"),r("flags: "+a(s,function(t,n){return t}).join(", ")))},{}],2:[function(t,n,e){function r(t,n,e,r,s){try{p?p-=1:o(s||new UncaughtException(t,n,e),!0)}catch(f){try{i("ierr",[f,c.now(),!0])}catch(d){}}return"function"==typeof u&&u.apply(this,a(arguments))}function UncaughtException(t,n,e){this.message=t||"Uncaught error with no additional information",this.sourceURL=n,this.line=e}function o(t,n){var e=n?null:c.now();i("err",[t,e])}var i=t("handle"),a=t(19),s=t("ee"),c=t("loader"),f=t("gos"),u=window.onerror,d=!1,l="nr@seenError",p=0;c.features.err=!0,t(1),window.onerror=r;try{throw new Error}catch(h){"stack"in h&&(t(8),t(7),"addEventListener"in window&&t(5),c.xhrWrappable&&t(9),d=!0)}s.on("fn-start",function(t,n,e){d&&(p+=1)}),s.on("fn-err",function(t,n,e){d&&!e[l]&&(f(e,l,function(){return!0}),this.thrown=!0,o(e))}),s.on("fn-end",function(){d&&!this.thrown&&p>0&&(p-=1)}),s.on("internal-error",function(t){i("ierr",[t,c.now(),!0])})},{}],3:[function(t,n,e){t("loader").features.ins=!0},{}],4:[function(t,n,e){function r(t){}if(window.performance&&window.performance.timing&&window.performance.getEntriesByType){var o=t("ee"),i=t("handle"),a=t(8),s=t(7),c="learResourceTimings",f="addEventListener",u="resourcetimingbufferfull",d="bstResource",l="resource",p="-start",h="-end",m="fn"+p,w="fn"+h,v="bstTimer",y="pushState",g=t("loader");g.features.stn=!0,t(6);var x=NREUM.o.EV;o.on(m,function(t,n){var e=t[0];e instanceof x&&(this.bstStart=g.now())}),o.on(w,function(t,n){var e=t[0];e instanceof x&&i("bst",[e,n,this.bstStart,g.now()])}),a.on(m,function(t,n,e){this.bstStart=g.now(),this.bstType=e}),a.on(w,function(t,n){i(v,[n,this.bstStart,g.now(),this.bstType])}),s.on(m,function(){this.bstStart=g.now()}),s.on(w,function(t,n){i(v,[n,this.bstStart,g.now(),"requestAnimationFrame"])}),o.on(y+p,function(t){this.time=g.now(),this.startPath=location.pathname+location.hash}),o.on(y+h,function(t){i("bstHist",[location.pathname+location.hash,this.startPath,this.time])}),f in window.performance&&(window.performance["c"+c]?window.performance[f](u,function(t){i(d,[window.performance.getEntriesByType(l)]),window.performance["c"+c]()},!1):window.performance[f]("webkit"+u,function(t){i(d,[window.performance.getEntriesByType(l)]),window.performance["webkitC"+c]()},!1)),document[f]("scroll",r,{passive:!0}),document[f]("keypress",r,!1),document[f]("click",r,!1)}},{}],5:[function(t,n,e){function r(t){for(var n=t;n&&!n.hasOwnProperty(u);)n=Object.getPrototypeOf(n);n&&o(n)}function o(t){s.inPlace(t,[u,d],"-",i)}function i(t,n){return t[1]}var a=t("ee").get("events"),s=t(21)(a,!0),c=t("gos"),f=XMLHttpRequest,u="addEventListener",d="removeEventListener";n.exports=a,"getPrototypeOf"in Object?(r(document),r(window),r(f.prototype)):f.prototype.hasOwnProperty(u)&&(o(window),o(f.prototype)),a.on(u+"-start",function(t,n){var e=t[1],r=c(e,"nr@wrapped",function(){function t(){if("function"==typeof e.handleEvent)return e.handleEvent.apply(e,arguments)}var n={object:t,"function":e}[typeof e];return n?s(n,"fn-",null,n.name||"anonymous"):e});this.wrapped=t[1]=r}),a.on(d+"-start",function(t){t[1]=this.wrapped||t[1]})},{}],6:[function(t,n,e){var r=t("ee").get("history"),o=t(21)(r);n.exports=r,o.inPlace(window.history,["pushState","replaceState"],"-")},{}],7:[function(t,n,e){var r=t("ee").get("raf"),o=t(21)(r),i="equestAnimationFrame";n.exports=r,o.inPlace(window,["r"+i,"mozR"+i,"webkitR"+i,"msR"+i],"raf-"),r.on("raf-start",function(t){t[0]=o(t[0],"fn-")})},{}],8:[function(t,n,e){function r(t,n,e){t[0]=a(t[0],"fn-",null,e)}function o(t,n,e){this.method=e,this.timerDuration=isNaN(t[1])?0:+t[1],t[0]=a(t[0],"fn-",this,e)}var i=t("ee").get("timer"),a=t(21)(i),s="setTimeout",c="setInterval",f="clearTimeout",u="-start",d="-";n.exports=i,a.inPlace(window,[s,"setImmediate"],s+d),a.inPlace(window,[c],c+d),a.inPlace(window,[f,"clearImmediate"],f+d),i.on(c+u,r),i.on(s+u,o)},{}],9:[function(t,n,e){function r(t,n){d.inPlace(n,["onreadystatechange"],"fn-",s)}function o(){var t=this,n=u.context(t);t.readyState>3&&!n.resolved&&(n.resolved=!0,u.emit("xhr-resolved",[],t)),d.inPlace(t,y,"fn-",s)}function i(t){g.push(t),h&&(b?b.then(a):w?w(a):(E=-E,R.data=E))}function a(){for(var t=0;t<g.length;t++)r([],g[t]);g.length&&(g=[])}function s(t,n){return n}function c(t,n){for(var e in t)n[e]=t[e];return n}t(5);var f=t("ee"),u=f.get("xhr"),d=t(21)(u),l=NREUM.o,p=l.XHR,h=l.MO,m=l.PR,w=l.SI,v="readystatechange",y=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"],g=[];n.exports=u;var x=window.XMLHttpRequest=function(t){var n=new p(t);try{u.emit("new-xhr",[n],n),n.addEventListener(v,o,!1)}catch(e){try{u.emit("internal-error",[e])}catch(r){}}return n};if(c(p,x),x.prototype=p.prototype,d.inPlace(x.prototype,["open","send"],"-xhr-",s),u.on("send-xhr-start",function(t,n){r(t,n),i(n)}),u.on("open-xhr-start",r),h){var b=m&&m.resolve();if(!w&&!m){var E=1,R=document.createTextNode(E);new h(a).observe(R,{characterData:!0})}}else f.on("fn-end",function(t){t[0]&&t[0].type===v||a()})},{}],10:[function(t,n,e){function r(){var t=window.NREUM,n=t.info.accountID||null,e=t.info.agentID||null,r=t.info.trustKey||null,i="btoa"in window&&"function"==typeof window.btoa;if(!n||!e||!i)return null;var a={v:[0,1],d:{ty:"Browser",ac:n,ap:e,id:o.generateCatId(),tr:o.generateCatId(),ti:Date.now()}};return r&&n!==r&&(a.d.tk=r),btoa(JSON.stringify(a))}var o=t(16);n.exports={generateTraceHeader:r}},{}],11:[function(t,n,e){function r(t){var n=this.params,e=this.metrics;if(!this.ended){this.ended=!0;for(var r=0;r<p;r++)t.removeEventListener(l[r],this.listener,!1);n.aborted||(e.duration=s.now()-this.startTime,this.loadCaptureCalled||4!==t.readyState?null==n.status&&(n.status=0):a(this,t),e.cbTime=this.cbTime,d.emit("xhr-done",[t],t),c("xhr",[n,e,this.startTime]))}}function o(t,n){var e=t.responseType;if("json"===e&&null!==n)return n;var r="arraybuffer"===e||"blob"===e||"json"===e?t.response:t.responseText;return w(r)}function i(t,n){var e=f(n),r=t.params;r.host=e.hostname+":"+e.port,r.pathname=e.pathname,t.sameOrigin=e.sameOrigin}function a(t,n){t.params.status=n.status;var e=o(n,t.lastSize);if(e&&(t.metrics.rxSize=e),t.sameOrigin){var r=n.getResponseHeader("X-NewRelic-App-Data");r&&(t.params.cat=r.split(", ").pop())}t.loadCaptureCalled=!0}var s=t("loader");if(s.xhrWrappable){var c=t("handle"),f=t(12),u=t(10).generateTraceHeader,d=t("ee"),l=["load","error","abort","timeout"],p=l.length,h=t("id"),m=t(15),w=t(14),v=window.XMLHttpRequest;s.features.xhr=!0,t(9),d.on("new-xhr",function(t){var n=this;n.totalCbs=0,n.called=0,n.cbTime=0,n.end=r,n.ended=!1,n.xhrGuids={},n.lastSize=null,n.loadCaptureCalled=!1,t.addEventListener("load",function(e){a(n,t)},!1),m&&(m>34||m<10)||window.opera||t.addEventListener("progress",function(t){n.lastSize=t.loaded},!1)}),d.on("open-xhr-start",function(t){this.params={method:t[0]},i(this,t[1]),this.metrics={}}),d.on("open-xhr-end",function(t,n){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&n.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid);var e=!1;if("init"in NREUM&&"distributed_tracing"in NREUM.init&&(e=!!NREUM.init.distributed_tracing.enabled),e&&this.sameOrigin){var r=u();r&&n.setRequestHeader("newrelic",r)}}),d.on("send-xhr-start",function(t,n){var e=this.metrics,r=t[0],o=this;if(e&&r){var i=w(r);i&&(e.txSize=i)}this.startTime=s.now(),this.listener=function(t){try{"abort"!==t.type||o.loadCaptureCalled||(o.params.aborted=!0),("load"!==t.type||o.called===o.totalCbs&&(o.onloadCalled||"function"!=typeof n.onload))&&o.end(n)}catch(e){try{d.emit("internal-error",[e])}catch(r){}}};for(var a=0;a<p;a++)n.addEventListener(l[a],this.listener,!1)}),d.on("xhr-cb-time",function(t,n,e){this.cbTime+=t,n?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof e.onload||this.end(e)}),d.on("xhr-load-added",function(t,n){var e=""+h(t)+!!n;this.xhrGuids&&!this.xhrGuids[e]&&(this.xhrGuids[e]=!0,this.totalCbs+=1)}),d.on("xhr-load-removed",function(t,n){var e=""+h(t)+!!n;this.xhrGuids&&this.xhrGuids[e]&&(delete this.xhrGuids[e],this.totalCbs-=1)}),d.on("addEventListener-end",function(t,n){n instanceof v&&"load"===t[0]&&d.emit("xhr-load-added",[t[1],t[2]],n)}),d.on("removeEventListener-end",function(t,n){n instanceof v&&"load"===t[0]&&d.emit("xhr-load-removed",[t[1],t[2]],n)}),d.on("fn-start",function(t,n,e){n instanceof v&&("onload"===e&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=s.now()))}),d.on("fn-end",function(t,n){this.xhrCbStart&&d.emit("xhr-cb-time",[s.now()-this.xhrCbStart,this.onload,n],n)})}},{}],12:[function(t,n,e){n.exports=function(t){var n=document.createElement("a"),e=window.location,r={};n.href=t,r.port=n.port;var o=n.href.split("://");!r.port&&o[1]&&(r.port=o[1].split("/")[0].split("@").pop().split(":")[1]),r.port&&"0"!==r.port||(r.port="https"===o[0]?"443":"80"),r.hostname=n.hostname||e.hostname,r.pathname=n.pathname,r.protocol=o[0],"/"!==r.pathname.charAt(0)&&(r.pathname="/"+r.pathname);var i=!n.protocol||":"===n.protocol||n.protocol===e.protocol,a=n.hostname===document.domain&&n.port===e.port;return r.sameOrigin=i&&(!n.hostname||a),r}},{}],13:[function(t,n,e){function r(){}function o(t,n,e){return function(){return i(t,[f.now()].concat(s(arguments)),n?null:this,e),n?void 0:this}}var i=t("handle"),a=t(18),s=t(19),c=t("ee").get("tracer"),f=t("loader"),u=NREUM;"undefined"==typeof window.newrelic&&(newrelic=u);var d=["setPageViewName","setCustomAttribute","setErrorHandler","finished","addToTrace","inlineHit","addRelease"],l="api-",p=l+"ixn-";a(d,function(t,n){u[n]=o(l+n,!0,"api")}),u.addPageAction=o(l+"addPageAction",!0),u.setCurrentRouteName=o(l+"routeName",!0),n.exports=newrelic,u.interaction=function(){return(new r).get()};var h=r.prototype={createTracer:function(t,n){var e={},r=this,o="function"==typeof n;return i(p+"tracer",[f.now(),t,e],r),function(){if(c.emit((o?"":"no-")+"fn-start",[f.now(),r,o],e),o)try{return n.apply(this,arguments)}catch(t){throw c.emit("fn-err",[arguments,this,t],e),t}finally{c.emit("fn-end",[f.now()],e)}}}};a("actionText,setName,setAttribute,save,ignore,onEnd,getContext,end,get".split(","),function(t,n){h[n]=o(p+n)}),newrelic.noticeError=function(t,n){"string"==typeof t&&(t=new Error(t)),i("err",[t,f.now(),!1,n])}},{}],14:[function(t,n,e){n.exports=function(t){if("string"==typeof t&&t.length)return t.length;if("object"==typeof t){if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if(!("undefined"!=typeof FormData&&t instanceof FormData))try{return JSON.stringify(t).length}catch(n){return}}}},{}],15:[function(t,n,e){var r=0,o=navigator.userAgent.match(/Firefox[\/\s](\d+\.\d+)/);o&&(r=+o[1]),n.exports=r},{}],16:[function(t,n,e){function r(){function t(){return n?15&n[e++]:16*Math.random()|0}var n=null,e=0,r=window.crypto||window.msCrypto;r&&r.getRandomValues&&(n=r.getRandomValues(new Uint8Array(31)));for(var o,i="xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx",a="",s=0;s<i.length;s++)o=i[s],"x"===o?a+=t().toString(16):"y"===o?(o=3&t()|8,a+=o.toString(16)):a+=o;return a}function o(){function t(){return n?15&n[e++]:16*Math.random()|0}var n=null,e=0,r=window.crypto||window.msCrypto;r&&r.getRandomValues&&Uint8Array&&(n=r.getRandomValues(new Uint8Array(31)));for(var o=[],i=0;i<16;i++)o.push(t().toString(16));return o.join("")}n.exports={generateUuid:r,generateCatId:o}},{}],17:[function(t,n,e){function r(t,n){if(!o)return!1;if(t!==o)return!1;if(!n)return!0;if(!i)return!1;for(var e=i.split("."),r=n.split("."),a=0;a<r.length;a++)if(r[a]!==e[a])return!1;return!0}var o=null,i=null,a=/Version\/(\S+)\s+Safari/;if(navigator.userAgent){var s=navigator.userAgent,c=s.match(a);c&&s.indexOf("Chrome")===-1&&s.indexOf("Chromium")===-1&&(o="Safari",i=c[1])}n.exports={agent:o,version:i,match:r}},{}],18:[function(t,n,e){function r(t,n){var e=[],r="",i=0;for(r in t)o.call(t,r)&&(e[i]=n(r,t[r]),i+=1);return e}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],19:[function(t,n,e){function r(t,n,e){n||(n=0),"undefined"==typeof e&&(e=t?t.length:0);for(var r=-1,o=e-n||0,i=Array(o<0?0:o);++r<o;)i[r]=t[n+r];return i}n.exports=r},{}],20:[function(t,n,e){n.exports={exists:"undefined"!=typeof window.performance&&window.performance.timing&&"undefined"!=typeof window.performance.timing.navigationStart}},{}],21:[function(t,n,e){function r(t){return!(t&&t instanceof Function&&t.apply&&!t[a])}var o=t("ee"),i=t(19),a="nr@original",s=Object.prototype.hasOwnProperty,c=!1;n.exports=function(t,n){function e(t,n,e,o){function nrWrapper(){var r,a,s,c;try{a=this,r=i(arguments),s="function"==typeof e?e(r,a):e||{}}catch(f){l([f,"",[r,a,o],s])}u(n+"start",[r,a,o],s);try{return c=t.apply(a,r)}catch(d){throw u(n+"err",[r,a,d],s),d}finally{u(n+"end",[r,a,c],s)}}return r(t)?t:(n||(n=""),nrWrapper[a]=t,d(t,nrWrapper),nrWrapper)}function f(t,n,o,i){o||(o="");var a,s,c,f="-"===o.charAt(0);for(c=0;c<n.length;c++)s=n[c],a=t[s],r(a)||(t[s]=e(a,f?s+o:o,i,s))}function u(e,r,o){if(!c||n){var i=c;c=!0;try{t.emit(e,r,o,n)}catch(a){l([a,e,r,o])}c=i}}function d(t,n){if(Object.defineProperty&&Object.keys)try{var e=Object.keys(t);return e.forEach(function(e){Object.defineProperty(n,e,{get:function(){return t[e]},set:function(n){return t[e]=n,n}})}),n}catch(r){l([r])}for(var o in t)s.call(t,o)&&(n[o]=t[o]);return n}function l(n){try{t.emit("internal-error",n)}catch(e){}}return t||(t=o),e.inPlace=f,e.flag=a,e}},{}],ee:[function(t,n,e){function r(){}function o(t){function n(t){return t&&t instanceof r?t:t?c(t,s,i):i()}function e(e,r,o,i){if(!l.aborted||i){t&&t(e,r,o);for(var a=n(o),s=m(e),c=s.length,f=0;f<c;f++)s[f].apply(a,r);var d=u[g[e]];return d&&d.push([x,e,r,a]),a}}function p(t,n){y[t]=m(t).concat(n)}function h(t,n){var e=y[t];if(e)for(var r=0;r<e.length;r++)e[r]===n&&e.splice(r,1)}function m(t){return y[t]||[]}function w(t){return d[t]=d[t]||o(e)}function v(t,n){f(t,function(t,e){n=n||"feature",g[e]=n,n in u||(u[n]=[])})}var y={},g={},x={on:p,addEventListener:p,removeEventListener:h,emit:e,get:w,listeners:m,context:n,buffer:v,abort:a,aborted:!1};return x}function i(){return new r}function a(){(u.api||u.feature)&&(l.aborted=!0,u=l.backlog={})}var s="nr@context",c=t("gos"),f=t(18),u={},d={},l=n.exports=o();l.backlog=u},{}],gos:[function(t,n,e){function r(t,n,e){if(o.call(t,n))return t[n];var r=e();if(Object.defineProperty&&Object.keys)try{return Object.defineProperty(t,n,{value:r,writable:!0,enumerable:!1}),r}catch(i){}return t[n]=r,r}var o=Object.prototype.hasOwnProperty;n.exports=r},{}],handle:[function(t,n,e){function r(t,n,e,r){o.buffer([t],r),o.emit(t,n,e)}var o=t("ee").get("handle");n.exports=r,r.ee=o},{}],id:[function(t,n,e){function r(t){var n=typeof t;return!t||"object"!==n&&"function"!==n?-1:t===window?0:a(t,i,function(){return o++})}var o=1,i="nr@id",a=t("gos");n.exports=r},{}],loader:[function(t,n,e){function r(){if(!E++){var t=b.info=NREUM.info,n=p.getElementsByTagName("script")[0];if(setTimeout(u.abort,3e4),!(t&&t.licenseKey&&t.applicationID&&n))return u.abort();f(g,function(n,e){t[n]||(t[n]=e)}),c("mark",["onload",a()+b.offset],null,"api");var e=p.createElement("script");e.src="https://"+t.agent,n.parentNode.insertBefore(e,n)}}function o(){"complete"===p.readyState&&i()}function i(){c("mark",["domContent",a()+b.offset],null,"api")}function a(){return R.exists&&performance.now?Math.round(performance.now()):(s=Math.max((new Date).getTime(),s))-b.offset}var s=(new Date).getTime(),c=t("handle"),f=t(18),u=t("ee"),d=t(17),l=window,p=l.document,h="addEventListener",m="attachEvent",w=l.XMLHttpRequest,v=w&&w.prototype;NREUM.o={ST:setTimeout,SI:l.setImmediate,CT:clearTimeout,XHR:w,REQ:l.Request,EV:l.Event,PR:l.Promise,MO:l.MutationObserver};var y=""+location,g={beacon:"bam.nr-data.net",errorBeacon:"bam.nr-data.net",agent:"js-agent.newrelic.com/nr-1123.min.js"},x=w&&v&&v[h]&&!/CriOS/.test(navigator.userAgent),b=n.exports={offset:s,now:a,origin:y,features:{},xhrWrappable:x,userAgent:d};t(13),p[h]?(p[h]("DOMContentLoaded",i,!1),l[h]("load",r,!1)):(p[m]("onreadystatechange",o),l[m]("onload",r)),c("mark",["firstbyte",s],null,"api");var E=0,R=t(20)},{}]},{},["loader",2,11,4,3]);</script>

<script type="text/template" id="data_job_category">
    {"1":{"bcode":"1","name":"\uacbd\uc601\u00b7\uc0ac\ubb34","code":{"101":{"kcode":"7954","tcode":"9","mcode":"9","bcode":"1","code":"101","name":"\uae30\ud68d\u00b7\uc804\ub7b5\u00b7\uacbd\uc601","keyword":{"10101":{"kcode":"8604","tcode":"24","mcode":"1","bcode":"101","code":"10101","name":"\uae30\ud68d"},"10102":{"kcode":"8605","tcode":"24","mcode":"1","bcode":"101","code":"10102","name":"\uc804\ub7b5\uae30\ud68d"},"10103":{"kcode":"8606","tcode":"24","mcode":"1","bcode":"101","code":"10103","name":"\uc0ac\uc5c5\uae30\ud68d"},"10104":{"kcode":"8607","tcode":"24","mcode":"1","bcode":"101","code":"10104","name":"\uc0ac\uc5c5\uc81c\ud734"},"10105":{"kcode":"8608","tcode":"24","mcode":"1","bcode":"101","code":"10105","name":"\ud0c0\ub2f9\uc131\ubd84\uc11d"},"10107":{"kcode":"8609","tcode":"24","mcode":"1","bcode":"101","code":"10107","name":"MBA\ucd9c\uc2e0"},"10108":{"kcode":"8610","tcode":"24","mcode":"1","bcode":"101","code":"10108","name":"\uacbd\uc601\uae30\ud68d"},"10111":{"kcode":"8611","tcode":"24","mcode":"1","bcode":"101","code":"10111","name":"\uc870\uc9c1\uad00\ub9ac"},"10112":{"kcode":"8612","tcode":"24","mcode":"1","bcode":"101","code":"10112","name":"\ubcc0\ud654\uad00\ub9ac"},"10113":{"kcode":"8613","tcode":"24","mcode":"1","bcode":"101","code":"10113","name":"\uc11c\ube44\uc2a4\uae30\ud68d"},"10114":{"kcode":"22238","tcode":"24","mcode":"1","bcode":"101","code":"10114","name":"\uacbd\uc601\ud601\uc2e0\u00b7PI"},"10115":{"kcode":"22239","tcode":"24","mcode":"1","bcode":"101","code":"10115","name":"\ucd9c\ud310\uae30\ud68d"},"10116":{"kcode":"22240","tcode":"24","mcode":"1","bcode":"101","code":"10116","name":"\uc778\uc218\u00b7\ud569\ubcd1"},"10117":{"kcode":"22241","tcode":"24","mcode":"1","bcode":"101","code":"10117","name":"\uc2e0\uaddc\uc0ac\uc5c5\u00b7BD"},"10118":{"kcode":"8670","tcode":"24","mcode":"1","bcode":"101","code":"10118","name":"CEO"},"10119":{"kcode":"8674","tcode":"24","mcode":"1","bcode":"101","code":"10119","name":"COO"},"10120":{"kcode":"31530","tcode":"24","mcode":"1","bcode":"101","code":"10120","name":"\uae30\ud68d\uc870\uc0ac"}}},"102":{"kcode":"7960","tcode":"9","mcode":"9","bcode":"1","code":"102","name":"\ucd1d\ubb34\u00b7\ubc95\ubb34\u00b7\uc0ac\ubb34","keyword":{"10202":{"kcode":"8679","tcode":"24","mcode":"1","bcode":"102","code":"10202","name":"\uc790\uc0b0\uad00\ub9ac"},"10203":{"kcode":"8682","tcode":"24","mcode":"1","bcode":"102","code":"10203","name":"\ud2b9\ud5c8\uc5c5\ubb34"},"10204":{"kcode":"8677","tcode":"24","mcode":"1","bcode":"102","code":"10204","name":"\ubc95\ubb34"},"10207":{"kcode":"8676","tcode":"24","mcode":"1","bcode":"102","code":"10207","name":"\ucd1d\ubb34"},"10210":{"kcode":"8683","tcode":"24","mcode":"1","bcode":"102","code":"10210","name":"\uc0ac\ubb34"},"10213":{"kcode":"8681","tcode":"24","mcode":"1","bcode":"102","code":"10213","name":"\uc778\ud5c8\uac00\uc5c5\ubb34"},"10214":{"kcode":"8680","tcode":"24","mcode":"1","bcode":"102","code":"10214","name":"\uc800\uc791\uad8c\uad00\ub9ac"},"10217":{"kcode":"8685","tcode":"24","mcode":"1","bcode":"102","code":"10217","name":"\ubb38\uc11c\uad00\ub9ac"},"10218":{"kcode":"8686","tcode":"24","mcode":"1","bcode":"102","code":"10218","name":"\ube44\ud488\uad00\ub9ac"},"10219":{"kcode":"22242","tcode":"24","mcode":"1","bcode":"102","code":"10219","name":"\uc1a1\ubb34"},"10220":{"kcode":"22243","tcode":"24","mcode":"1","bcode":"102","code":"10220","name":"\uc758\uc57d\uc0ac\ubb34"},"10221":{"kcode":"22244","tcode":"24","mcode":"1","bcode":"102","code":"10221","name":"\ud56d\uacf5\uc0ac\ubb34"},"10222":{"kcode":"26575","tcode":"24","mcode":"1","bcode":"102","code":"10222","name":"\uacf5\ubb34"},"10223":{"kcode":"31537","tcode":"24","mcode":"1","bcode":"102","code":"10223","name":"\ubb38\uc11c\uc218\ubc1c"}}},"103":{"kcode":"7957","tcode":"9","mcode":"9","bcode":"1","code":"103","name":"\uacbd\ub9ac\u00b7\ucd9c\ub0a9\u00b7\uacb0\uc0b0","keyword":{"10302":{"kcode":"8640","tcode":"24","mcode":"1","bcode":"103","code":"10302","name":"\uacbd\ub9ac"},"10308":{"kcode":"8641","tcode":"24","mcode":"1","bcode":"103","code":"10308","name":"\ub354\uc874"},"10309":{"kcode":"8642","tcode":"24","mcode":"1","bcode":"103","code":"10309","name":"\uacb0\uc0b0\u00b7\uc815\uc0b0"},"10310":{"kcode":"8643","tcode":"24","mcode":"1","bcode":"103","code":"10310","name":"\uae09\uc5ec\uad00\ub9ac"},"10316":{"kcode":"8644","tcode":"24","mcode":"1","bcode":"103","code":"10316","name":"4\ub300\ubcf4\ud5d8"},"10318":{"kcode":"8645","tcode":"24","mcode":"1","bcode":"103","code":"10318","name":"\uae30\uc7a5\u00b7\uc7a5\ubd80\uc815\ub9ac"},"10319":{"kcode":"8646","tcode":"24","mcode":"1","bcode":"103","code":"10319","name":"\ucd9c\ub0a9"},"10320":{"kcode":"8647","tcode":"24","mcode":"1","bcode":"103","code":"10320","name":"\ubd80\uac00\uc138\uc2e0\uace0"},"10322":{"kcode":"8648","tcode":"24","mcode":"1","bcode":"103","code":"10322","name":"\uc804\ud45c\uc785\ub825"},"10323":{"kcode":"8649","tcode":"24","mcode":"1","bcode":"103","code":"10323","name":"\ud310\ub9e4\uad00\ub9ac"}}},"104":{"kcode":"7956","tcode":"9","mcode":"9","bcode":"1","code":"104","name":"\ud64d\ubcf4\u00b7PR\u00b7\uc0ac\ubcf4","keyword":{"10401":{"kcode":"8628","tcode":"24","mcode":"1","bcode":"104","code":"10401","name":"\ud64d\ubcf4"},"10402":{"kcode":"8630","tcode":"24","mcode":"1","bcode":"104","code":"10402","name":"\uc5b8\ub860\ud64d\ubcf4"},"10407":{"kcode":"8629","tcode":"24","mcode":"1","bcode":"104","code":"10407","name":"\ud64d\ubcf4\uae30\ud68d"},"10409":{"kcode":"8635","tcode":"24","mcode":"1","bcode":"104","code":"10409","name":"\uc0ac\ubcf4\u00b7\uc6f9\uc9c4"},"10411":{"kcode":"8634","tcode":"24","mcode":"1","bcode":"104","code":"10411","name":"PR"},"10412":{"kcode":"8631","tcode":"24","mcode":"1","bcode":"104","code":"10412","name":"\uae30\uc5c5\ud64d\ubcf4"},"10413":{"kcode":"31538","tcode":"24","mcode":"1","bcode":"104","code":"10413","name":"\ube0c\ub79c\ub4dc"},"10414":{"kcode":"31539","tcode":"24","mcode":"1","bcode":"104","code":"10414","name":"\uad11\uace0\uad00\ub9ac"},"10415":{"kcode":"31540","tcode":"24","mcode":"1","bcode":"104","code":"10415","name":"\uc774\ubca4\ud2b8"}}},"107":{"kcode":"7961","tcode":"9","mcode":"9","bcode":"1","code":"107","name":"\ube44\uc11c\u00b7\uc548\ub0b4\u00b7\uc218\ud589\uc6d0","keyword":{"10701":{"kcode":"8689","tcode":"24","mcode":"1","bcode":"107","code":"10701","name":"\uc784\uc6d0\ube44\uc11c"},"10702":{"kcode":"8687","tcode":"24","mcode":"1","bcode":"107","code":"10702","name":"\ube44\uc11c"},"10704":{"kcode":"8692","tcode":"24","mcode":"1","bcode":"107","code":"10704","name":"\uc548\ub0b4"},"10705":{"kcode":"8688","tcode":"24","mcode":"1","bcode":"107","code":"10705","name":"\uc218\ud589\ube44\uc11c"},"10708":{"kcode":"8690","tcode":"24","mcode":"1","bcode":"107","code":"10708","name":"\uc804\ubb38\ube44\uc11c"},"10709":{"kcode":"8691","tcode":"24","mcode":"1","bcode":"107","code":"10709","name":"\ube44\uc11c\uc790\uaca9\uc99d"}}},"108":{"kcode":"7963","tcode":"9","mcode":"9","bcode":"1","code":"108","name":"\uc0ac\ubb34\ubcf4\uc870\u00b7\ubb38\uc11c\uc791\uc131","keyword":{"10802":{"kcode":"8709","tcode":"24","mcode":"1","bcode":"108","code":"10802","name":"Excel\u00b7\ub3c4\ud45c"},"10803":{"kcode":"8710","tcode":"24","mcode":"1","bcode":"108","code":"10803","name":"PowerPoint"},"10804":{"kcode":"8707","tcode":"24","mcode":"1","bcode":"108","code":"10804","name":"OA"},"10805":{"kcode":"8714","tcode":"24","mcode":"1","bcode":"108","code":"10805","name":"\uc804\uc0b0\uc785\ub825\u00b7\ud3b8\uc9d1"},"10807":{"kcode":"8708","tcode":"24","mcode":"1","bcode":"108","code":"10807","name":"\uc6cc\ub4dc\u00b7\ubb38\uc11c\uc791\uc131"},"10809":{"kcode":"8711","tcode":"24","mcode":"1","bcode":"108","code":"10809","name":"\uc815\ubcf4\ucc98\ub9ac\uae30\uc0ac"},"10812":{"kcode":"8706","tcode":"24","mcode":"1","bcode":"108","code":"10812","name":"\uc0ac\ubb34\ubcf4\uc870"},"10814":{"kcode":"8716","tcode":"24","mcode":"1","bcode":"108","code":"10814","name":"\ud648\ud398\uc774\uc9c0\uad00\ub9ac"},"10815":{"kcode":"8717","tcode":"24","mcode":"1","bcode":"108","code":"10815","name":"\ub9ac\uc11c\uce58\u00b7\ubaa8\ub2c8\ud130\ub9c1"},"10817":{"kcode":"22258","tcode":"24","mcode":"1","bcode":"108","code":"10817","name":"\uc804\ud654\uc751\ub300"},"10818":{"kcode":"22259","tcode":"24","mcode":"1","bcode":"108","code":"10818","name":"\uc2e4\ud5d8\ubcf4\uc870"},"10819":{"kcode":"22260","tcode":"24","mcode":"1","bcode":"108","code":"10819","name":"\uc790\ub8cc\uc870\uc0ac"},"10820":{"kcode":"22261","tcode":"24","mcode":"1","bcode":"108","code":"10820","name":"\uac8c\uc2dc\ud310\uad00\ub9ac"},"10821":{"kcode":"22262","tcode":"24","mcode":"1","bcode":"108","code":"10821","name":"\ucee8\ud150\uce20\uad00\ub9ac"}}},"113":{"kcode":"7962","tcode":"9","mcode":"9","bcode":"1","code":"113","name":"\uc778\uc0ac\u00b7\uad50\uc721\u00b7\ub178\ubb34","keyword":{"11301":{"kcode":"8694","tcode":"24","mcode":"1","bcode":"113","code":"11301","name":"\uc778\uc0ac"},"11303":{"kcode":"8703","tcode":"24","mcode":"1","bcode":"113","code":"11303","name":"\uad50\uc721\u00b7\uc778\uc7ac\uac1c\ubc1c"},"11305":{"kcode":"8701","tcode":"24","mcode":"1","bcode":"113","code":"11305","name":"\uc784\uae08\ud611\uc0c1\u00b7\uad00\ub9ac"},"11310":{"kcode":"8698","tcode":"24","mcode":"1","bcode":"113","code":"11310","name":"MBO"},"11311":{"kcode":"8697","tcode":"24","mcode":"1","bcode":"113","code":"11311","name":"\uc131\uacfc\uad00\ub9ac"},"11312":{"kcode":"8695","tcode":"24","mcode":"1","bcode":"113","code":"11312","name":"HRD\u00b7HRM"},"11313":{"kcode":"8699","tcode":"24","mcode":"1","bcode":"113","code":"11313","name":"\ub178\ubb34\u00b7\ub178\uc0ac\uad00\ub9ac"},"11316":{"kcode":"8702","tcode":"24","mcode":"1","bcode":"113","code":"11316","name":"\ubcf5\ub9ac\ud6c4\uc0dd"},"11317":{"kcode":"22247","tcode":"24","mcode":"1","bcode":"113","code":"11317","name":"\uc778\uc0ac\uae30\ud68d"},"11318":{"kcode":"22248","tcode":"24","mcode":"1","bcode":"113","code":"11318","name":"PHR\u00b7\uad6d\uc81c\uc778\uc0ac"},"11319":{"kcode":"22249","tcode":"24","mcode":"1","bcode":"113","code":"11319","name":"\ucc44\uc6a9\u00b7\uba74\uc811"},"11320":{"kcode":"22250","tcode":"24","mcode":"1","bcode":"113","code":"11320","name":"\uc778\uc0ac\ud3c9\uac00"},"11321":{"kcode":"22251","tcode":"24","mcode":"1","bcode":"113","code":"11321","name":"\uc9c1\ubb34\ubd84\uc11d"},"11322":{"kcode":"22252","tcode":"24","mcode":"1","bcode":"113","code":"11322","name":"\ubcf4\uc0c1\u00b7\uc2b9\uc9c4"}}},"114":{"kcode":"7958","tcode":"9","mcode":"9","bcode":"1","code":"114","name":"\ud68c\uacc4\u00b7\uc7ac\ubb34\u00b7\uc138\ubb34\u00b7IR","keyword":{"11402":{"kcode":"8651","tcode":"24","mcode":"1","bcode":"114","code":"11402","name":"\uc7ac\ubb34"},"11403":{"kcode":"8652","tcode":"24","mcode":"1","bcode":"114","code":"11403","name":"\uc138\ubb34"},"11404":{"kcode":"8653","tcode":"24","mcode":"1","bcode":"114","code":"11404","name":"\uc790\uae08\uc6b4\uc6a9\u00b7\uc870\ub2ec"},"11407":{"kcode":"8656","tcode":"24","mcode":"1","bcode":"114","code":"11407","name":"\uc8fc\uc2ddIR\u00b7\uacf5\uc2dc"},"11408":{"kcode":"8657","tcode":"24","mcode":"1","bcode":"114","code":"11408","name":"\uc678\ud658\u00b7nego"},"11409":{"kcode":"8658","tcode":"24","mcode":"1","bcode":"114","code":"11409","name":"\ud1b5\uacc4\u00b7\ub370\uc774\ud130"},"11414":{"kcode":"8664","tcode":"24","mcode":"1","bcode":"114","code":"11414","name":"CPA\u00b7AICPA"},"11416":{"kcode":"8654","tcode":"24","mcode":"1","bcode":"114","code":"11416","name":"\uc6d0\uac00\ud68c\uacc4"},"11417":{"kcode":"8655","tcode":"24","mcode":"1","bcode":"114","code":"11417","name":"\uacbd\uc601\uc9c0\uc6d0"},"11418":{"kcode":"8650","tcode":"24","mcode":"1","bcode":"114","code":"11418","name":"\ud68c\uacc4"},"11419":{"kcode":"8659","tcode":"24","mcode":"1","bcode":"114","code":"11419","name":"\ub0b4\ubd80\uac10\uc0ac\u00b7\ud1b5\uc81c"},"11420":{"kcode":"8666","tcode":"24","mcode":"1","bcode":"114","code":"11420","name":"\uc804\uc0b0\ud68c\uacc4"},"11421":{"kcode":"8667","tcode":"24","mcode":"1","bcode":"114","code":"11421","name":"\uad00\ub9ac\ud68c\uacc4"},"11423":{"kcode":"22245","tcode":"24","mcode":"1","bcode":"114","code":"11423","name":"ERP\uc6b4\uc6a9"},"11424":{"kcode":"22246","tcode":"24","mcode":"1","bcode":"114","code":"11424","name":"\uc608\uc0b0\uad00\ub9ac"},"11425":{"kcode":"8673","tcode":"24","mcode":"1","bcode":"114","code":"11425","name":"CFO"},"11426":{"kcode":"31525","tcode":"24","mcode":"1","bcode":"114","code":"11426","name":"\ud68c\uacc4\uac10\uc0ac"},"11427":{"kcode":"31526","tcode":"24","mcode":"1","bcode":"114","code":"11427","name":"SAP"},"11428":{"kcode":"31527","tcode":"24","mcode":"1","bcode":"114","code":"11428","name":"CFA"},"11429":{"kcode":"31528","tcode":"24","mcode":"1","bcode":"114","code":"11429","name":"\uc7ac\ubb34\ud68c\uacc4"},"11430":{"kcode":"31529","tcode":"24","mcode":"1","bcode":"114","code":"11430","name":"\uc138\ubb34\uc870\uc0ac"}}},"119":{"kcode":"7955","tcode":"9","mcode":"9","bcode":"1","code":"119","name":"\ub9c8\ucf00\ud305\u00b7\uad11\uace0\u00b7\ubd84\uc11d","keyword":{"11902":{"kcode":"8615","tcode":"24","mcode":"1","bcode":"119","code":"11902","name":"\ub9c8\ucf00\ud305\uc804\ub7b5\u00b7\uae30\ud68d"},"11905":{"kcode":"8625","tcode":"24","mcode":"1","bcode":"119","code":"11905","name":"\uc2dc\uc7a5\uc870\uc0ac\u00b7\ubd84\uc11d"},"11906":{"kcode":"8627","tcode":"24","mcode":"1","bcode":"119","code":"11906","name":"BM\u00b7\ube0c\ub79c\ub4dc\ub9e4\ub2c8\uc800"},"11907":{"kcode":"8622","tcode":"24","mcode":"1","bcode":"119","code":"11907","name":"\ud504\ub85c\ubaa8\uc158"},"11908":{"kcode":"8621","tcode":"24","mcode":"1","bcode":"119","code":"11908","name":"\uad11\uace0"},"11909":{"kcode":"8624","tcode":"24","mcode":"1","bcode":"119","code":"11909","name":"\ub77c\uc774\uc13c\uc2f1"},"11910":{"kcode":"8626","tcode":"24","mcode":"1","bcode":"119","code":"11910","name":"CRM"},"11911":{"kcode":"8617","tcode":"24","mcode":"1","bcode":"119","code":"11911","name":"\uc2a4\ud3ec\uce20\ub9c8\ucf00\ud305"},"11912":{"kcode":"8618","tcode":"24","mcode":"1","bcode":"119","code":"11912","name":"\uc628\ub77c\uc778\ub9c8\ucf00\ud305"},"11913":{"kcode":"8619","tcode":"24","mcode":"1","bcode":"119","code":"11913","name":"\ud574\uc678\ub9c8\ucf00\ud305"},"11914":{"kcode":"8620","tcode":"24","mcode":"1","bcode":"119","code":"11914","name":"\uc785\uc18c\ubb38\u00b7\ubc14\uc774\ub7f4"},"11915":{"kcode":"22253","tcode":"24","mcode":"1","bcode":"119","code":"11915","name":"\ube0c\ub79c\ub4dc\ub124\uc774\ubc0d"},"11916":{"kcode":"22254","tcode":"24","mcode":"1","bcode":"119","code":"11916","name":"\uc124\ubb38\u00b7\ub9ac\uc11c\uce58"},"11917":{"kcode":"22255","tcode":"24","mcode":"1","bcode":"119","code":"11917","name":"\uadf8\ub798\ud504\u00b7\ub3c4\ud45c"},"11918":{"kcode":"22256","tcode":"24","mcode":"1","bcode":"119","code":"11918","name":"\ubbf8\ub514\uc5b4\ud50c\ub798\ub2dd"},"11919":{"kcode":"22257","tcode":"24","mcode":"1","bcode":"119","code":"11919","name":"\ub9e4\uccb4\ubd84\uc11d \uad6c\ub9e4"},"11920":{"kcode":"8675","tcode":"24","mcode":"1","bcode":"119","code":"11920","name":"CMO"},"11921":{"kcode":"31531","tcode":"24","mcode":"1","bcode":"119","code":"11921","name":"\uad11\uace0\uae30\ud68d"},"11922":{"kcode":"31532","tcode":"24","mcode":"1","bcode":"119","code":"11922","name":"\uad6d\uc81c\ud68c\uc758"},"11923":{"kcode":"31533","tcode":"24","mcode":"1","bcode":"119","code":"11923","name":"\uc5c5\ubb34\uc81c\ud734"},"11924":{"kcode":"31534","tcode":"24","mcode":"1","bcode":"119","code":"11924","name":"\uc804\uc2dc"},"11925":{"kcode":"31535","tcode":"24","mcode":"1","bcode":"119","code":"11925","name":"\ud310\ucd09"},"11926":{"kcode":"39346","tcode":"24","mcode":"1","bcode":"119","code":"11926","name":"\ud0a4\uc6cc\ub4dc\uad11\uace0"}}},"120":{"kcode":"8010","tcode":"9","mcode":"9","bcode":"1","code":"120","name":"\uc804\uc2dc\u00b7\ucee8\ubca4\uc158\u00b7\uc138\ubbf8\ub098","keyword":{"12001":{"kcode":"9352","tcode":"24","mcode":"1","bcode":"120","code":"12001","name":"\ub9ac\uc149\uc158"},"12002":{"kcode":"9353","tcode":"24","mcode":"1","bcode":"120","code":"12002","name":"\ucee8\uc2dc\uc5b4\uc9c0"},"12003":{"kcode":"9354","tcode":"24","mcode":"1","bcode":"120","code":"12003","name":"\uc804\uc2dc\uae30\ud68d"},"12004":{"kcode":"9355","tcode":"24","mcode":"1","bcode":"120","code":"12004","name":"\ud68c\uc758 \ucee8\ubca4\uc158"},"12005":{"kcode":"9356","tcode":"24","mcode":"1","bcode":"120","code":"12005","name":"\uc138\ubbf8\ub098\u00b7\ud3ec\ub7fc"}}}}},"10":{"bcode":"10","name":"\uc720\ud1b5\u00b7\ubb34\uc5ed","code":{"1001":{"kcode":"8043","tcode":"9","mcode":"9","bcode":"10","code":"1001","name":"\ubb3c\ub958\u00b7\uc720\ud1b5\u00b7\uc6b4\uc1a1","keyword":{"100101":{"kcode":"9648","tcode":"24","mcode":"10","bcode":"1001","code":"100101","name":"\ubb3c\ub958"},"100102":{"kcode":"9649","tcode":"24","mcode":"10","bcode":"1001","code":"100102","name":"\uc720\ud1b5"},"100103":{"kcode":"9650","tcode":"24","mcode":"10","bcode":"1001","code":"100103","name":"\uc0c1\ud488\uc785\ucd9c\uace0"},"100104":{"kcode":"9651","tcode":"24","mcode":"10","bcode":"1001","code":"100104","name":"\ubb3c\ub958\uc13c\ud130"},"100105":{"kcode":"9654","tcode":"24","mcode":"10","bcode":"1001","code":"100105","name":"\ud574\uc6b4\u00b7\ud574\uc591"},"100106":{"kcode":"9655","tcode":"24","mcode":"10","bcode":"1001","code":"100106","name":"\ud56d\uacf5\uc6b4\uc1a1"},"100107":{"kcode":"9656","tcode":"24","mcode":"10","bcode":"1001","code":"100107","name":"\uae30\ud0c0\uc6b4\uc1a1"},"100108":{"kcode":"9657","tcode":"24","mcode":"10","bcode":"1001","code":"100108","name":"\ubc30\ucc28"},"100109":{"kcode":"9652","tcode":"24","mcode":"10","bcode":"1001","code":"100109","name":"\uad6d\uc81c\ubb3c\ub958"},"100111":{"kcode":"21781","tcode":"24","mcode":"10","bcode":"1001","code":"100111","name":"\uc721\ub85c\uc6b4\uc1a1"},"100112":{"kcode":"22856","tcode":"24","mcode":"10","bcode":"1001","code":"100112","name":"\uc6b4\ubc18\u00b7\ud558\uc5ed"},"100113":{"kcode":"22857","tcode":"24","mcode":"10","bcode":"1001","code":"100113","name":"\ud3ec\uc6cc\ub529"},"100114":{"kcode":"31567","tcode":"24","mcode":"10","bcode":"1001","code":"100114","name":"\ubcf4\uc138\uc6b4\uc1a1"},"100115":{"kcode":"31568","tcode":"24","mcode":"10","bcode":"1001","code":"100115","name":"\uc720\ud1b5\uad00\ub9ac"}}},"1002":{"kcode":"8044","tcode":"9","mcode":"9","bcode":"10","code":"1002","name":"\ud574\uc678\uc601\uc5c5\u00b7\ubb34\uc5ed\uc601\uc5c5","keyword":{"100202":{"kcode":"9658","tcode":"24","mcode":"10","bcode":"1002","code":"100202","name":"\ubb34\uc5ed\uc77c\ubc18"},"100208":{"kcode":"9662","tcode":"24","mcode":"10","bcode":"1002","code":"100208","name":"\uc218\ucd9c\uc785\uacc4\uc57d"},"100209":{"kcode":"9665","tcode":"24","mcode":"10","bcode":"1002","code":"100209","name":"\ubc14\uc774\uc5b4\uc0c1\ub2f4"},"100210":{"kcode":"9666","tcode":"24","mcode":"10","bcode":"1002","code":"100210","name":"\uc624\ub354\uad00\ub9ac"},"100211":{"kcode":"9667","tcode":"24","mcode":"10","bcode":"1002","code":"100211","name":"\ubc14\uc774\uc5b4\uad00\ub9ac"},"100212":{"kcode":"9668","tcode":"24","mcode":"10","bcode":"1002","code":"100212","name":"\ubc14\uc774\uc5b4\uac1c\ubc1c"},"100213":{"kcode":"9669","tcode":"24","mcode":"10","bcode":"1002","code":"100213","name":"\ud574\uc678\ub9c8\ucf00\ud305"},"100214":{"kcode":"9670","tcode":"24","mcode":"10","bcode":"1002","code":"100214","name":"\ud574\uc678\uc601\uc5c5"},"100220":{"kcode":"8744","tcode":"24","mcode":"10","bcode":"1002","code":"100220","name":"\uc601\uc5b4"},"100221":{"kcode":"8745","tcode":"24","mcode":"10","bcode":"1002","code":"100221","name":"\uc77c\ubcf8\uc5b4"},"100222":{"kcode":"8746","tcode":"24","mcode":"10","bcode":"1002","code":"100222","name":"\uc911\uad6d\uc5b4"},"100223":{"kcode":"8747","tcode":"24","mcode":"10","bcode":"1002","code":"100223","name":"\ub3c5\uc77c\uc5b4"},"100224":{"kcode":"8748","tcode":"24","mcode":"10","bcode":"1002","code":"100224","name":"\ud504\ub791\uc2a4\uc5b4"},"100225":{"kcode":"8749","tcode":"24","mcode":"10","bcode":"1002","code":"100225","name":"\ud3ec\ub974\ud22c\uac08\uc5b4"},"100226":{"kcode":"8750","tcode":"24","mcode":"10","bcode":"1002","code":"100226","name":"\uc2a4\ud398\uc778\uc5b4"},"100227":{"kcode":"8751","tcode":"24","mcode":"10","bcode":"1002","code":"100227","name":"\ub7ec\uc2dc\uc544\uc5b4"},"100228":{"kcode":"8752","tcode":"24","mcode":"10","bcode":"1002","code":"100228","name":"\ubca0\ud2b8\ub0a8\uc5b4"},"100229":{"kcode":"22858","tcode":"24","mcode":"10","bcode":"1002","code":"100229","name":"\ud574\uc678\uc9c0\uc0ac\u00b7Agent"},"100230":{"kcode":"31570","tcode":"24","mcode":"10","bcode":"1002","code":"100230","name":"\ubb34\uc5ed\uc0ac  "},"100231":{"kcode":"31571","tcode":"24","mcode":"10","bcode":"1002","code":"100231","name":"MD  "},"100232":{"kcode":"31572","tcode":"24","mcode":"10","bcode":"1002","code":"100232","name":"MR  "}}},"1003":{"kcode":"8045","tcode":"9","mcode":"9","bcode":"10","code":"1003","name":"\uad6c\ub9e4\u00b7\uc790\uc7ac\u00b7\uc7ac\uace0","keyword":{"100301":{"kcode":"9677","tcode":"24","mcode":"10","bcode":"1003","code":"100301","name":"\uad6c\ub9e4\uad00\ub9ac"},"100302":{"kcode":"9678","tcode":"24","mcode":"10","bcode":"1003","code":"100302","name":"\uc790\uc7ac\uad00\ub9ac"},"100303":{"kcode":"9679","tcode":"24","mcode":"10","bcode":"1003","code":"100303","name":"\uc7ac\uace0\uad00\ub9ac"},"100304":{"kcode":"9680","tcode":"24","mcode":"10","bcode":"1003","code":"100304","name":"\uc678\uc8fc\uad00\ub9ac"},"100309":{"kcode":"9681","tcode":"24","mcode":"10","bcode":"1003","code":"100309","name":"\uc790\uc7ac\uad6c\ub9e4"},"100310":{"kcode":"9682","tcode":"24","mcode":"10","bcode":"1003","code":"100310","name":"\uc678\uc790\uad6c\ub9e4"},"100312":{"kcode":"9676","tcode":"24","mcode":"10","bcode":"1003","code":"100312","name":"\uad6c\ub9e4\uae30\ud68d"},"100313":{"kcode":"9685","tcode":"24","mcode":"10","bcode":"1003","code":"100313","name":"MRO"},"100314":{"kcode":"9686","tcode":"24","mcode":"10","bcode":"1003","code":"100314","name":"SCM\u00b7SRM"},"100315":{"kcode":"9684","tcode":"24","mcode":"10","bcode":"1003","code":"100315","name":"\uac74\uc124\u00b7\uac74\ucd95\uc790\uc7ac"},"100316":{"kcode":"9687","tcode":"24","mcode":"10","bcode":"1003","code":"100316","name":"\uad6c\ub9e4\ub300\ud589\u00b7\uc18c\uc2f1"},"100317":{"kcode":"9688","tcode":"24","mcode":"10","bcode":"1003","code":"100317","name":"\ucc3d\uace0\uad00\ub9ac"}}},"1004":{"kcode":"8046","tcode":"9","mcode":"9","bcode":"10","code":"1004","name":"\ub0a9\ud488\u00b7\ubc30\uc1a1\u00b7\ud0dd\ubc30","keyword":{"100407":{"kcode":"9695","tcode":"24","mcode":"10","bcode":"1004","code":"100407","name":"\ud0dd\ubc30"},"100408":{"kcode":"9696","tcode":"24","mcode":"10","bcode":"1004","code":"100408","name":"\ud035\uc11c\ube44\uc2a4"},"100409":{"kcode":"9697","tcode":"24","mcode":"10","bcode":"1004","code":"100409","name":"\ud3ec\uc7a5\uc774\uc0ac"},"100410":{"kcode":"9698","tcode":"24","mcode":"10","bcode":"1004","code":"100410","name":"\ubc30\uc1a1\u00b7\uc6b4\uc1a1"},"100411":{"kcode":"9699","tcode":"24","mcode":"10","bcode":"1004","code":"100411","name":"\ub0a9\ud488"},"100413":{"kcode":"31566","tcode":"24","mcode":"10","bcode":"1004","code":"100413","name":"\uc2b9\uc6a9\uae30\uc0ac"}}},"1005":{"kcode":"8047","tcode":"9","mcode":"9","bcode":"10","code":"1005","name":"\uc0c1\ud488\uae30\ud68d\u00b7MD","keyword":{"100501":{"kcode":"9701","tcode":"24","mcode":"10","bcode":"1005","code":"100501","name":"MD\u00b7\uba38\ucc9c\ub2e4\uc774\uc800"},"100502":{"kcode":"9702","tcode":"24","mcode":"10","bcode":"1005","code":"100502","name":"\uc0c1\ud488\uae30\ud68d\u00b7\uac1c\ubc1c"},"100505":{"kcode":"22874","tcode":"24","mcode":"10","bcode":"1005","code":"100505","name":"\ub9ac\ud14c\uc77cMD"},"100506":{"kcode":"22875","tcode":"24","mcode":"10","bcode":"1005","code":"100506","name":"\ud328\uc158MD"},"100507":{"kcode":"22876","tcode":"24","mcode":"10","bcode":"1005","code":"100507","name":"\uc2dd\ud488MD"},"100508":{"kcode":"22877","tcode":"24","mcode":"10","bcode":"1005","code":"100508","name":"\uc720\ud1b5\uad00\ub9ac\uc0ac"},"100509":{"kcode":"22878","tcode":"24","mcode":"10","bcode":"1005","code":"100509","name":"VMD"},"100510":{"kcode":"26605","tcode":"24","mcode":"10","bcode":"1005","code":"100510","name":"\uac00\ub9f9\uc810\uad00\ub9ac(SV)"}}},"1006":{"kcode":"22853","tcode":"9","mcode":"9","bcode":"10","code":"1006","name":"\ubb34\uc5ed\uc0ac\ubb34\u00b7\uc218\ucd9c\uc785","keyword":{"100601":{"kcode":"22859","tcode":"24","mcode":"10","bcode":"1006","code":"100601","name":"\uc218\ucd9c\uc785\uc0ac\ubb34\u00b7nego"},"100602":{"kcode":"22860","tcode":"24","mcode":"10","bcode":"1006","code":"100602","name":"\ubb34\uc5ed\uc0ac\ubb34"},"100603":{"kcode":"22861","tcode":"24","mcode":"10","bcode":"1006","code":"100603","name":"\ubb34\uc5ed\uc601\uc5b4"},"100604":{"kcode":"22862","tcode":"24","mcode":"10","bcode":"1006","code":"100604","name":"\ubb34\uc5ed\uacbd\ub9ac\u00b7\ud68c\uacc4"},"100605":{"kcode":"22863","tcode":"24","mcode":"10","bcode":"1006","code":"100605","name":"\uc678\ud658\uad00\ub9ac"},"100606":{"kcode":"22864","tcode":"24","mcode":"10","bcode":"1006","code":"100606","name":"\ubc1c\uc8fc\u00b7\ucd9c\uace0\uad00\ub9ac"},"100609":{"kcode":"22867","tcode":"24","mcode":"10","bcode":"1006","code":"100609","name":"MR"},"100610":{"kcode":"22868","tcode":"24","mcode":"10","bcode":"1006","code":"100610","name":"\ubb34\uc5ed\uc911\uac1c\uc778"},"100611":{"kcode":"22869","tcode":"24","mcode":"10","bcode":"1006","code":"100611","name":"LC\u00b7\uc2e0\uc6a9\uc7a5"},"100612":{"kcode":"22870","tcode":"24","mcode":"10","bcode":"1006","code":"100612","name":"\uc120\uc801"},"100613":{"kcode":"22871","tcode":"24","mcode":"10","bcode":"1006","code":"100613","name":"\uad00\uc138\uc0ac"},"100614":{"kcode":"22872","tcode":"24","mcode":"10","bcode":"1006","code":"100614","name":"\uc138\uad00\u00b7\ud1b5\uad00"},"100615":{"kcode":"22873","tcode":"24","mcode":"10","bcode":"1006","code":"100615","name":"\ud1b5\uad00\ub300\ub9ac\uc778"}}},"1007":{"kcode":"22854","tcode":"9","mcode":"9","bcode":"10","code":"1007","name":"\uc6b4\uc804\u00b7\uae30\uc0ac","keyword":{"100701":{"kcode":"22879","tcode":"24","mcode":"10","bcode":"1007","code":"100701","name":"\uc6b4\uc804\uae30\uc0ac"},"100702":{"kcode":"22880","tcode":"24","mcode":"10","bcode":"1007","code":"100702","name":"\ubc84\uc2a4\uc6b4\uc804"},"100703":{"kcode":"22881","tcode":"24","mcode":"10","bcode":"1007","code":"100703","name":"\ud0dd\uc2dc\uc6b4\uc804"},"100704":{"kcode":"22882","tcode":"24","mcode":"10","bcode":"1007","code":"100704","name":"\uc218\ud589\uae30\uc0ac"},"100705":{"kcode":"22883","tcode":"24","mcode":"10","bcode":"1007","code":"100705","name":"\uc2b9\ud569\uae30\uc0ac"},"100706":{"kcode":"22884","tcode":"24","mcode":"10","bcode":"1007","code":"100706","name":"\ud559\uc6d0\ucc28\ub7c9"},"100707":{"kcode":"22885","tcode":"24","mcode":"10","bcode":"1007","code":"100707","name":"\ub300\ub9ac\uc6b4\uc804"},"100708":{"kcode":"22886","tcode":"24","mcode":"10","bcode":"1007","code":"100708","name":"\uad00\uad11\ubc84\uc2a4"}}},"1008":{"kcode":"22855","tcode":"9","mcode":"9","bcode":"10","code":"1008","name":"\uc911\uc7a5\ube44\u00b7\ud654\ubb3c","keyword":{"100802":{"kcode":"22888","tcode":"24","mcode":"10","bcode":"1008","code":"100802","name":"\ud0d1"},"100803":{"kcode":"22889","tcode":"24","mcode":"10","bcode":"1008","code":"100803","name":"\ub0c9\ub3d9\ud0d1"},"100804":{"kcode":"22890","tcode":"24","mcode":"10","bcode":"1008","code":"100804","name":"\uace0\uc0c1\ud0d1"},"100806":{"kcode":"22892","tcode":"24","mcode":"10","bcode":"1008","code":"100806","name":"\ub364\ud504"},"100807":{"kcode":"22893","tcode":"24","mcode":"10","bcode":"1008","code":"100807","name":"\uc719\ubc14\ub514"},"100808":{"kcode":"22894","tcode":"24","mcode":"10","bcode":"1008","code":"100808","name":"\uce74\uace0"},"100809":{"kcode":"22895","tcode":"24","mcode":"10","bcode":"1008","code":"100809","name":"\ud2b9\uc218\ucc28\ub7c9"},"100810":{"kcode":"22896","tcode":"24","mcode":"10","bcode":"1008","code":"100810","name":"1\ud1a4"},"100811":{"kcode":"22897","tcode":"24","mcode":"10","bcode":"1008","code":"100811","name":"2.5\ud1a4"},"100812":{"kcode":"22898","tcode":"24","mcode":"10","bcode":"1008","code":"100812","name":"3.5\ud1a4"},"100813":{"kcode":"22899","tcode":"24","mcode":"10","bcode":"1008","code":"100813","name":"4.5\ud1a4"},"100814":{"kcode":"22900","tcode":"24","mcode":"10","bcode":"1008","code":"100814","name":"5\ud1a4\uc774\uc0c1"},"100815":{"kcode":"22901","tcode":"24","mcode":"10","bcode":"1008","code":"100815","name":"\uc911\uc7a5\ube44\uc6b4\uc804"},"100816":{"kcode":"22902","tcode":"24","mcode":"10","bcode":"1008","code":"100816","name":"\uc9c0\uac8c\ucc28"},"100817":{"kcode":"22903","tcode":"24","mcode":"10","bcode":"1008","code":"100817","name":"\ub808\ubbf8\ucf58\u00b7\ub364\ud504 "},"100818":{"kcode":"22904","tcode":"24","mcode":"10","bcode":"1008","code":"100818","name":"\ud3ec\ud06c\ub808\uc778\u00b7\uad74\uc0ad\uae30"},"100819":{"kcode":"22905","tcode":"24","mcode":"10","bcode":"1008","code":"100819","name":"\uad74\ucc29\uae30"},"100820":{"kcode":"22906","tcode":"24","mcode":"10","bcode":"1008","code":"100820","name":"\ud2b8\ub808\uc77c\ub7ec"},"100821":{"kcode":"22907","tcode":"24","mcode":"10","bcode":"1008","code":"100821","name":"\ub85c\uc6b0\ub354"},"100822":{"kcode":"22908","tcode":"24","mcode":"10","bcode":"1008","code":"100822","name":"\uae30\uc911\uae30"},"100823":{"kcode":"22909","tcode":"24","mcode":"10","bcode":"1008","code":"100823","name":"\ubd88\ub3c4\uc800"},"100824":{"kcode":"22910","tcode":"24","mcode":"10","bcode":"1008","code":"100824","name":"\ud0f1\ud06c\ub85c\ub9ac"},"100825":{"kcode":"22911","tcode":"24","mcode":"10","bcode":"1008","code":"100825","name":"\uacac\uc778\ucc28"},"100826":{"kcode":"22912","tcode":"24","mcode":"10","bcode":"1008","code":"100826","name":"\uc720\uc870\ucc28\ub7c9"},"100827":{"kcode":"22913","tcode":"24","mcode":"10","bcode":"1008","code":"100827","name":"\ud2b8\ub7ed\u00b7\ud654\ubb3c"}}}}},"2":{"bcode":"2","name":"\uc601\uc5c5\u00b7\uace0\uac1d\uc0c1\ub2f4","code":{"202":{"kcode":"7964","tcode":"9","mcode":"9","bcode":"2","code":"202","name":"\uc77c\ubc18\uc601\uc5c5","keyword":{"20202":{"kcode":"8720","tcode":"24","mcode":"2","bcode":"202","code":"20202","name":"\uc81c\uc57d\uc601\uc5c5"},"20203":{"kcode":"8721","tcode":"24","mcode":"2","bcode":"202","code":"20203","name":"\uc790\ub3d9\ucc28\uc601\uc5c5"},"20208":{"kcode":"8718","tcode":"24","mcode":"2","bcode":"202","code":"20208","name":"\uc77c\ubc18\uc601\uc5c5"},"20212":{"kcode":"8724","tcode":"24","mcode":"2","bcode":"202","code":"20212","name":"\ud654\uc7a5\ud488\uc601\uc5c5"},"20214":{"kcode":"8726","tcode":"24","mcode":"2","bcode":"202","code":"20214","name":"\ub0a9\ud488\uc601\uc5c5"},"20215":{"kcode":"8727","tcode":"24","mcode":"2","bcode":"202","code":"20215","name":"\uc911\uace0\ucc28\ub51c\ub7ec"},"20216":{"kcode":"8728","tcode":"24","mcode":"2","bcode":"202","code":"20216","name":"\uc8fc\ub958\uc601\uc5c5"},"20217":{"kcode":"22263","tcode":"24","mcode":"2","bcode":"202","code":"20217","name":"\uc2dd\ud488\u00b7\uc74c\ub8cc\uc601\uc5c5"},"20218":{"kcode":"22264","tcode":"24","mcode":"2","bcode":"202","code":"20218","name":"\ubd80\ub3d9\uc0b0\uc601\uc5c5"},"20219":{"kcode":"22265","tcode":"24","mcode":"2","bcode":"202","code":"20219","name":"\uac00\ub9f9\uc810\uc601\uc5c5"},"20220":{"kcode":"22266","tcode":"24","mcode":"2","bcode":"202","code":"20220","name":"\ud578\ub4dc\ud3f0\uc601\uc5c5"},"20221":{"kcode":"22267","tcode":"24","mcode":"2","bcode":"202","code":"20221","name":"\uc0c1\uc870\u00b7\uc7a5\ub840\uc601\uc5c5"},"20222":{"kcode":"33204","tcode":"24","mcode":"2","bcode":"202","code":"20222","name":"\ubc95\uc778\uc601\uc5c5"},"20223":{"kcode":"33205","tcode":"24","mcode":"2","bcode":"202","code":"20223","name":"\ud574\uc678\uc601\uc5c5"}}},"203":{"kcode":"7971","tcode":"9","mcode":"9","bcode":"2","code":"203","name":"\ud310\ub9e4\u00b7\ub9e4\uc7a5\uad00\ub9ac","keyword":{"20302":{"kcode":"8794","tcode":"24","mcode":"2","bcode":"203","code":"20302","name":"\ub9e4\uc7a5\uad00\ub9ac"},"20303":{"kcode":"8793","tcode":"24","mcode":"2","bcode":"203","code":"20303","name":"\ub9e4\uc7a5\ud310\ub9e4"},"20305":{"kcode":"8795","tcode":"24","mcode":"2","bcode":"203","code":"20305","name":"\uc9c0\uc810\uad00\ub9ac"},"20306":{"kcode":"8796","tcode":"24","mcode":"2","bcode":"203","code":"20306","name":"\ud310\ub9e4\uad00\ub9ac"},"20308":{"kcode":"8797","tcode":"24","mcode":"2","bcode":"203","code":"20308","name":"\uc758\ub958\u00b7\uad6c\ub450\u00b7\uc2e0\ubc1c"},"20309":{"kcode":"8798","tcode":"24","mcode":"2","bcode":"203","code":"20309","name":"\ud654\uc7a5\ud488\u00b7\ubdf0\ud2f0"},"20310":{"kcode":"8799","tcode":"24","mcode":"2","bcode":"203","code":"20310","name":"\ub3c4\uc11c\u00b7\uc11c\uc801\u00b7\uc11c\uc810"},"20311":{"kcode":"8800","tcode":"24","mcode":"2","bcode":"203","code":"20311","name":"\uac00\uc804\ud310\ub9e4"},"20312":{"kcode":"8801","tcode":"24","mcode":"2","bcode":"203","code":"20312","name":"\uc7a1\ud654\u00b7\uac00\ubc29\u00b7\uc9c0\uac11"},"20313":{"kcode":"8802","tcode":"24","mcode":"2","bcode":"203","code":"20313","name":"\uc678\uc2dd\u00b7\uc2dd\ud488"},"20314":{"kcode":"8803","tcode":"24","mcode":"2","bcode":"203","code":"20314","name":"\ucef4\ud4e8\ud130\ud310\ub9e4"},"20315":{"kcode":"8804","tcode":"24","mcode":"2","bcode":"203","code":"20315","name":"\ud734\ub300\ud3f0\u00b7MP3"},"20316":{"kcode":"8805","tcode":"24","mcode":"2","bcode":"203","code":"20316","name":"\uc0ac\ubb34\uc6a9\ud488"},"20319":{"kcode":"8808","tcode":"24","mcode":"2","bcode":"203","code":"20319","name":"\ud64d\ubcf4\ud310\ucd09"},"20320":{"kcode":"8792","tcode":"24","mcode":"2","bcode":"203","code":"20320","name":"\uc548\ub0b4\u00b7\ud504\ub7f0\ud2b8"},"20321":{"kcode":"8788","tcode":"24","mcode":"2","bcode":"203","code":"20321","name":"\uc0f5\ub9c8\uc2a4\ud130"},"20323":{"kcode":"8789","tcode":"24","mcode":"2","bcode":"203","code":"20323","name":"\uce90\uc154\u00b7\ud154\ub7ec"},"20324":{"kcode":"8807","tcode":"24","mcode":"2","bcode":"203","code":"20324","name":"\uc608\uc57d\u00b7\ubc1c\uad8c"},"20327":{"kcode":"8806","tcode":"24","mcode":"2","bcode":"203","code":"20327","name":"\uaf43\u00b7\ud50c\ub85c\ub9ac\uc2a4\ud2b8"},"20328":{"kcode":"22269","tcode":"24","mcode":"2","bcode":"203","code":"20328","name":"\uc2a4\ud3ec\uce20\u00b7\ub808\uc800\uc6a9\ud488"},"20329":{"kcode":"22270","tcode":"24","mcode":"2","bcode":"203","code":"20329","name":"\uac00\uad6c\u00b7\uce68\ub300\u00b7\uc18c\ud488"},"20330":{"kcode":"22271","tcode":"24","mcode":"2","bcode":"203","code":"20330","name":"\ub9e4\ucd9c\uad00\ub9ac"},"20331":{"kcode":"22272","tcode":"24","mcode":"2","bcode":"203","code":"20331","name":"\uc9c4\uc5f4\uad00\ub9ac"},"20332":{"kcode":"22273","tcode":"24","mcode":"2","bcode":"203","code":"20332","name":"\uc7ac\uace0\uad00\ub9ac"},"20333":{"kcode":"22274","tcode":"24","mcode":"2","bcode":"203","code":"20333","name":"\uc560\uacac\uc6a9\ud488"},"20334":{"kcode":"22275","tcode":"24","mcode":"2","bcode":"203","code":"20334","name":"\uc804\uc5ed\uc7a5\uad50"},"20335":{"kcode":"22276","tcode":"24","mcode":"2","bcode":"203","code":"20335","name":"\uc8fc\uc5bc\ub9ac\u00b7\uadc0\uae08\uc18d"},"20336":{"kcode":"26576","tcode":"24","mcode":"2","bcode":"203","code":"20336","name":"\ubc29\ubb38\ud310\ub9e4"}}},"205":{"kcode":"7968","tcode":"9","mcode":"9","bcode":"2","code":"205","name":"IT\u00b7\uc194\ub8e8\uc158\uc601\uc5c5","keyword":{"20501":{"kcode":"8763","tcode":"24","mcode":"2","bcode":"205","code":"20501","name":"\ud648\ud398\uc774\uc9c0\uc81c\uc791\uc601\uc5c5"},"20503":{"kcode":"8757","tcode":"24","mcode":"2","bcode":"205","code":"20503","name":"\uc2dc\uc2a4\ud15c\uc601\uc5c5"},"20504":{"kcode":"8758","tcode":"24","mcode":"2","bcode":"205","code":"20504","name":"\uc194\ub8e8\uc158\uc601\uc5c5"},"20505":{"kcode":"8760","tcode":"24","mcode":"2","bcode":"205","code":"20505","name":"\ub124\ud2b8\uc6cc\ud06c\uc601\uc5c5"},"20506":{"kcode":"8761","tcode":"24","mcode":"2","bcode":"205","code":"20506","name":"HW\u00b7SW \uc601\uc5c5"},"20508":{"kcode":"8759","tcode":"24","mcode":"2","bcode":"205","code":"20508","name":"SI\uc601\uc5c5"},"20509":{"kcode":"22277","tcode":"24","mcode":"2","bcode":"205","code":"20509","name":"\uc5b4\ud50c\ub9ac\ucf00\uc774\uc158\uc601\uc5c5"},"20510":{"kcode":"22278","tcode":"24","mcode":"2","bcode":"205","code":"20510","name":"\ubcf4\uc548\uc2dc\uc2a4\ud15c\uc601\uc5c5"},"20511":{"kcode":"22279","tcode":"24","mcode":"2","bcode":"205","code":"20511","name":"\uae30\uc220\uc601\uc5c5(IT)"}}},"206":{"kcode":"7970","tcode":"9","mcode":"9","bcode":"2","code":"206","name":"\uae08\uc735\u00b7\ubcf4\ud5d8\uc601\uc5c5","keyword":{"20601":{"kcode":"8787","tcode":"24","mcode":"2","bcode":"206","code":"20601","name":"\uae08\uc735\uc601\uc5c5"},"20604":{"kcode":"8776","tcode":"24","mcode":"2","bcode":"206","code":"20604","name":"\ud22c\uc790\uc0c1\ub2f4"},"20605":{"kcode":"8779","tcode":"24","mcode":"2","bcode":"206","code":"20605","name":"\uae08\uc735\uc790\uc0b0\uad00\ub9ac\uc0ac"},"20607":{"kcode":"8785","tcode":"24","mcode":"2","bcode":"206","code":"20607","name":"\ubc95\uc778\uace0\uac1d\uc601\uc5c5"},"20608":{"kcode":"8786","tcode":"24","mcode":"2","bcode":"206","code":"20608","name":"\uac1c\uc778\uace0\uac1d\uc601\uc5c5"},"20609":{"kcode":"8782","tcode":"24","mcode":"2","bcode":"206","code":"20609","name":"\ubc29\uce74\uc288\ub791\uc2a4"},"20610":{"kcode":"8783","tcode":"24","mcode":"2","bcode":"206","code":"20610","name":"\uc5ec\uc2e0\uc0c1\ub2f4"},"20612":{"kcode":"8780","tcode":"24","mcode":"2","bcode":"206","code":"20612","name":"\uc7ac\ubb34\uc124\uacc4"},"20613":{"kcode":"8784","tcode":"24","mcode":"2","bcode":"206","code":"20613","name":"PB"},"20615":{"kcode":"8775","tcode":"24","mcode":"2","bcode":"206","code":"20615","name":"\uce74\ub4dc\uc601\uc5c5"},"20617":{"kcode":"22284","tcode":"24","mcode":"2","bcode":"206","code":"20617","name":"\ub300\ucd9c\uc601\uc5c5"},"20618":{"kcode":"22285","tcode":"24","mcode":"2","bcode":"206","code":"20618","name":"\ubcf4\ud5d8\uc601\uc5c5"},"20619":{"kcode":"26577","tcode":"24","mcode":"2","bcode":"206","code":"20619","name":"\uae08\uc735\uc0ac\ubb34"},"20620":{"kcode":"26578","tcode":"24","mcode":"2","bcode":"206","code":"20620","name":"\ub2f4\ubcf4"},"20621":{"kcode":"26579","tcode":"24","mcode":"2","bcode":"206","code":"20621","name":"\uae08\uc735\uc0c1\ub2f4"},"20622":{"kcode":"31555","tcode":"24","mcode":"2","bcode":"206","code":"20622","name":"\uc7ac\ubb34\uc0c1\ub2f4"},"20623":{"kcode":"31556","tcode":"24","mcode":"2","bcode":"206","code":"20623","name":"\ud154\ub7ec"}}},"207":{"kcode":"7969","tcode":"9","mcode":"9","bcode":"2","code":"207","name":"\uad11\uace0\uc601\uc5c5","keyword":{"20701":{"kcode":"8764","tcode":"24","mcode":"2","bcode":"207","code":"20701","name":"\uad11\uace0\uc601\uc5c5"},"20702":{"kcode":"8765","tcode":"24","mcode":"2","bcode":"207","code":"20702","name":"\ub9e4\uccb4\uad11\uace0"},"20703":{"kcode":"8766","tcode":"24","mcode":"2","bcode":"207","code":"20703","name":"\uc628\ub77c\uc778\uad11\uace0"},"20704":{"kcode":"8770","tcode":"24","mcode":"2","bcode":"207","code":"20704","name":"\uc625\uc678\uad11\uace0"},"20705":{"kcode":"8767","tcode":"24","mcode":"2","bcode":"207","code":"20705","name":"\ud0a4\uc6cc\ub4dc\uad11\uace0"},"20706":{"kcode":"8771","tcode":"24","mcode":"2","bcode":"207","code":"20706","name":"\uc9c0\uc5ed\uad11\uace0"},"20707":{"kcode":"8772","tcode":"24","mcode":"2","bcode":"207","code":"20707","name":"\uc9c0\ud558\ucca0\uad11\uace0"},"20708":{"kcode":"8773","tcode":"24","mcode":"2","bcode":"207","code":"20708","name":"\ubc84\uc2a4\uad11\uace0"},"20710":{"kcode":"8769","tcode":"24","mcode":"2","bcode":"207","code":"20710","name":"DM\u00b7\ud0c0\uac9f\uba54\uc77c"}}},"208":{"kcode":"7967","tcode":"9","mcode":"9","bcode":"2","code":"208","name":"\uae30\uc220\uc601\uc5c5","keyword":{"20801":{"kcode":"8753","tcode":"24","mcode":"2","bcode":"208","code":"20801","name":"\uae30\uc220\uc601\uc5c5(\uc81c\uc870)"},"20802":{"kcode":"8754","tcode":"24","mcode":"2","bcode":"208","code":"20802","name":"\uae30\uc220\uc601\uc5c5(\uac74\uc124)"},"20803":{"kcode":"8755","tcode":"24","mcode":"2","bcode":"208","code":"20803","name":"\uae30\uc220\uc601\uc5c5(\uc720\ud1b5)"},"20804":{"kcode":"22280","tcode":"24","mcode":"2","bcode":"208","code":"20804","name":"\uc7a5\ube44\uc601\uc5c5"},"20805":{"kcode":"22281","tcode":"24","mcode":"2","bcode":"208","code":"20805","name":"\uae30\uc220\uc601\uc5c5(\uc77c\ubc18)"},"20806":{"kcode":"22282","tcode":"24","mcode":"2","bcode":"208","code":"20806","name":"\uc758\ub8cc\uae30\uae30\uc601\uc5c5"},"20807":{"kcode":"31557","tcode":"24","mcode":"2","bcode":"208","code":"20807","name":"\uae30\uc220\uc9c0\uc6d0"}}},"209":{"kcode":"7965","tcode":"9","mcode":"9","bcode":"2","code":"209","name":"\uc601\uc5c5\uae30\ud68d\u00b7\uad00\ub9ac\u00b7\uc9c0\uc6d0","keyword":{"20901":{"kcode":"8733","tcode":"24","mcode":"2","bcode":"209","code":"20901","name":"\uace0\uac1d\uad00\ub9ac"},"20902":{"kcode":"8730","tcode":"24","mcode":"2","bcode":"209","code":"20902","name":"\uc601\uc5c5\uad00\ub9ac"},"20903":{"kcode":"8731","tcode":"24","mcode":"2","bcode":"209","code":"20903","name":"\uac70\ub798\ucc98\uad00\ub9ac"},"20904":{"kcode":"8735","tcode":"24","mcode":"2","bcode":"209","code":"20904","name":"\uc678\uc8fc\uad00\ub9ac"},"20905":{"kcode":"8736","tcode":"24","mcode":"2","bcode":"209","code":"20905","name":"\ub0a9\ud488\uad00\ub9ac"},"20906":{"kcode":"8737","tcode":"24","mcode":"2","bcode":"209","code":"20906","name":"\uc601\uc5c5\uc9c0\uc6d0"},"20907":{"kcode":"8738","tcode":"24","mcode":"2","bcode":"209","code":"20907","name":"\ucc44\uad8c\uad00\ub9ac"},"20908":{"kcode":"8734","tcode":"24","mcode":"2","bcode":"209","code":"20908","name":"\ub300\ub9ac\uc810\u00b7\uc810\ud3ec\uac1c\ubc1c"},"20909":{"kcode":"8732","tcode":"24","mcode":"2","bcode":"209","code":"20909","name":"\uac70\ub798\uc120\uac1c\ubc1c"},"20910":{"kcode":"8729","tcode":"24","mcode":"2","bcode":"209","code":"20910","name":"\uc601\uc5c5\uae30\ud68d"},"20911":{"kcode":"8739","tcode":"24","mcode":"2","bcode":"209","code":"20911","name":"\ub9e4\ucd9c\ubd84\uc11d\u00b7\uad00\ub9ac"},"20912":{"kcode":"22268","tcode":"24","mcode":"2","bcode":"209","code":"20912","name":"\uac00\ub9f9\uc810\uad00\ub9ac"}}},"210":{"kcode":"7972","tcode":"9","mcode":"9","bcode":"2","code":"210","name":"TM\u00b7\uc544\uc6c3\ubc14\uc6b4\ub4dc","keyword":{"21001":{"kcode":"8809","tcode":"24","mcode":"2","bcode":"210","code":"21001","name":"\uc544\uc6c3\ubc14\uc6b4\ub4dc"},"21002":{"kcode":"8810","tcode":"24","mcode":"2","bcode":"210","code":"21002","name":"TM"},"21004":{"kcode":"8813","tcode":"24","mcode":"2","bcode":"210","code":"21004","name":"\uc778\ud130\ub137\u00b7\ud1b5\uc2e0"},"21005":{"kcode":"8816","tcode":"24","mcode":"2","bcode":"210","code":"21005","name":"\ud648\uc1fc\ud551\u00b7\uc1fc\ud551\ubab0"},"21007":{"kcode":"8824","tcode":"24","mcode":"2","bcode":"210","code":"21007","name":"\ud559\uc2b5\uc9c0\u00b7\ucd9c\ud310"},"21010":{"kcode":"8825","tcode":"24","mcode":"2","bcode":"210","code":"21010","name":"\ud559\uc6d0\u00b7\uc720\ud559\uc6d0"},"21011":{"kcode":"8826","tcode":"24","mcode":"2","bcode":"210","code":"21011","name":"\ud56d\uacf5\u00b7\uc5ec\ud589\u00b7\ud638\ud154"},"21012":{"kcode":"8812","tcode":"24","mcode":"2","bcode":"210","code":"21012","name":"\ucf5c\uc13c\ud130\ud310\ub9e4"},"21013":{"kcode":"8823","tcode":"24","mcode":"2","bcode":"210","code":"21013","name":"\ucc44\uad8c\ucd94\uc2ec"},"21015":{"kcode":"8811","tcode":"24","mcode":"2","bcode":"210","code":"21015","name":"\ud574\ud53c\ucf5c"},"21016":{"kcode":"8814","tcode":"24","mcode":"2","bcode":"210","code":"21016","name":"\ud0a4\uc6cc\ub4dc\uad11\uace0"},"21017":{"kcode":"8820","tcode":"24","mcode":"2","bcode":"210","code":"21017","name":"\uc99d\uad8c\u00b7\ubcf4\ud5d8\u00b7\uce74\ub4dc"},"21018":{"kcode":"8818","tcode":"24","mcode":"2","bcode":"210","code":"21018","name":"\ud0dd\ubc30\u00b7\uc6b4\uc1a1\u00b7\ubb3c\ub958"},"21019":{"kcode":"8819","tcode":"24","mcode":"2","bcode":"210","code":"21019","name":"\ubc31\ud654\uc810\u00b7\ub9c8\ud2b8"},"21020":{"kcode":"8815","tcode":"24","mcode":"2","bcode":"210","code":"21020","name":"\uc2e0\ubb38\u00b7\ubc29\uc1a1"},"21021":{"kcode":"8829","tcode":"24","mcode":"2","bcode":"210","code":"21021","name":"\ubd80\ub3d9\uc0b0"},"21022":{"kcode":"22286","tcode":"24","mcode":"2","bcode":"210","code":"21022","name":"\uc6e8\ub529\u00b7\uc7a5\ub840"}}},"211":{"kcode":"7973","tcode":"9","mcode":"9","bcode":"2","code":"211","name":"TM\u00b7\uc778\ubc14\uc6b4\ub4dc","keyword":{"21101":{"kcode":"8831","tcode":"24","mcode":"2","bcode":"211","code":"21101","name":"\uc778\ubc14\uc6b4\ub4dc"},"21103":{"kcode":"8837","tcode":"24","mcode":"2","bcode":"211","code":"21103","name":"\uc778\ud130\ub137\u00b7\ud1b5\uc2e0"},"21105":{"kcode":"8842","tcode":"24","mcode":"2","bcode":"211","code":"21105","name":"\uc99d\uad8c\u00b7\ubcf4\ud5d8\u00b7\uce74\ub4dc"},"21110":{"kcode":"8836","tcode":"24","mcode":"2","bcode":"211","code":"21110","name":"\ucf5c\uc13c\ud130\uc0c1\ub2f4"},"21114":{"kcode":"8840","tcode":"24","mcode":"2","bcode":"211","code":"21114","name":"\ubc31\ud654\uc810\u00b7\ub9c8\ud2b8"},"21116":{"kcode":"8841","tcode":"24","mcode":"2","bcode":"211","code":"21116","name":"\ud0dd\ubc30\u00b7\uc6b4\uc1a1\u00b7\ubb3c\ub958"},"21117":{"kcode":"8845","tcode":"24","mcode":"2","bcode":"211","code":"21117","name":"\ud559\uc2b5\uc9c0\u00b7\ucd9c\ud310"},"21118":{"kcode":"8846","tcode":"24","mcode":"2","bcode":"211","code":"21118","name":"\uc2e0\ubb38\u00b7\ubc29\uc1a1"},"21120":{"kcode":"8848","tcode":"24","mcode":"2","bcode":"211","code":"21120","name":"\ud56d\uacf5\u00b7\uc5ec\ud589\u00b7\ud638\ud154"},"21122":{"kcode":"8850","tcode":"24","mcode":"2","bcode":"211","code":"21122","name":"\ubd80\ub3d9\uc0b0"},"21123":{"kcode":"22342","tcode":"24","mcode":"2","bcode":"211","code":"21123","name":"\uc6e8\ub529\u00b7\uc7a5\ub840"},"21124":{"kcode":"22343","tcode":"24","mcode":"2","bcode":"211","code":"21124","name":"\ud310\ub9e4\u00b7\uc138\uc77c\uc988"},"21125":{"kcode":"22344","tcode":"24","mcode":"2","bcode":"211","code":"21125","name":"\uc804\ud654\uc8fc\ubb38"},"21126":{"kcode":"26580","tcode":"24","mcode":"2","bcode":"211","code":"21126","name":"\ud648\uc1fc\ud551\u00b7\uc1fc\ud551\ubab0"},"21127":{"kcode":"26581","tcode":"24","mcode":"2","bcode":"211","code":"21127","name":"\ud559\uc6d0\u00b7\uc720\ud559\uc6d0"},"21129":{"kcode":"31563","tcode":"24","mcode":"2","bcode":"211","code":"21129","name":"\uad11\uace0"}}},"212":{"kcode":"22341","tcode":"9","mcode":"9","bcode":"2","code":"212","name":"\uace0\uac1d\uc13c\ud130\u00b7CS","keyword":{"21201":{"kcode":"22287","tcode":"24","mcode":"2","bcode":"212","code":"21201","name":"CS"},"21202":{"kcode":"22288","tcode":"24","mcode":"2","bcode":"212","code":"21202","name":"\uace0\uac1d\uc0c1\ub2f4"},"21203":{"kcode":"22289","tcode":"24","mcode":"2","bcode":"212","code":"21203","name":"\uace0\uac1d\uc9c0\uc6d0"},"21204":{"kcode":"22290","tcode":"24","mcode":"2","bcode":"212","code":"21204","name":"\uace0\uac1d\uc751\ub300"},"21205":{"kcode":"22291","tcode":"24","mcode":"2","bcode":"212","code":"21205","name":"\ud68c\uc6d0\uad00\ub9ac"},"21209":{"kcode":"22338","tcode":"24","mcode":"2","bcode":"212","code":"21209","name":"\uc5ec\ub860\uc870\uc0ac\u00b7\ub9ac\uc11c\uce58"},"21210":{"kcode":"22339","tcode":"24","mcode":"2","bcode":"212","code":"21210","name":"\uc804\ud654\uad50\ud658"},"21212":{"kcode":"26582","tcode":"24","mcode":"2","bcode":"212","code":"21212","name":"\ud1b5\ud569\uc13c\ud130(\uba40\ud2f0\uc13c\ud130)"},"21213":{"kcode":"26583","tcode":"24","mcode":"2","bcode":"212","code":"21213","name":"\uace0\uac1d\ubd88\ub9cc\ucc98\ub9ac"},"21214":{"kcode":"26584","tcode":"24","mcode":"2","bcode":"212","code":"21214","name":"\uba54\uc77c\u00b7\uac8c\uc2dc\uae00 \uad00\ub9ac"},"21215":{"kcode":"26585","tcode":"24","mcode":"2","bcode":"212","code":"21215","name":"\uba54\uc2e0\uc800\u00b7\ubb38\uc790 \uc0c1\ub2f4"}}},"213":{"kcode":"26586","tcode":"9","mcode":"9","bcode":"2","code":"213","name":"QA\u00b7CS\uac15\uc0ac\u00b7\uc218\ud37c\ubc14\uc774\uc800","keyword":{"21301":{"kcode":"22292","tcode":"24","mcode":"2","bcode":"213","code":"21301","name":"\ucf5c\uc13c\ud130\uad00\ub9ac"},"21302":{"kcode":"22336","tcode":"24","mcode":"2","bcode":"213","code":"21302","name":"SV(\uc288\ud37c\ubc14\uc774\uc800)"},"21303":{"kcode":"22337","tcode":"24","mcode":"2","bcode":"213","code":"21303","name":"QAA\u00b7\ud1b5\ud654\ud488\uc9c8"},"21304":{"kcode":"22340","tcode":"24","mcode":"2","bcode":"213","code":"21304","name":"CS\uac15\uc0ac\u00b7\uad50\uc721"},"21305":{"kcode":"26587","tcode":"24","mcode":"2","bcode":"213","code":"21305","name":"\ucf5c\uc13c\ud130\ub9e4\ub2c8\uc800"},"21306":{"kcode":"26588","tcode":"24","mcode":"2","bcode":"213","code":"21306","name":"\ud30c\ud2b8\uc7a5\u00b7\uc6b4\uc601\ubcf4\uc870"},"21307":{"kcode":"26589","tcode":"24","mcode":"2","bcode":"213","code":"21307","name":"\ucf5c\ud1b5\uacc4\u00b7\ubd84\uc11d"},"21308":{"kcode":"26590","tcode":"24","mcode":"2","bcode":"213","code":"21308","name":"VOC\uad00\ub9ac\u00b7\ubd84\uc11d"}}}}},"3":{"bcode":"3","name":"\uc0dd\uc0b0\u00b7\uc81c\uc870","code":{"301":{"kcode":"7977","tcode":"9","mcode":"9","bcode":"3","code":"301","name":"\uae08\uc18d\u00b7\uae08\ud615","keyword":{"30101":{"kcode":"8905","tcode":"24","mcode":"3","bcode":"301","code":"30101","name":"\uae08\uc18d"},"30102":{"kcode":"8908","tcode":"24","mcode":"3","bcode":"301","code":"30102","name":"\ud310\uae08"},"30103":{"kcode":"8909","tcode":"24","mcode":"3","bcode":"301","code":"30103","name":"\uc8fc\uc870\u00b7\ub2e8\uc870"},"30104":{"kcode":"8910","tcode":"24","mcode":"3","bcode":"301","code":"30104","name":"\uae08\ud615"},"30105":{"kcode":"8911","tcode":"24","mcode":"3","bcode":"301","code":"30105","name":"\ubaa9\ud615"},"30106":{"kcode":"8906","tcode":"24","mcode":"3","bcode":"301","code":"30106","name":"\uae08\uc18d\uac00\uacf5"},"30107":{"kcode":"8907","tcode":"24","mcode":"3","bcode":"301","code":"30107","name":"\uae08\uc18d\uc7ac\ub8cc"},"30108":{"kcode":"8914","tcode":"24","mcode":"3","bcode":"301","code":"30108","name":"\uc808\uc0ad\u00b7\uc808\uace1(\ubca4\ub529)"},"30111":{"kcode":"8912","tcode":"24","mcode":"3","bcode":"301","code":"30111","name":"\ub3c4\uae08\u00b7\ub3c4\uc0c9"},"30113":{"kcode":"8913","tcode":"24","mcode":"3","bcode":"301","code":"30113","name":"\uc81c\ub828\u00b7\uc81c\uad00"},"30114":{"kcode":"8915","tcode":"24","mcode":"3","bcode":"301","code":"30114","name":"\uc6a9\uc811"},"30115":{"kcode":"8916","tcode":"24","mcode":"3","bcode":"301","code":"30115","name":"\uc5f0\ub9c8\u00b7\uc5f0\uc0ad"},"30116":{"kcode":"22345","tcode":"24","mcode":"3","bcode":"301","code":"30116","name":"\uc544\ud06c\ub9b4"},"30117":{"kcode":"22346","tcode":"24","mcode":"3","bcode":"301","code":"30117","name":"\ubcf4\uc11d\uc138\uacf5"},"30118":{"kcode":"22347","tcode":"24","mcode":"3","bcode":"301","code":"30118","name":"\uc640\uc774\uc5b4\ucef7\ud305"},"30119":{"kcode":"22348","tcode":"24","mcode":"3","bcode":"301","code":"30119","name":"\ub3c4\uc7a5\u00b7\ub374\ud2b8"},"30120":{"kcode":"22349","tcode":"24","mcode":"3","bcode":"301","code":"30120","name":"\uc0ac\ucd9c\u00b7\uc555\ucd9c"}}},"302":{"kcode":"7976","tcode":"9","mcode":"9","bcode":"3","code":"302","name":"\uae30\uacc4\u00b7\uae30\uacc4\uc124\ube44","keyword":{"30201":{"kcode":"8880","tcode":"24","mcode":"3","bcode":"302","code":"30201","name":"\uae30\uacc4"},"30202":{"kcode":"8881","tcode":"24","mcode":"3","bcode":"302","code":"30202","name":"\uae30\uacc4\uc124\ube44"},"30206":{"kcode":"8883","tcode":"24","mcode":"3","bcode":"302","code":"30206","name":"\uae30\uacc4\uc124\uacc4"},"30207":{"kcode":"8882","tcode":"24","mcode":"3","bcode":"302","code":"30207","name":"\uae30\uacc4\uc870\ub9bd"},"30211":{"kcode":"8886","tcode":"24","mcode":"3","bcode":"302","code":"30211","name":"\ud3ec\uc7a5\uae30\uacc4"},"30212":{"kcode":"8887","tcode":"24","mcode":"3","bcode":"302","code":"30212","name":"\uacf5\uc791\uae30\uacc4"},"30213":{"kcode":"8888","tcode":"24","mcode":"3","bcode":"302","code":"30213","name":"\uac74\uc124\uae30\uacc4"},"30214":{"kcode":"8889","tcode":"24","mcode":"3","bcode":"302","code":"30214","name":"\uc778\uc1c4\uae30\uacc4"},"30215":{"kcode":"8890","tcode":"24","mcode":"3","bcode":"302","code":"30215","name":"\ubc1c\uc804\uae30"},"30218":{"kcode":"8891","tcode":"24","mcode":"3","bcode":"302","code":"30218","name":"\ubaa9\uacf5\uae30\uacc4"},"30219":{"kcode":"8894","tcode":"24","mcode":"3","bcode":"302","code":"30219","name":"\ud504\ub808\uc2a4"},"30220":{"kcode":"8893","tcode":"24","mcode":"3","bcode":"302","code":"30220","name":"\uc720\uc555\uae30\u00b7\ubaa8\ud130"},"30223":{"kcode":"8895","tcode":"24","mcode":"3","bcode":"302","code":"30223","name":"\ubd84\uc1c4\u00b7\ud30c\uc1c4\uae30"},"30224":{"kcode":"8896","tcode":"24","mcode":"3","bcode":"302","code":"30224","name":"\ud38c\ud504\u00b7\ubc38\ube0c\u00b7\ub178\uc990"},"30225":{"kcode":"8902","tcode":"24","mcode":"3","bcode":"302","code":"30225","name":"\uba54\uce74\ud2b8\ub85c\ub2c9\uc2a4"},"30226":{"kcode":"8903","tcode":"24","mcode":"3","bcode":"302","code":"30226","name":"MEMS"},"30228":{"kcode":"8898","tcode":"24","mcode":"3","bcode":"302","code":"30228","name":"\uc120\ubc18"},"30229":{"kcode":"8899","tcode":"24","mcode":"3","bcode":"302","code":"30229","name":"\ubc00\ub9c1"},"30230":{"kcode":"8900","tcode":"24","mcode":"3","bcode":"302","code":"30230","name":"CNC\u00b7NCT"},"30231":{"kcode":"8904","tcode":"24","mcode":"3","bcode":"302","code":"30231","name":"\uc790\ub3d9\ud654\uc124\ube44"},"30232":{"kcode":"22353","tcode":"24","mcode":"3","bcode":"302","code":"30232","name":"MCT"},"30233":{"kcode":"22354","tcode":"24","mcode":"3","bcode":"302","code":"30233","name":"\uac10\uc18d\uae30"},"30234":{"kcode":"22355","tcode":"24","mcode":"3","bcode":"302","code":"30234","name":"\uc5f4\uad50\ud658\uae30"},"30235":{"kcode":"22356","tcode":"24","mcode":"3","bcode":"302","code":"30235","name":"\uc555\ub825\uc6a9\uae30"},"30236":{"kcode":"22357","tcode":"24","mcode":"3","bcode":"302","code":"30236","name":"\uc804\ub3d9\uacf5\uad6c"}}},"303":{"kcode":"7981","tcode":"9","mcode":"9","bcode":"3","code":"303","name":"\ud654\ud559\u00b7\uc5d0\ub108\uc9c0","keyword":{"30302":{"kcode":"8962","tcode":"24","mcode":"3","bcode":"303","code":"30302","name":"\ud654\ud559"},"30303":{"kcode":"8963","tcode":"24","mcode":"3","bcode":"303","code":"30303","name":"\ud654\uacf5"},"30304":{"kcode":"8966","tcode":"24","mcode":"3","bcode":"303","code":"30304","name":"\uace0\ubd84\uc790"},"30305":{"kcode":"8967","tcode":"24","mcode":"3","bcode":"303","code":"30305","name":"\ud50c\ub77c\uc2a4\ud2f1\u00b7PVC"},"30307":{"kcode":"8968","tcode":"24","mcode":"3","bcode":"303","code":"30307","name":"\ud3f4\ub9ac\uba38\u00b7\ube44\ub2d0"},"30309":{"kcode":"8964","tcode":"24","mcode":"3","bcode":"303","code":"30309","name":"\uc11d\uc720\u00b7\uc815\uc720"},"30310":{"kcode":"8965","tcode":"24","mcode":"3","bcode":"303","code":"30310","name":"\uc11d\uc720\ud654\ud559"},"30311":{"kcode":"8972","tcode":"24","mcode":"3","bcode":"303","code":"30311","name":"\uc6d0\uc790\ub825\u00b7\uc5d0\ub108\uc9c0"},"30316":{"kcode":"8969","tcode":"24","mcode":"3","bcode":"303","code":"30316","name":"\ub3c4\ub8cc\u00b7\ud398\uc778\ud2b8"},"30317":{"kcode":"8970","tcode":"24","mcode":"3","bcode":"303","code":"30317","name":"\uc720\uae30\ud569\uc131"},"30318":{"kcode":"8971","tcode":"24","mcode":"3","bcode":"303","code":"30318","name":"\uc789\ud06c"},"30319":{"kcode":"22358","tcode":"24","mcode":"3","bcode":"303","code":"30319","name":"\uac00\uc2a4"},"30320":{"kcode":"22359","tcode":"24","mcode":"3","bcode":"303","code":"30320","name":"\uace0\ubb34"},"30321":{"kcode":"22360","tcode":"24","mcode":"3","bcode":"303","code":"30321","name":"\ud654\uc7a5\ud488"}}},"304":{"kcode":"7982","tcode":"9","mcode":"9","bcode":"3","code":"304","name":"\uc12c\uc720\u00b7\uc758\ub958\u00b7\ud328\uc158","keyword":{"30401":{"kcode":"8977","tcode":"24","mcode":"3","bcode":"304","code":"30401","name":"\uc12c\uc720\u00b7\uc6d0\ub2e8"},"30402":{"kcode":"8978","tcode":"24","mcode":"3","bcode":"304","code":"30402","name":"\uc2e0\ubc1c\u00b7\uad6c\ub450"},"30404":{"kcode":"8979","tcode":"24","mcode":"3","bcode":"304","code":"30404","name":"\uc758\ub958"},"30407":{"kcode":"8980","tcode":"24","mcode":"3","bcode":"304","code":"30407","name":"\ud328\uc158"},"30416":{"kcode":"8981","tcode":"24","mcode":"3","bcode":"304","code":"30416","name":"\uc7a1\ud654"},"30417":{"kcode":"8982","tcode":"24","mcode":"3","bcode":"304","code":"30417","name":"\uc8fc\uc5bc\ub9ac\u00b7\uc561\uc138\uc11c\ub9ac"},"30418":{"kcode":"22361","tcode":"24","mcode":"3","bcode":"304","code":"30418","name":"\ubc29\uc801\u00b7\ubc29\uc0ac"},"30419":{"kcode":"22362","tcode":"24","mcode":"3","bcode":"304","code":"30419","name":"\uc9c1\uc218\u00b7\uc81c\uc9c1\uc6d0"},"30420":{"kcode":"22363","tcode":"24","mcode":"3","bcode":"304","code":"30420","name":"\ud3b8\uc9c1\ubb3c\u00b7\ub2c8\ud2b8"},"30421":{"kcode":"22364","tcode":"24","mcode":"3","bcode":"304","code":"30421","name":"\ud328\ud134\uc0ac"},"30422":{"kcode":"22365","tcode":"24","mcode":"3","bcode":"304","code":"30422","name":"\uc7ac\ub2e8\u00b7\uc218\uc120\u00b7\ubbf8\uc2f1"},"30423":{"kcode":"22366","tcode":"24","mcode":"3","bcode":"304","code":"30423","name":"\uc9c1\ubb3c\u00b7\uc6b0\ube10\u00b7\ub370\ub2d8"},"30424":{"kcode":"22367","tcode":"24","mcode":"3","bcode":"304","code":"30424","name":"\ud45c\ubc31\u00b7\uc5fc\uc0c9"},"30425":{"kcode":"22368","tcode":"24","mcode":"3","bcode":"304","code":"30425","name":"\uc12c\uc720\ub4f1\uae09\u00b7\uc6d0\ub2e8\uac80\uc0ac"}}},"308":{"kcode":"7979","tcode":"9","mcode":"9","bcode":"3","code":"308","name":"\uc804\uae30\u00b7\uc804\uc790\u00b7\uc81c\uc5b4","keyword":{"30801":{"kcode":"8920","tcode":"24","mcode":"3","bcode":"308","code":"30801","name":"\uc804\uae30"},"30803":{"kcode":"8922","tcode":"24","mcode":"3","bcode":"308","code":"30803","name":"\ud1b5\uc2e0"},"30804":{"kcode":"8923","tcode":"24","mcode":"3","bcode":"308","code":"30804","name":"\ubc30\uc120"},"30805":{"kcode":"8924","tcode":"24","mcode":"3","bcode":"308","code":"30805","name":"\ud48d\ub825\u00b7\uc218\ub825\u00b7\ud0dc\uc591\u00b7\uc5f4"},"30807":{"kcode":"8926","tcode":"24","mcode":"3","bcode":"308","code":"30807","name":"\uc804\uae30\uc124\ube44"},"30808":{"kcode":"8927","tcode":"24","mcode":"3","bcode":"308","code":"30808","name":"\uc804\uae30\uc124\uacc4"},"30809":{"kcode":"8928","tcode":"24","mcode":"3","bcode":"308","code":"30809","name":"\uc804\uae30\uae30\uc220"},"30810":{"kcode":"8929","tcode":"24","mcode":"3","bcode":"308","code":"30810","name":"\uc804\uae30\uacf5\uc0ac"},"30811":{"kcode":"8930","tcode":"24","mcode":"3","bcode":"308","code":"30811","name":"\uc804\uae30\uae30\uc0ac"},"30812":{"kcode":"8931","tcode":"24","mcode":"3","bcode":"308","code":"30812","name":"\uc790\ub3d9\uc81c\uc5b4"},"30813":{"kcode":"8932","tcode":"24","mcode":"3","bcode":"308","code":"30813","name":"PLC"},"30814":{"kcode":"8933","tcode":"24","mcode":"3","bcode":"308","code":"30814","name":"\uc804\uc790"},"30815":{"kcode":"8934","tcode":"24","mcode":"3","bcode":"308","code":"30815","name":"\uc804\uc790\uacc4\uc0b0"},"30816":{"kcode":"8935","tcode":"24","mcode":"3","bcode":"308","code":"30816","name":"\uc804\uae30\u00b7\uc804\uc790\ud68c\ub85c"},"30817":{"kcode":"8936","tcode":"24","mcode":"3","bcode":"308","code":"30817","name":"RF"},"30820":{"kcode":"8938","tcode":"24","mcode":"3","bcode":"308","code":"30820","name":"Hardware"},"30821":{"kcode":"8939","tcode":"24","mcode":"3","bcode":"308","code":"30821","name":"Firmware"},"30824":{"kcode":"8942","tcode":"24","mcode":"3","bcode":"308","code":"30824","name":"Micom"},"30828":{"kcode":"8944","tcode":"24","mcode":"3","bcode":"308","code":"30828","name":"SMPS"},"30829":{"kcode":"8945","tcode":"24","mcode":"3","bcode":"308","code":"30829","name":"\uc804\uc7a5"},"30830":{"kcode":"8946","tcode":"24","mcode":"3","bcode":"308","code":"30830","name":"HMI\u00b7MMI"},"30831":{"kcode":"22377","tcode":"24","mcode":"3","bcode":"308","code":"30831","name":"\ub124\ube44\uac8c\uc774\uc158"},"30832":{"kcode":"22378","tcode":"24","mcode":"3","bcode":"308","code":"30832","name":"\ud544\ud130\u00b7\ud29c\ub2dd"},"30833":{"kcode":"22379","tcode":"24","mcode":"3","bcode":"308","code":"30833","name":"\uc14b\ud1b1\ubc15\uc2a4"},"30834":{"kcode":"26591","tcode":"24","mcode":"3","bcode":"308","code":"30834","name":"PCB"},"30835":{"kcode":"26592","tcode":"24","mcode":"3","bcode":"308","code":"30835","name":"\ud488\uc9c8\uc5d4\uc9c0\ub2c8\uc5b4"},"30836":{"kcode":"26593","tcode":"24","mcode":"3","bcode":"308","code":"30836","name":"\uacf5\uc815\uc5d4\uc9c0\ub2c8\uc5b4"},"30837":{"kcode":"26594","tcode":"24","mcode":"3","bcode":"308","code":"30837","name":"\ud14c\uc2a4\ud2b8\uc5d4\uc9c0\ub2c8\uc5b4"},"30838":{"kcode":"26595","tcode":"24","mcode":"3","bcode":"308","code":"30838","name":"\uc124\uacc4\uc5d4\uc9c0\ub2c8\uc5b4"},"30839":{"kcode":"31544","tcode":"24","mcode":"3","bcode":"308","code":"30839","name":"\ub9c8\uc774\ud06c\ub85c\ud504\ub85c\uc138\uc11c"},"30840":{"kcode":"31545","tcode":"24","mcode":"3","bcode":"308","code":"30840","name":"Analog"},"30841":{"kcode":"31546","tcode":"24","mcode":"3","bcode":"308","code":"30841","name":"Digital"},"30842":{"kcode":"31547","tcode":"24","mcode":"3","bcode":"308","code":"30842","name":"OrCAD"}}},"309":{"kcode":"7975","tcode":"9","mcode":"9","bcode":"3","code":"309","name":"\uc0dd\uc0b0\uad00\ub9ac\u00b7\ud488\uc9c8\uad00\ub9ac","keyword":{"30903":{"kcode":"8868","tcode":"24","mcode":"3","bcode":"309","code":"30903","name":"\uc0dd\uc0b0\uad00\ub9ac"},"30904":{"kcode":"8869","tcode":"24","mcode":"3","bcode":"309","code":"30904","name":"\ud488\uc9c8\uad00\ub9ac"},"30905":{"kcode":"8870","tcode":"24","mcode":"3","bcode":"309","code":"30905","name":"\uc790\uc7ac\uad00\ub9ac"},"30906":{"kcode":"8871","tcode":"24","mcode":"3","bcode":"309","code":"30906","name":"\uacf5\uc815\uad00\ub9ac"},"30908":{"kcode":"8873","tcode":"24","mcode":"3","bcode":"309","code":"30908","name":"\ud658\uacbd\uad00\ub9ac"},"30909":{"kcode":"8874","tcode":"24","mcode":"3","bcode":"309","code":"30909","name":"\uc6d0\uac00\uad00\ub9ac"},"30910":{"kcode":"8875","tcode":"24","mcode":"3","bcode":"309","code":"30910","name":"ISO"},"30912":{"kcode":"8876","tcode":"24","mcode":"3","bcode":"309","code":"30912","name":"TPM"},"30913":{"kcode":"8877","tcode":"24","mcode":"3","bcode":"309","code":"30913","name":"6\uc2dc\uadf8\ub9c8"},"30914":{"kcode":"8878","tcode":"24","mcode":"3","bcode":"309","code":"30914","name":"\uacf5\uc7a5\uc7a5"},"30915":{"kcode":"8879","tcode":"24","mcode":"3","bcode":"309","code":"30915","name":"QA \u00b7QC"},"30916":{"kcode":"22380","tcode":"24","mcode":"3","bcode":"309","code":"30916","name":"\ud488\uc9c8\ubcf4\uc99d"},"30917":{"kcode":"22381","tcode":"24","mcode":"3","bcode":"309","code":"30917","name":"HACCP"}}},"314":{"kcode":"7980","tcode":"9","mcode":"9","bcode":"3","code":"314","name":"\ubc18\ub3c4\uccb4\u00b7\ub514\uc2a4\ud50c\ub808\uc774\u00b7LCD","keyword":{"31401":{"kcode":"8960","tcode":"24","mcode":"3","bcode":"314","code":"31401","name":"Microprocessor"},"31402":{"kcode":"8947","tcode":"24","mcode":"3","bcode":"314","code":"31402","name":"\ubc18\ub3c4\uccb4"},"31403":{"kcode":"8950","tcode":"24","mcode":"3","bcode":"314","code":"31403","name":"IC\uc124\uacc4"},"31404":{"kcode":"8951","tcode":"24","mcode":"3","bcode":"314","code":"31404","name":"ASIC"},"31405":{"kcode":"8952","tcode":"24","mcode":"3","bcode":"314","code":"31405","name":"VLSI"},"31406":{"kcode":"8953","tcode":"24","mcode":"3","bcode":"314","code":"31406","name":"LCD"},"31407":{"kcode":"8954","tcode":"24","mcode":"3","bcode":"314","code":"31407","name":"TFT"},"31408":{"kcode":"8955","tcode":"24","mcode":"3","bcode":"314","code":"31408","name":"\ub514\uc2a4\ud50c\ub808\uc774"},"31409":{"kcode":"8956","tcode":"24","mcode":"3","bcode":"314","code":"31409","name":"PDP"},"31411":{"kcode":"8957","tcode":"24","mcode":"3","bcode":"314","code":"31411","name":"SoC"},"31412":{"kcode":"8958","tcode":"24","mcode":"3","bcode":"314","code":"31412","name":"LED\u00b7AMOLED"},"31413":{"kcode":"8959","tcode":"24","mcode":"3","bcode":"314","code":"31413","name":"\ubc1c\uad11\ub2e4\uc774\uc624\ub4dc"},"31415":{"kcode":"22382","tcode":"24","mcode":"3","bcode":"314","code":"31415","name":"BLU\u00b7EL"},"31416":{"kcode":"22383","tcode":"24","mcode":"3","bcode":"314","code":"31416","name":"\ud130\uce58\uc2a4\ud06c\ub9b0"},"31417":{"kcode":"22384","tcode":"24","mcode":"3","bcode":"314","code":"31417","name":"PCB"},"31418":{"kcode":"22385","tcode":"24","mcode":"3","bcode":"314","code":"31418","name":"SMT"},"31419":{"kcode":"31541","tcode":"24","mcode":"3","bcode":"314","code":"31419","name":"\uae30\uc220\uc5f0\uad6c\uc18c"},"31420":{"kcode":"31542","tcode":"24","mcode":"3","bcode":"314","code":"31420","name":"\uc81c\ud488\uac1c\ubc1c"}}},"315":{"kcode":"7974","tcode":"9","mcode":"9","bcode":"3","code":"315","name":"\uc0dd\uc0b0\u00b7\uc81c\uc870\u00b7\ud3ec\uc7a5\u00b7\uc870\ub9bd","keyword":{"31501":{"kcode":"8854","tcode":"24","mcode":"3","bcode":"315","code":"31501","name":"\uc81c\uc870\u00b7\uac00\uacf5"},"31502":{"kcode":"8855","tcode":"24","mcode":"3","bcode":"315","code":"31502","name":"\uc0dd\uc0b0"},"31504":{"kcode":"8856","tcode":"24","mcode":"3","bcode":"315","code":"31504","name":"\ub178\ubb34"},"31505":{"kcode":"8853","tcode":"24","mcode":"3","bcode":"315","code":"31505","name":"\ub300\uae30\uc5c5\uc0dd\uc0b0\uc9c1"},"31508":{"kcode":"8859","tcode":"24","mcode":"3","bcode":"315","code":"31508","name":"\uc870\ub9bd"},"31512":{"kcode":"8863","tcode":"24","mcode":"3","bcode":"315","code":"31512","name":"\ud3ec\uc7a5\u00b7\ucf54\ud305"},"31516":{"kcode":"8867","tcode":"24","mcode":"3","bcode":"315","code":"31516","name":"\uac80\uc0ac\u00b7\uac80\ud488"}}},"316":{"kcode":"7978","tcode":"9","mcode":"9","bcode":"3","code":"316","name":"\ube44\uae08\uc18d\u00b7\uc694\uc5c5\u00b7\uc2e0\uc18c\uc7ac","keyword":{"31601":{"kcode":"8918","tcode":"24","mcode":"3","bcode":"316","code":"31601","name":"\ube44\uae08\uc18d"},"31602":{"kcode":"8919","tcode":"24","mcode":"3","bcode":"316","code":"31602","name":"\uc2e0\uc18c\uc7ac"},"31605":{"kcode":"22386","tcode":"24","mcode":"3","bcode":"316","code":"31605","name":"\uc138\ub77c\ubbf9\uc2a4"},"31606":{"kcode":"22387","tcode":"24","mcode":"3","bcode":"316","code":"31606","name":"\ub098\ub178\u00b7Nano"},"31608":{"kcode":"22389","tcode":"24","mcode":"3","bcode":"316","code":"31608","name":"\uc2dc\uba58\ud2b8"},"31609":{"kcode":"22390","tcode":"24","mcode":"3","bcode":"316","code":"31609","name":"\uc720\ub9ac"},"31610":{"kcode":"22391","tcode":"24","mcode":"3","bcode":"316","code":"31610","name":"\uc694\uc5c5"}}},"317":{"kcode":"22350","tcode":"9","mcode":"9","bcode":"3","code":"317","name":"\ubc14\uc774\uc624\u00b7\uc81c\uc57d\u00b7\uc2dd\ud488","keyword":{"31701":{"kcode":"22392","tcode":"24","mcode":"3","bcode":"317","code":"31701","name":"\uc2dd\ud488\uac00\uacf5\u00b7\uac1c\ubc1c"},"31702":{"kcode":"22393","tcode":"24","mcode":"3","bcode":"317","code":"31702","name":"\uc758\uc57d\ud488"},"31703":{"kcode":"22394","tcode":"24","mcode":"3","bcode":"317","code":"31703","name":"\ubbf8\uc0dd\ubb3c"},"31704":{"kcode":"22395","tcode":"24","mcode":"3","bcode":"317","code":"31704","name":"\ub18d\uc57d\u00b7\ube44\ub8cc\u00b7\uc0ac\ub8cc"},"31705":{"kcode":"22396","tcode":"24","mcode":"3","bcode":"317","code":"31705","name":"\uc784\uc0c1\uac1c\ubc1c"},"31706":{"kcode":"22397","tcode":"24","mcode":"3","bcode":"317","code":"31706","name":"\uc138\ud3ec\u00b7\ubc30\uc591"},"31707":{"kcode":"22398","tcode":"24","mcode":"3","bcode":"317","code":"31707","name":"\uc720\uc804\uacf5\ud559"},"31708":{"kcode":"22399","tcode":"24","mcode":"3","bcode":"317","code":"31708","name":"\uc81c\uc57dPM"},"31709":{"kcode":"22400","tcode":"24","mcode":"3","bcode":"317","code":"31709","name":"\ud6a8\uc18c"},"31710":{"kcode":"22401","tcode":"24","mcode":"3","bcode":"317","code":"31710","name":"\ubc14\uc774\uc624"},"31711":{"kcode":"22402","tcode":"24","mcode":"3","bcode":"317","code":"31711","name":"\uc81c\uc57d"}}},"318":{"kcode":"22351","tcode":"9","mcode":"9","bcode":"3","code":"318","name":"\uc124\uacc4\u00b7CAD\u00b7CAM","keyword":{"31801":{"kcode":"22403","tcode":"24","mcode":"3","bcode":"318","code":"31801","name":"CAD"},"31802":{"kcode":"22404","tcode":"24","mcode":"3","bcode":"318","code":"31802","name":"\uac74\ucd95\uc124\uacc4"},"31803":{"kcode":"22405","tcode":"24","mcode":"3","bcode":"318","code":"31803","name":"CAM"},"31804":{"kcode":"22406","tcode":"24","mcode":"3","bcode":"318","code":"31804","name":"AutoCad"},"31805":{"kcode":"22407","tcode":"24","mcode":"3","bcode":"318","code":"31805","name":"\uae30\uacc4\u00b7\uae30\uad6c\uc124\uacc4"},"31806":{"kcode":"22408","tcode":"24","mcode":"3","bcode":"318","code":"31806","name":"PDM\u00b7PLM"},"31807":{"kcode":"22409","tcode":"24","mcode":"3","bcode":"318","code":"31807","name":"PADS"},"31808":{"kcode":"22410","tcode":"24","mcode":"3","bcode":"318","code":"31808","name":"\uc870\uacbd\uc124\uacc4"},"31809":{"kcode":"22411","tcode":"24","mcode":"3","bcode":"318","code":"31809","name":"\uc790\ub3d9\ucc28\u00b7\uc870\uc120\uc124\uacc4"},"31810":{"kcode":"22412","tcode":"24","mcode":"3","bcode":"318","code":"31810","name":"\ud1a0\ubaa9\uc124\uacc4"},"31811":{"kcode":"22413","tcode":"24","mcode":"3","bcode":"318","code":"31811","name":"\uae08\ud615\uc124\uacc4"},"31812":{"kcode":"22414","tcode":"24","mcode":"3","bcode":"318","code":"31812","name":"3D\uc124\uacc4"},"31813":{"kcode":"22415","tcode":"24","mcode":"3","bcode":"318","code":"31813","name":"Pro-e"},"31814":{"kcode":"22416","tcode":"24","mcode":"3","bcode":"318","code":"31814","name":"catia"}}},"319":{"kcode":"22352","tcode":"9","mcode":"9","bcode":"3","code":"319","name":"\uc548\uacbd\u00b7\ub80c\uc988\u00b7\uad11\ud559","keyword":{"31901":{"kcode":"22417","tcode":"24","mcode":"3","bcode":"319","code":"31901","name":"\ub80c\uc988"},"31902":{"kcode":"22418","tcode":"24","mcode":"3","bcode":"319","code":"31902","name":"\uc548\uacbd"},"31903":{"kcode":"22419","tcode":"24","mcode":"3","bcode":"319","code":"31903","name":"\uc561\uc815\u00b7\ud328\ub110"},"31904":{"kcode":"22420","tcode":"24","mcode":"3","bcode":"319","code":"31904","name":"\uc758\ub8cc\uc7a5\ube44"},"31905":{"kcode":"22421","tcode":"24","mcode":"3","bcode":"319","code":"31905","name":"\uad11\ud559\uae30\uad6c"},"31906":{"kcode":"22422","tcode":"24","mcode":"3","bcode":"319","code":"31906","name":"\uc815\ubc00\uad11\ud559"},"31907":{"kcode":"22423","tcode":"24","mcode":"3","bcode":"319","code":"31907","name":"\ud604\ubbf8\uacbd\u00b7SEM\u00b7TEM"},"31908":{"kcode":"22424","tcode":"24","mcode":"3","bcode":"319","code":"31908","name":"\uce74\uba54\ub77c\u00b7\ub9dd\uc6d0\uacbd"}}}}},"4":{"bcode":"4","name":"IT\u00b7\uc778\ud130\ub137","code":{"404":{"kcode":"7988","tcode":"9","mcode":"9","bcode":"4","code":"404","name":"\uc6f9\uac1c\ubc1c","keyword":{"40402":{"kcode":"9045","tcode":"24","mcode":"4","bcode":"404","code":"40402","name":"ASP"},"40404":{"kcode":"9047","tcode":"24","mcode":"4","bcode":"404","code":"40404","name":"Java\u00b7JSP"},"40407":{"kcode":"9050","tcode":"24","mcode":"4","bcode":"404","code":"40407","name":"PHP"},"40409":{"kcode":"9052","tcode":"24","mcode":"4","bcode":"404","code":"40409","name":"XML"},"40413":{"kcode":"9056","tcode":"24","mcode":"4","bcode":"404","code":"40413","name":"HTML"},"40416":{"kcode":"9059","tcode":"24","mcode":"4","bcode":"404","code":"40416","name":".NET"},"40420":{"kcode":"9063","tcode":"24","mcode":"4","bcode":"404","code":"40420","name":"APM"},"40421":{"kcode":"9064","tcode":"24","mcode":"4","bcode":"404","code":"40421","name":"Ajax"},"40424":{"kcode":"22460","tcode":"24","mcode":"4","bcode":"404","code":"40424","name":"PERL"},"40425":{"kcode":"22461","tcode":"24","mcode":"4","bcode":"404","code":"40425","name":"Ruby"},"40426":{"kcode":"39314","tcode":"24","mcode":"4","bcode":"404","code":"40426","name":"Python"},"40427":{"kcode":"39315","tcode":"24","mcode":"4","bcode":"404","code":"40427","name":"\ud504\ub860\ud2b8\uc5d4\ub4dc"},"40430":{"kcode":"39316","tcode":"24","mcode":"4","bcode":"404","code":"40430","name":"\ubc31\uc5d4\ub4dc"}}},"407":{"kcode":"7989","tcode":"9","mcode":"9","bcode":"4","code":"407","name":"\uc751\uc6a9\ud504\ub85c\uadf8\ub7a8\uac1c\ubc1c","keyword":{"40701":{"kcode":"39319","tcode":"24","mcode":"4","bcode":"407","code":"40701","name":"IOS\uc571\uac1c\ubc1c"},"40702":{"kcode":"39320","tcode":"24","mcode":"4","bcode":"407","code":"40702","name":"Android\uc571\uac1c\ubc1c"},"40706":{"kcode":"9072","tcode":"24","mcode":"4","bcode":"407","code":"40706","name":"Windows"},"40707":{"kcode":"9073","tcode":"24","mcode":"4","bcode":"407","code":"40707","name":"Unix"},"40708":{"kcode":"9074","tcode":"24","mcode":"4","bcode":"407","code":"40708","name":"Linux"},"40709":{"kcode":"9075","tcode":"24","mcode":"4","bcode":"407","code":"40709","name":"VisualC\u00b7C++"},"40711":{"kcode":"9076","tcode":"24","mcode":"4","bcode":"407","code":"40711","name":"VisualBasic"},"40712":{"kcode":"9077","tcode":"24","mcode":"4","bcode":"407","code":"40712","name":"C\u00b7C++"},"40714":{"kcode":"9078","tcode":"24","mcode":"4","bcode":"407","code":"40714","name":"MFC"},"40715":{"kcode":"9079","tcode":"24","mcode":"4","bcode":"407","code":"40715","name":"PowerBuilder"},"40716":{"kcode":"9080","tcode":"24","mcode":"4","bcode":"407","code":"40716","name":"Java"},"40717":{"kcode":"9081","tcode":"24","mcode":"4","bcode":"407","code":"40717","name":"Delphi"},"40719":{"kcode":"9083","tcode":"24","mcode":"4","bcode":"407","code":"40719","name":"OpenGL"},"40720":{"kcode":"9084","tcode":"24","mcode":"4","bcode":"407","code":"40720","name":"Oracle"},"40721":{"kcode":"39321","tcode":"24","mcode":"4","bcode":"407","code":"40721","name":"Python"},"40722":{"kcode":"9086","tcode":"24","mcode":"4","bcode":"407","code":"40722","name":".NET"},"40725":{"kcode":"9089","tcode":"24","mcode":"4","bcode":"407","code":"40725","name":"Pro-C"},"40728":{"kcode":"9092","tcode":"24","mcode":"4","bcode":"407","code":"40728","name":"C#"},"40729":{"kcode":"9093","tcode":"24","mcode":"4","bcode":"407","code":"40729","name":"\uc561\uc158\uc2a4\ud06c\ub9bd\ud2b8"},"40732":{"kcode":"9095","tcode":"24","mcode":"4","bcode":"407","code":"40732","name":"SAP\u00b7ABAP"},"40734":{"kcode":"9097","tcode":"24","mcode":"4","bcode":"407","code":"40734","name":"Embedded"},"40738":{"kcode":"9100","tcode":"24","mcode":"4","bcode":"407","code":"40738","name":"API"},"40745":{"kcode":"22475","tcode":"24","mcode":"4","bcode":"407","code":"40745","name":"MySQL"},"40746":{"kcode":"22476","tcode":"24","mcode":"4","bcode":"407","code":"40746","name":"MS-SQL"},"40747":{"kcode":"22477","tcode":"24","mcode":"4","bcode":"407","code":"40747","name":"FLEX"},"40751":{"kcode":"31603","tcode":"24","mcode":"4","bcode":"407","code":"40751","name":"\uc99d\uac15\ud604\uc2e4(AR)"},"40753":{"kcode":"39322","tcode":"24","mcode":"4","bcode":"407","code":"40753","name":"\uac00\uc0c1\ud604\uc2e4(VR)"},"40755":{"kcode":"31607","tcode":"24","mcode":"4","bcode":"407","code":"40755","name":"C++Builder"},"40759":{"kcode":"31611","tcode":"24","mcode":"4","bcode":"407","code":"40759","name":"RFID"},"40760":{"kcode":"31612","tcode":"24","mcode":"4","bcode":"407","code":"40760","name":"Win32"},"40761":{"kcode":"39317","tcode":"24","mcode":"4","bcode":"407","code":"40761","name":"Labview"},"40762":{"kcode":"39318","tcode":"24","mcode":"4","bcode":"407","code":"40762","name":"micom"},"40763":{"kcode":"39349","tcode":"24","mcode":"4","bcode":"407","code":"40763","name":"objective c"}}},"408":{"kcode":"7990","tcode":"9","mcode":"9","bcode":"4","code":"408","name":"\uc2dc\uc2a4\ud15c\uac1c\ubc1c","keyword":{"40802":{"kcode":"9106","tcode":"24","mcode":"4","bcode":"408","code":"40802","name":"\uc5b4\uc148\ube14\ub9ac"},"40805":{"kcode":"9109","tcode":"24","mcode":"4","bcode":"408","code":"40805","name":"Embedded"},"40806":{"kcode":"9110","tcode":"24","mcode":"4","bcode":"408","code":"40806","name":"\ud38c\uc6e8\uc5b4"},"40808":{"kcode":"22480","tcode":"24","mcode":"4","bcode":"408","code":"40808","name":"HMI\u00b7PLC"},"40812":{"kcode":"22484","tcode":"24","mcode":"4","bcode":"408","code":"40812","name":"CTI"}}},"402":{"kcode":"7993","tcode":"9","mcode":"9","bcode":"4","code":"402","name":"\uc11c\ubc84\u00b7\ub124\ud2b8\uc6cc\ud06c\u00b7\ubcf4\uc548","keyword":{"40201":{"kcode":"9133","tcode":"24","mcode":"4","bcode":"402","code":"40201","name":"\uc11c\ubc84\uad00\ub9ac"},"40203":{"kcode":"9135","tcode":"24","mcode":"4","bcode":"402","code":"40203","name":"\ub124\ud2b8\uc6cc\ud06c\uad00\ub9ac"},"40204":{"kcode":"9136","tcode":"24","mcode":"4","bcode":"402","code":"40204","name":"\ubc29\ud654\ubcbd"},"40207":{"kcode":"9139","tcode":"24","mcode":"4","bcode":"402","code":"40207","name":"\uc11c\ubc84\uad6c\ucd95"},"40208":{"kcode":"39310","tcode":"24","mcode":"4","bcode":"402","code":"40208","name":"\uac00\uc0c1\ud654\uad6c\ucd95"},"40209":{"kcode":"39307","tcode":"24","mcode":"4","bcode":"402","code":"40209","name":"\uc2dc\uc2a4\ud15c\u00b7\ub124\ud2b8\uc6cc\ud06c \ucee8\uc124\ud305"},"40210":{"kcode":"39308","tcode":"24","mcode":"4","bcode":"402","code":"40210","name":"\ubcf4\uc548\ucee8\uc124\ud305"},"40214":{"kcode":"9146","tcode":"24","mcode":"4","bcode":"402","code":"40214","name":"Apache"},"40215":{"kcode":"9147","tcode":"24","mcode":"4","bcode":"402","code":"40215","name":"IIS"},"40216":{"kcode":"39311","tcode":"24","mcode":"4","bcode":"402","code":"40216","name":"RTOS"},"40217":{"kcode":"39312","tcode":"24","mcode":"4","bcode":"402","code":"40217","name":"NGINX"},"40218":{"kcode":"39306","tcode":"24","mcode":"4","bcode":"402","code":"40218","name":"POS"},"40219":{"kcode":"39309","tcode":"24","mcode":"4","bcode":"402","code":"40219","name":"DWH\u00b7ATM"},"40220":{"kcode":"39313","tcode":"24","mcode":"4","bcode":"402","code":"40220","name":"AWS"},"40223":{"kcode":"9155","tcode":"24","mcode":"4","bcode":"402","code":"40223","name":"Cisco"},"40226":{"kcode":"9157","tcode":"24","mcode":"4","bcode":"402","code":"40226","name":"\uc815\ubcf4\ubcf4\uc548"},"40227":{"kcode":"9158","tcode":"24","mcode":"4","bcode":"402","code":"40227","name":"Router\u00b7Switch"},"40228":{"kcode":"9159","tcode":"24","mcode":"4","bcode":"402","code":"40228","name":"ISP\u00b7IDC\uc6b4\uc601"},"40229":{"kcode":"22433","tcode":"24","mcode":"4","bcode":"402","code":"40229","name":"TCP\u00b7IP\u00b7IPX"},"40231":{"kcode":"22435","tcode":"24","mcode":"4","bcode":"402","code":"40231","name":"\ubc14\uc774\ub7ec\uc2a4\u00b7\ubc31\uc2e0"},"40232":{"kcode":"31582","tcode":"24","mcode":"4","bcode":"402","code":"40232","name":"\ubcf4\uc548\uad00\uc81c"},"40233":{"kcode":"31583","tcode":"24","mcode":"4","bcode":"402","code":"40233","name":"\ubcf4\uc548\uae30\uc220"},"40234":{"kcode":"31584","tcode":"24","mcode":"4","bcode":"402","code":"40234","name":"\uc2dc\uc2a4\ud15c\uc6b4\uc601"},"40237":{"kcode":"31587","tcode":"24","mcode":"4","bcode":"402","code":"40237","name":"Windows"},"40238":{"kcode":"39304","tcode":"24","mcode":"4","bcode":"402","code":"40238","name":"Unix"},"40239":{"kcode":"39305","tcode":"24","mcode":"4","bcode":"402","code":"40239","name":"Linux"}}},"409":{"kcode":"7991","tcode":"9","mcode":"9","bcode":"4","code":"409","name":"ERP\u00b7\uc2dc\uc2a4\ud15c\ubd84\uc11d\u00b7\uc124\uacc4","keyword":{"40904":{"kcode":"9114","tcode":"24","mcode":"4","bcode":"409","code":"40904","name":"\ubaa8\ub378\ub9c1"},"40909":{"kcode":"22501","tcode":"24","mcode":"4","bcode":"409","code":"40909","name":"ERP\ucee8\uc124\ud134\ud2b8"},"40912":{"kcode":"22504","tcode":"24","mcode":"4","bcode":"409","code":"40912","name":"SAP\u00b7ABAP "},"40913":{"kcode":"22505","tcode":"24","mcode":"4","bcode":"409","code":"40913","name":"MES"},"40914":{"kcode":"22506","tcode":"24","mcode":"4","bcode":"409","code":"40914","name":"PLM"},"40915":{"kcode":"22507","tcode":"24","mcode":"4","bcode":"409","code":"40915","name":"SEM\u00b7SCM"},"40916":{"kcode":"31621","tcode":"24","mcode":"4","bcode":"409","code":"40916","name":"\uc2dc\uc2a4\ud15c\uc5d4\uc9c0\ub2c8\uc5b4(SE)"}}},"416":{"kcode":"22432","tcode":"9","mcode":"9","bcode":"4","code":"416","name":"\ub370\uc774\ud130\ubca0\uc774\uc2a4\u00b7DBA","keyword":{"41602":{"kcode":"22437","tcode":"24","mcode":"4","bcode":"416","code":"41602","name":"Oracle"},"41603":{"kcode":"22438","tcode":"24","mcode":"4","bcode":"416","code":"41603","name":"MS-SQL"},"41604":{"kcode":"22439","tcode":"24","mcode":"4","bcode":"416","code":"41604","name":"MySQL"},"41605":{"kcode":"22440","tcode":"24","mcode":"4","bcode":"416","code":"41605","name":"ETL"},"41606":{"kcode":"22441","tcode":"24","mcode":"4","bcode":"416","code":"41606","name":"OLAP"},"41607":{"kcode":"22442","tcode":"24","mcode":"4","bcode":"416","code":"41607","name":"\ub370\uc774\ud0c0\ub9c8\uc774\ub2dd"},"41608":{"kcode":"22443","tcode":"24","mcode":"4","bcode":"416","code":"41608","name":"DW"},"41610":{"kcode":"22445","tcode":"24","mcode":"4","bcode":"416","code":"41610","name":"PostgreSQL"},"41611":{"kcode":"39332","tcode":"24","mcode":"4","bcode":"416","code":"41611","name":"NoSQL"},"41618":{"kcode":"39348","tcode":"24","mcode":"4","bcode":"416","code":"41618","name":"\ud29c\ub2dd"},"41619":{"kcode":"22454","tcode":"24","mcode":"4","bcode":"416","code":"41619","name":"DBA"},"41620":{"kcode":"22455","tcode":"24","mcode":"4","bcode":"416","code":"41620","name":"DB2"}}},"413":{"kcode":"22429","tcode":"9","mcode":"9","bcode":"4","code":"413","name":"\ud37c\ube14\ub9ac\uc2f1\u00b7UI\uac1c\ubc1c","keyword":{"41301":{"kcode":"22486","tcode":"24","mcode":"4","bcode":"413","code":"41301","name":"HTML\ucf54\ub529"},"41302":{"kcode":"22487","tcode":"24","mcode":"4","bcode":"413","code":"41302","name":"\ub2e8\uc21c\uc6f9\uc791\uc5c5"},"41303":{"kcode":"22488","tcode":"24","mcode":"4","bcode":"413","code":"41303","name":"\ud37c\ube14\ub9ac\uc154"},"41304":{"kcode":"22489","tcode":"24","mcode":"4","bcode":"413","code":"41304","name":"\uc6f9\ud45c\uc900\u00b7\uc6f9\uc811\uadfc\uc131"},"41305":{"kcode":"39328","tcode":"24","mcode":"4","bcode":"413","code":"41305","name":"\uc790\ubc14\uc2a4\ud06c\ub9bd\ud2b8"},"41308":{"kcode":"39329","tcode":"24","mcode":"4","bcode":"413","code":"41308","name":"\uc561\uc158\uc2a4\ud06c\ub9bd\ud2b8"}}},"412":{"kcode":"7987","tcode":"9","mcode":"9","bcode":"4","code":"412","name":"\uc6f9\ub514\uc790\uc778","keyword":{"41203":{"kcode":"9030","tcode":"24","mcode":"4","bcode":"412","code":"41203","name":"\ud3ec\ud1a0\uc0f5"},"41204":{"kcode":"9031","tcode":"24","mcode":"4","bcode":"412","code":"41204","name":"\ud50c\ub798\uc26c"},"41205":{"kcode":"39326","tcode":"24","mcode":"4","bcode":"412","code":"41205","name":"Sketch"},"41206":{"kcode":"9032","tcode":"24","mcode":"4","bcode":"412","code":"41206","name":"\ub4dc\ub9bc\uc704\ubc84"},"41209":{"kcode":"9035","tcode":"24","mcode":"4","bcode":"412","code":"41209","name":"\uc790\ubc14\uc2a4\ud06c\ub9bd\ud2b8"},"41212":{"kcode":"9038","tcode":"24","mcode":"4","bcode":"412","code":"41212","name":"XML"},"41213":{"kcode":"9027","tcode":"24","mcode":"4","bcode":"412","code":"41213","name":"UI\u00b7UX\ub514\uc790\uc778"},"41214":{"kcode":"9043","tcode":"24","mcode":"4","bcode":"412","code":"41214","name":"\uc77c\ub7ec\uc2a4\ud2b8\ub808\uc774\ud130"},"41216":{"kcode":"39325","tcode":"24","mcode":"4","bcode":"412","code":"41216","name":"\ud504\ub85c\ud1a0\ud0c0\uc774\ud551"},"41217":{"kcode":"39327","tcode":"24","mcode":"4","bcode":"412","code":"41217","name":"GUI"},"41222":{"kcode":"9042","tcode":"24","mcode":"4","bcode":"412","code":"41222","name":"CSS"},"41224":{"kcode":"26598","tcode":"24","mcode":"4","bcode":"412","code":"41224","name":"\uc6f9UI"},"41225":{"kcode":"26661","tcode":"24","mcode":"4","bcode":"412","code":"41225","name":"\ubaa8\ubc14\uc77cUI"},"41228":{"kcode":"31595","tcode":"24","mcode":"4","bcode":"412","code":"41228","name":"HTML  "},"41229":{"kcode":"39324","tcode":"24","mcode":"4","bcode":"412","code":"41229","name":"FLEX"}}},"411":{"kcode":"7992","tcode":"9","mcode":"9","bcode":"4","code":"411","name":"\ud558\ub4dc\uc6e8\uc5b4\u00b7\uc18c\ud504\ud2b8\uc6e8\uc5b4","keyword":{"41102":{"kcode":"9118","tcode":"24","mcode":"4","bcode":"411","code":"41102","name":"HW(\ud558\ub4dc\uc6e8\uc5b4)"},"41105":{"kcode":"9121","tcode":"24","mcode":"4","bcode":"411","code":"41105","name":"SW(\uc18c\ud504\ud2b8\uc6e8\uc5b4)"},"41109":{"kcode":"9125","tcode":"24","mcode":"4","bcode":"411","code":"41109","name":"\uc720\uc9c0\ubcf4\uc218(AS)"},"41113":{"kcode":"9129","tcode":"24","mcode":"4","bcode":"411","code":"41113","name":"DSP"},"41115":{"kcode":"9131","tcode":"24","mcode":"4","bcode":"411","code":"41115","name":"FPGA"}}},"410":{"kcode":"7994","tcode":"9","mcode":"9","bcode":"4","code":"410","name":"\ud1b5\uc2e0\u00b7\ubaa8\ubc14\uc77c","keyword":{"41005":{"kcode":"9165","tcode":"24","mcode":"4","bcode":"410","code":"41005","name":"\uc704\uc131\u00b7GPS\u00b7GIS"},"41006":{"kcode":"9166","tcode":"24","mcode":"4","bcode":"410","code":"41006","name":"\uad11\ud1b5\uc2e0"},"41007":{"kcode":"9167","tcode":"24","mcode":"4","bcode":"410","code":"41007","name":"\uc774\ub3d9\ud1b5\uc2e0"},"41017":{"kcode":"9177","tcode":"24","mcode":"4","bcode":"410","code":"41017","name":"\ud1b5\uc2e0\ub9dd\uac00\uc124"},"41033":{"kcode":"31616","tcode":"24","mcode":"4","bcode":"410","code":"41033","name":"\uc815\ubcf4\ud1b5\uc2e0"},"41034":{"kcode":"31617","tcode":"24","mcode":"4","bcode":"410","code":"41034","name":"\ubb34\uc120\ud1b5\uc2e0"},"41036":{"kcode":"39323","tcode":"24","mcode":"4","bcode":"410","code":"41036","name":"\uc0ac\ubb3c\uc778\ud130\ub137(IoT)"}}},"403":{"kcode":"7986","tcode":"9","mcode":"9","bcode":"4","code":"403","name":"\uc6f9\uae30\ud68d\u00b7PM","keyword":{"40305":{"kcode":"9013","tcode":"24","mcode":"4","bcode":"403","code":"40305","name":"PM"},"40308":{"kcode":"9024","tcode":"24","mcode":"4","bcode":"403","code":"40308","name":"\uc815\ubcf4\uc124\uacc4\u00b7IA"},"40309":{"kcode":"9025","tcode":"24","mcode":"4","bcode":"403","code":"40309","name":"\uc2a4\ud1a0\ub9ac\ubcf4\ub4dc"},"40310":{"kcode":"9017","tcode":"24","mcode":"4","bcode":"403","code":"40310","name":"\ucee8\ud150\uce20\uae30\ud68d"},"40315":{"kcode":"9021","tcode":"24","mcode":"4","bcode":"403","code":"40315","name":"\ub85c\uadf8\ubd84\uc11d"},"40318":{"kcode":"22456","tcode":"24","mcode":"4","bcode":"403","code":"40318","name":"UI\uae30\ud68d"},"40319":{"kcode":"22457","tcode":"24","mcode":"4","bcode":"403","code":"40319","name":"\uc81c\uc548\u00b7\ucee8\uc124\ud305"},"40320":{"kcode":"22458","tcode":"24","mcode":"4","bcode":"403","code":"40320","name":"\uc1fc\ud551\ubab0\uae30\ud68d"},"40321":{"kcode":"22459","tcode":"24","mcode":"4","bcode":"403","code":"40321","name":"\ubaa8\ubc14\uc77c\uae30\ud68d"},"40324":{"kcode":"31590","tcode":"24","mcode":"4","bcode":"403","code":"40324","name":"\uc6f9\uc11c\ube44\uc2a4\uae30\ud68d"}}},"401":{"kcode":"7985","tcode":"9","mcode":"9","bcode":"4","code":"401","name":"\uc6f9\ub9c8\uc2a4\ud130\u00b7QA\u00b7\ud14c\uc2a4\ud130","keyword":{"40101":{"kcode":"9004","tcode":"24","mcode":"4","bcode":"401","code":"40101","name":"\uc6f9\ub9c8\uc2a4\ud130"},"40104":{"kcode":"9007","tcode":"24","mcode":"4","bcode":"401","code":"40104","name":"Unix"},"40105":{"kcode":"39302","tcode":"24","mcode":"4","bcode":"401","code":"40105","name":"Linux"},"40106":{"kcode":"39303","tcode":"24","mcode":"4","bcode":"401","code":"40106","name":"Windows"},"40110":{"kcode":"33202","tcode":"24","mcode":"4","bcode":"401","code":"40110","name":"QA\u00b7\ud14c\uc2a4\ud130"}}},"406":{"kcode":"7995","tcode":"9","mcode":"9","bcode":"4","code":"406","name":"\ucee8\ud150\uce20\u00b7\uc0ac\uc774\ud2b8\uc6b4\uc601","keyword":{"40601":{"kcode":"9186","tcode":"24","mcode":"4","bcode":"406","code":"40601","name":"\uc0ac\uc774\ud2b8\uc6b4\uc601"},"40603":{"kcode":"9187","tcode":"24","mcode":"4","bcode":"406","code":"40603","name":"\ucee8\ud150\uce20\uc6b4\uc601"},"40606":{"kcode":"9188","tcode":"24","mcode":"4","bcode":"406","code":"40606","name":"e-\ub7ec\ub2dd\uc6b4\uc601"},"40609":{"kcode":"9189","tcode":"24","mcode":"4","bcode":"406","code":"40609","name":"\uce74\ud398\u00b7\ube14\ub85c\uadf8\uad00\ub9ac"},"40610":{"kcode":"9190","tcode":"24","mcode":"4","bcode":"406","code":"40610","name":"\uac8c\uc2dc\ud310\uad00\ub9ac"},"40612":{"kcode":"22428","tcode":"24","mcode":"4","bcode":"406","code":"40612","name":"\uc1fc\ud551\ubab0\u00b7\uc624\ud508\ub9c8\ucf13"},"40614":{"kcode":"31614","tcode":"24","mcode":"4","bcode":"406","code":"40614","name":"\ucee8\ud150\uce20\uc81c\uc791"}}},"405":{"kcode":"7996","tcode":"9","mcode":"9","bcode":"4","code":"405","name":"\uac8c\uc784\u00b7Game","keyword":{"40501":{"kcode":"9192","tcode":"24","mcode":"4","bcode":"405","code":"40501","name":"\uac8c\uc784\uae30\ud68d"},"40502":{"kcode":"9199","tcode":"24","mcode":"4","bcode":"405","code":"40502","name":"\uac8c\uc784\uc2dc\ub098\ub9ac\uc624"},"40503":{"kcode":"9194","tcode":"24","mcode":"4","bcode":"405","code":"40503","name":"GM\u00b7\uac8c\uc784\uc6b4\uc601"},"40508":{"kcode":"9201","tcode":"24","mcode":"4","bcode":"405","code":"40508","name":"QA\u00b7\ubca0\ud0c0\ud14c\uc2a4\ud130"},"40510":{"kcode":"9193","tcode":"24","mcode":"4","bcode":"405","code":"40510","name":"\uac8c\uc784\ub9c8\ucf00\ud305"},"40511":{"kcode":"9208","tcode":"24","mcode":"4","bcode":"405","code":"40511","name":"\uc628\ub77c\uc778\uac8c\uc784"},"40513":{"kcode":"9202","tcode":"24","mcode":"4","bcode":"405","code":"40513","name":"\uac8c\uc784\ub514\uc790\uc778"},"40515":{"kcode":"9203","tcode":"24","mcode":"4","bcode":"405","code":"40515","name":"2D\u00b7\ub3c4\ud2b8\u00b7\ub9f5"},"40516":{"kcode":"9204","tcode":"24","mcode":"4","bcode":"405","code":"40516","name":"3D\u00b7\ubaa8\ub378\ub9c1\u00b7\ubaa8\uc158"},"40526":{"kcode":"9198","tcode":"24","mcode":"4","bcode":"405","code":"40526","name":"\uce90\ub9ad\ud130\u00b7\uc544\uc774\ud15c"},"40527":{"kcode":"9207","tcode":"24","mcode":"4","bcode":"405","code":"40527","name":"\ubaa8\ubc14\uc77c\uac8c\uc784"},"40530":{"kcode":"9209","tcode":"24","mcode":"4","bcode":"405","code":"40530","name":"\uac8c\uc784\uac1c\ubc1c"},"40533":{"kcode":"22464","tcode":"24","mcode":"4","bcode":"405","code":"40533","name":"\uce90\uc8fc\uc5bc\u00b7\ubcf4\ub4dc\uac8c\uc784"},"40535":{"kcode":"22466","tcode":"24","mcode":"4","bcode":"405","code":"40535","name":"CS\u00b7\uace0\uac1d\uc9c0\uc6d0"},"40536":{"kcode":"22467","tcode":"24","mcode":"4","bcode":"405","code":"40536","name":"\ud074\ub77c\uc774\uc5b8\ud2b8\uac1c\ubc1c"},"40537":{"kcode":"22468","tcode":"24","mcode":"4","bcode":"405","code":"40537","name":"\uc11c\ubc84\u00b7\ub124\ud2b8\uc6cd\uac1c\ubc1c"},"40540":{"kcode":"22471","tcode":"24","mcode":"4","bcode":"405","code":"40540","name":"\uc6d0\ud654\u00b7\uc77c\ub7ec\uc2a4\ud2b8"},"40541":{"kcode":"22472","tcode":"24","mcode":"4","bcode":"405","code":"40541","name":"MMORPG"},"40542":{"kcode":"39347","tcode":"24","mcode":"4","bcode":"405","code":"40542","name":"DirectX"}}},"415":{"kcode":"22431","tcode":"9","mcode":"9","bcode":"4","code":"415","name":"IT\u00b7\ub514\uc790\uc778\u00b7\ucef4\ud4e8\ud130\uad50\uc721","keyword":{"41501":{"kcode":"22508","tcode":"24","mcode":"4","bcode":"415","code":"41501","name":"OA\u00b7\ucef4\ud4e8\ud130"},"41502":{"kcode":"22509","tcode":"24","mcode":"4","bcode":"415","code":"41502","name":"\uc778\ud130\ub137\u00b7\ub124\ud2b8\uc6cc\ud06c"},"41503":{"kcode":"22510","tcode":"24","mcode":"4","bcode":"415","code":"41503","name":"\uc6f9\ub514\uc790\uc778\uac15\uc758"},"41504":{"kcode":"22511","tcode":"24","mcode":"4","bcode":"415","code":"41504","name":"\ud504\ub85c\uadf8\ub798\ubc0d"},"41505":{"kcode":"22512","tcode":"24","mcode":"4","bcode":"415","code":"41505","name":"\uc2dc\uc2a4\ud15c\u00b7DB\u00b7\ubcf4\uc548"},"41506":{"kcode":"22513","tcode":"24","mcode":"4","bcode":"415","code":"41506","name":"3D\u00b7\uc601\uc0c1\u00b7\ud50c\ub798\uc2dc"},"41508":{"kcode":"22515","tcode":"24","mcode":"4","bcode":"415","code":"41508","name":"IT\uac15\uc758"}}},"414":{"kcode":"22430","tcode":"9","mcode":"9","bcode":"4","code":"414","name":"\ub3d9\uc601\uc0c1\u00b7\ud3b8\uc9d1\u00b7\ucf54\ub371","keyword":{"41402":{"kcode":"22491","tcode":"24","mcode":"4","bcode":"414","code":"41402","name":"\ud504\ub9ac\ubbf8\uc5b4"},"41404":{"kcode":"39331","tcode":"24","mcode":"4","bcode":"414","code":"41404","name":"\ud30c\uc774\ub110\ucef7"},"41405":{"kcode":"39330","tcode":"24","mcode":"4","bcode":"414","code":"41405","name":"\uc601\uc0c1\ud3b8\uc9d1"},"41406":{"kcode":"22495","tcode":"24","mcode":"4","bcode":"414","code":"41406","name":"3DMAX"},"41407":{"kcode":"22496","tcode":"24","mcode":"4","bcode":"414","code":"41407","name":"\uba40\ud2f0\ubbf8\ub514\uc5b4"},"41410":{"kcode":"22499","tcode":"24","mcode":"4","bcode":"414","code":"41410","name":"\ucf54\ub371\u00b7\uc778\ucf54\ub529"}}},"417":{"kcode":"39333","tcode":"9","mcode":"9","bcode":"4","code":"417","name":"\uc778\uacf5\uc9c0\ub2a5(AI)\u00b7\ube45\ub370\uc774\ud130","keyword":{"41701":{"kcode":"39334","tcode":"24","mcode":"4","bcode":"417","code":"41701","name":"\uc778\uacf5\uc9c0\ub2a5(AI)"},"41702":{"kcode":"39335","tcode":"24","mcode":"4","bcode":"417","code":"41702","name":"\ube45\ub370\uc774\ud130"},"41703":{"kcode":"39336","tcode":"24","mcode":"4","bcode":"417","code":"41703","name":"\uba38\uc2e0\ub7ec\ub2dd"},"41704":{"kcode":"39337","tcode":"24","mcode":"4","bcode":"417","code":"41704","name":"\ud074\ub77c\uc6b0\ub4dc"},"41705":{"kcode":"39338","tcode":"24","mcode":"4","bcode":"417","code":"41705","name":"\uc0ac\ubb3c\uc778\ud130\ub137(IoT)"},"41706":{"kcode":"39339","tcode":"24","mcode":"4","bcode":"417","code":"41706","name":"DataAnalysis"},"41707":{"kcode":"39340","tcode":"24","mcode":"4","bcode":"417","code":"41707","name":"Hadoop"},"41708":{"kcode":"39341","tcode":"24","mcode":"4","bcode":"417","code":"41708","name":"Spark"},"41709":{"kcode":"39342","tcode":"24","mcode":"4","bcode":"417","code":"41709","name":"\uc790\uc5f0\uc5b4\ucc98\ub9ac(NLP)"},"41710":{"kcode":"39343","tcode":"24","mcode":"4","bcode":"417","code":"41710","name":"R"},"41711":{"kcode":"39344","tcode":"24","mcode":"4","bcode":"417","code":"41711","name":"Python"},"41712":{"kcode":"39345","tcode":"24","mcode":"4","bcode":"417","code":"41712","name":"TensorFlow"}}}}},"12":{"bcode":"12","name":"\ub514\uc790\uc778","code":{"1201":{"kcode":"8057","tcode":"9","mcode":"9","bcode":"12","code":"1201","name":"\uadf8\ub798\ud53d\ub514\uc790\uc778\u00b7CG","keyword":{"120101":{"kcode":"9793","tcode":"24","mcode":"12","bcode":"1201","code":"120101","name":"\uadf8\ub798\ud53d\ub514\uc790\uc778"},"120102":{"kcode":"9796","tcode":"24","mcode":"12","bcode":"1201","code":"120102","name":"3D"},"120103":{"kcode":"9797","tcode":"24","mcode":"12","bcode":"1201","code":"120103","name":"3DMax"},"120104":{"kcode":"9798","tcode":"24","mcode":"12","bcode":"1201","code":"120104","name":"Maya"},"120105":{"kcode":"9799","tcode":"24","mcode":"12","bcode":"1201","code":"120105","name":"\uc77c\ub7ec\uc2a4\ud2b8\ub808\uc774\ud130"},"120106":{"kcode":"9800","tcode":"24","mcode":"12","bcode":"1201","code":"120106","name":"\ud3ec\ud1a0\uc0f5"},"120107":{"kcode":"9801","tcode":"24","mcode":"12","bcode":"1201","code":"120107","name":"\ub514\ub809\ud130"},"120108":{"kcode":"9802","tcode":"24","mcode":"12","bcode":"1201","code":"120108","name":"CG"},"120109":{"kcode":"9803","tcode":"24","mcode":"12","bcode":"1201","code":"120109","name":"\ucf54\ub810\ub4dc\ub85c\uc6b0"},"120110":{"kcode":"9804","tcode":"24","mcode":"12","bcode":"1201","code":"120110","name":"\ub3c4\ud2b8\ub514\uc790\uc778"},"120112":{"kcode":"9805","tcode":"24","mcode":"12","bcode":"1201","code":"120112","name":"CI\u00b7BI"},"120115":{"kcode":"22958","tcode":"24","mcode":"12","bcode":"1201","code":"120115","name":"\uae30\uc5c5\uc774\ubbf8\uc9c0"},"120116":{"kcode":"22959","tcode":"24","mcode":"12","bcode":"1201","code":"120116","name":"GUI"}}},"1202":{"kcode":"8058","tcode":"9","mcode":"9","bcode":"12","code":"1202","name":"\ucd9c\ud310\u00b7\ud3b8\uc9d1\ub514\uc790\uc778","keyword":{"120201":{"kcode":"9807","tcode":"24","mcode":"12","bcode":"1202","code":"120201","name":"\ud3b8\uc9d1\ub514\uc790\uc778"},"120202":{"kcode":"9809","tcode":"24","mcode":"12","bcode":"1202","code":"120202","name":"Mac\ub514\uc790\uc778"},"120203":{"kcode":"9810","tcode":"24","mcode":"12","bcode":"1202","code":"120203","name":"QuarkXpress"},"120204":{"kcode":"9811","tcode":"24","mcode":"12","bcode":"1202","code":"120204","name":"\uc7a1\uc9c0\u00b7\uc0ac\ubcf4\ub514\uc790\uc778"},"120205":{"kcode":"9812","tcode":"24","mcode":"12","bcode":"1202","code":"120205","name":"\uce74\ud0c8\ub85c\uadf8\ud3b8\uc9d1"},"120206":{"kcode":"9808","tcode":"24","mcode":"12","bcode":"1202","code":"120206","name":"\ubd81\ub514\uc790\uc778"},"120207":{"kcode":"22960","tcode":"24","mcode":"12","bcode":"1202","code":"120207","name":"\ub808\uc774\uc544\uc6c3\u00b7\uad6c\uc131"},"120208":{"kcode":"22961","tcode":"24","mcode":"12","bcode":"1202","code":"120208","name":"\ud45c\uc9c0\ub514\uc790\uc778"},"120209":{"kcode":"22962","tcode":"24","mcode":"12","bcode":"1202","code":"120209","name":"\uc0bd\ud654\u00b7\uc77c\ub7ec\uc2a4\ud2b8"},"120210":{"kcode":"22963","tcode":"24","mcode":"12","bcode":"1202","code":"120210","name":"\uc11c\uccb4\u00b7\ud3f0\ud2b8"},"120211":{"kcode":"22964","tcode":"24","mcode":"12","bcode":"1202","code":"120211","name":"IBM\ub514\uc790\uc778"}}},"1203":{"kcode":"8059","tcode":"9","mcode":"9","bcode":"12","code":"1203","name":"\uc81c\ud488\u00b7\uc0b0\uc5c5\ub514\uc790\uc778","keyword":{"120301":{"kcode":"9813","tcode":"24","mcode":"12","bcode":"1203","code":"120301","name":"\uc81c\ud488\ub514\uc790\uc778"},"120302":{"kcode":"9814","tcode":"24","mcode":"12","bcode":"1203","code":"120302","name":"\uc0b0\uc5c5\ub514\uc790\uc778"},"120303":{"kcode":"9815","tcode":"24","mcode":"12","bcode":"1203","code":"120303","name":"\ud32c\uc2dc\u00b7\ubb38\uad6c"},"120304":{"kcode":"9816","tcode":"24","mcode":"12","bcode":"1203","code":"120304","name":"\uacf5\uc5c5\ub514\uc790\uc778"},"120305":{"kcode":"9817","tcode":"24","mcode":"12","bcode":"1203","code":"120305","name":"\ud3ec\uc7a5\ub514\uc790\uc778"},"120306":{"kcode":"9818","tcode":"24","mcode":"12","bcode":"1203","code":"120306","name":"\uacf5\uacf5\ub514\uc790\uc778"},"120307":{"kcode":"9819","tcode":"24","mcode":"12","bcode":"1203","code":"120307","name":"\uae08\uc18d\ub514\uc790\uc778"},"120308":{"kcode":"9820","tcode":"24","mcode":"12","bcode":"1203","code":"120308","name":"\uacf5\uc608\ub514\uc790\uc778"},"120309":{"kcode":"9821","tcode":"24","mcode":"12","bcode":"1203","code":"120309","name":"\uac00\uad6c\ub514\uc790\uc778"},"120310":{"kcode":"9822","tcode":"24","mcode":"12","bcode":"1203","code":"120310","name":"\uc870\uba85\ub514\uc790\uc778"},"120311":{"kcode":"22973","tcode":"24","mcode":"12","bcode":"1203","code":"120311","name":"\ud328\ud0a4\uc9c0\ub514\uc790\uc778"},"120312":{"kcode":"22974","tcode":"24","mcode":"12","bcode":"1203","code":"120312","name":"\uadc0\uae08\uc18d\ub514\uc790\uc778"},"120313":{"kcode":"22975","tcode":"24","mcode":"12","bcode":"1203","code":"120313","name":"\ubcbd\uc9c0\ub514\uc790\uc778"},"120314":{"kcode":"22976","tcode":"24","mcode":"12","bcode":"1203","code":"120314","name":"\uc2dc\uacc4\ub514\uc790\uc778"},"120315":{"kcode":"22977","tcode":"24","mcode":"12","bcode":"1203","code":"120315","name":"\uc644\uad6c\ub514\uc790\uc778"},"120316":{"kcode":"22978","tcode":"24","mcode":"12","bcode":"1203","code":"120316","name":"\uc12c\uc720\ub514\uc790\uc778"}}},"1204":{"kcode":"8060","tcode":"9","mcode":"9","bcode":"12","code":"1204","name":"\uce90\ub9ad\ud130\u00b7\ub9cc\ud654\u00b7\uc560\ub2c8","keyword":{"120401":{"kcode":"9823","tcode":"24","mcode":"12","bcode":"1204","code":"120401","name":"\ud50c\ub798\uc2dc"},"120402":{"kcode":"9824","tcode":"24","mcode":"12","bcode":"1204","code":"120402","name":"\uce90\ub9ad\ud130"},"120403":{"kcode":"9825","tcode":"24","mcode":"12","bcode":"1204","code":"120403","name":"\uc560\ub2c8\uba54\uc774\uc158"},"120404":{"kcode":"9826","tcode":"24","mcode":"12","bcode":"1204","code":"120404","name":"\ud504\ub9ac\ubbf8\uc5b4"},"120405":{"kcode":"9827","tcode":"24","mcode":"12","bcode":"1204","code":"120405","name":"2D"},"120406":{"kcode":"9828","tcode":"24","mcode":"12","bcode":"1204","code":"120406","name":"3D"},"120407":{"kcode":"9829","tcode":"24","mcode":"12","bcode":"1204","code":"120407","name":"\uc6d0\ud654\u00b7\ub9cc\ud654"},"120408":{"kcode":"9830","tcode":"24","mcode":"12","bcode":"1204","code":"120408","name":"\uc544\ubc14\ud0c0"},"120409":{"kcode":"9831","tcode":"24","mcode":"12","bcode":"1204","code":"120409","name":"\ubaa8\uc158\uadf8\ub798\ud53d"},"120410":{"kcode":"22965","tcode":"24","mcode":"12","bcode":"1204","code":"120410","name":"\uc140\uc560\ub2c8\uba54\uc774\uc158"},"120412":{"kcode":"22966","tcode":"24","mcode":"12","bcode":"1204","code":"120412","name":"\ub3d9\ud654\ub514\uc790\uc778"},"120413":{"kcode":"22967","tcode":"24","mcode":"12","bcode":"1204","code":"120413","name":"\ucc44\uc0c9\ub514\uc790\uc778"},"120414":{"kcode":"22968","tcode":"24","mcode":"12","bcode":"1204","code":"120414","name":"\uc560\ub2c8\uba54\uc774\ud130"}}},"1205":{"kcode":"8061","tcode":"9","mcode":"9","bcode":"12","code":"1205","name":"\uc758\ub958\u00b7\ud328\uc158\u00b7\uc7a1\ud654\ub514\uc790\uc778","keyword":{"120501":{"kcode":"9832","tcode":"24","mcode":"12","bcode":"1205","code":"120501","name":"\ud328\uc158\ub514\uc790\uc774\ub108"},"120502":{"kcode":"9834","tcode":"24","mcode":"12","bcode":"1205","code":"120502","name":"\uc7a1\ud654\ub514\uc790\uc778"},"120503":{"kcode":"9836","tcode":"24","mcode":"12","bcode":"1205","code":"120503","name":"\ud328\ud134\u00b7\uceec\ub7ec\ub9ac\uc2a4\ud2b8"},"120504":{"kcode":"9833","tcode":"24","mcode":"12","bcode":"1205","code":"120504","name":"\uc758\uc0c1\ub514\uc790\uc774\ub108"},"120505":{"kcode":"9843","tcode":"24","mcode":"12","bcode":"1205","code":"120505","name":"\ub9e4\uc7a5\ub514\uc2a4\ud50c\ub808\uc774"},"120506":{"kcode":"9844","tcode":"24","mcode":"12","bcode":"1205","code":"120506","name":"\ud328\uc158\ucf54\ub514\ub124\uc774\ud130"},"120507":{"kcode":"9845","tcode":"24","mcode":"12","bcode":"1205","code":"120507","name":"\ud53c\ud305\ubaa8\ub378"},"120508":{"kcode":"9835","tcode":"24","mcode":"12","bcode":"1205","code":"120508","name":"\uc12c\uc720\ub514\uc790\uc778"},"120509":{"kcode":"9838","tcode":"24","mcode":"12","bcode":"1205","code":"120509","name":"\ub0a8\uc131\uce90\uc8fc\uc5bc\u00b7\uc815\uc7a5"},"120510":{"kcode":"9839","tcode":"24","mcode":"12","bcode":"1205","code":"120510","name":"\uc5ec\uc131\uce90\uc8fc\uc5bc\u00b7\uc815\uc7a5"},"120511":{"kcode":"9840","tcode":"24","mcode":"12","bcode":"1205","code":"120511","name":"\uc774\ub108\uc6e8\uc5b4\u00b7\uc18d\uc637"},"120512":{"kcode":"9841","tcode":"24","mcode":"12","bcode":"1205","code":"120512","name":"\uc544\ub3d9\ubcf5\u00b7\uc720\uc544\ubcf5"},"120513":{"kcode":"9842","tcode":"24","mcode":"12","bcode":"1205","code":"120513","name":"VMD"},"120514":{"kcode":"9837","tcode":"24","mcode":"12","bcode":"1205","code":"120514","name":"\uc8fc\uc5bc\ub9ac\u00b7\uc561\uc138\uc11c\ub9ac"},"120515":{"kcode":"22969","tcode":"24","mcode":"12","bcode":"1205","code":"120515","name":"\uce68\uad6c\u00b7\ud648\ud328\uc158"},"120516":{"kcode":"22970","tcode":"24","mcode":"12","bcode":"1205","code":"120516","name":"\uac00\ubc29\u00b7\ud578\ub4dc\ubc31"},"120517":{"kcode":"22971","tcode":"24","mcode":"12","bcode":"1205","code":"120517","name":"\uad6c\ub450\u00b7\uc2e0\ubc1c"},"120518":{"kcode":"31517","tcode":"24","mcode":"12","bcode":"1205","code":"120518","name":"\ub125\ud0c0\uc774\ub514\uc790\uc778"},"120519":{"kcode":"31518","tcode":"24","mcode":"12","bcode":"1205","code":"120519","name":"\ub2c8\ud2b8\ub514\uc790\uc778"},"120520":{"kcode":"31519","tcode":"24","mcode":"12","bcode":"1205","code":"120520","name":"\uace8\ud504\uc6e8\uc5b4\ub514\uc790\uc778"},"120521":{"kcode":"31520","tcode":"24","mcode":"12","bcode":"1205","code":"120521","name":"\ub370\ub2d8\ub514\uc790\uc778"},"120522":{"kcode":"31521","tcode":"24","mcode":"12","bcode":"1205","code":"120522","name":"\ub4dc\ub808\uc2a4\ub514\uc790\uc778"},"120523":{"kcode":"31522","tcode":"24","mcode":"12","bcode":"1205","code":"120523","name":"\uc601\uce90\uc8fc\uc5bc\ub514\uc790\uc778"},"120524":{"kcode":"31523","tcode":"24","mcode":"12","bcode":"1205","code":"120524","name":"\uc720\ub2c8\ud3fc\ub514\uc790\uc778"},"120525":{"kcode":"22972","tcode":"24","mcode":"12","bcode":"1205","code":"120525","name":"\uc9c0\uac11\u00b7\ubca8\ud2b8\u00b7\uac00\uc8fd"}}},"1207":{"kcode":"8063","tcode":"9","mcode":"9","bcode":"12","code":"1207","name":"\ub514\uc790\uc778\uae30\ud0c0","keyword":{"120701":{"kcode":"9859","tcode":"24","mcode":"12","bcode":"1207","code":"120701","name":"\uae30\ud0c0\ub514\uc790\uc778"}}},"1208":{"kcode":"22932","tcode":"9","mcode":"9","bcode":"12","code":"1208","name":"\uc804\uc2dc\u00b7\uacf5\uac04\ub514\uc790\uc778","keyword":{"120801":{"kcode":"22933","tcode":"24","mcode":"12","bcode":"1208","code":"120801","name":"\uc778\ud14c\ub9ac\uc5b4"},"120802":{"kcode":"22934","tcode":"24","mcode":"12","bcode":"1208","code":"120802","name":"\uacf5\uac04\ub514\uc790\uc778"},"120803":{"kcode":"22935","tcode":"24","mcode":"12","bcode":"1208","code":"120803","name":"\uc2e4\ub0b4\ub514\uc790\uc778"},"120804":{"kcode":"22936","tcode":"24","mcode":"12","bcode":"1208","code":"120804","name":"\ub9ac\ub178\ubca0\uc774\uc158"},"120805":{"kcode":"22937","tcode":"24","mcode":"12","bcode":"1208","code":"120805","name":"\ud658\uacbd\ub514\uc790\uc778"},"120806":{"kcode":"22938","tcode":"24","mcode":"12","bcode":"1208","code":"120806","name":"\uc804\uc2dc\ub514\uc790\uc778"},"120807":{"kcode":"22939","tcode":"24","mcode":"12","bcode":"1208","code":"120807","name":"\uc870\uacbd\ub514\uc790\uc778"},"120808":{"kcode":"22940","tcode":"24","mcode":"12","bcode":"1208","code":"120808","name":"\ubb34\ub300\ub514\uc790\uc778"}}},"1209":{"kcode":"22941","tcode":"9","mcode":"9","bcode":"12","code":"1209","name":"\uad11\uace0\u00b7\uc2dc\uac01\ub514\uc790\uc778","keyword":{"120901":{"kcode":"22942","tcode":"24","mcode":"12","bcode":"1209","code":"120901","name":"\uc544\ud2b8\ub514\ub809\ud130"},"120902":{"kcode":"22943","tcode":"24","mcode":"12","bcode":"1209","code":"120902","name":"\ud06c\ub9ac\uc5d0\uc774\ud2f0\ube0c\ub514\ub809\ud130"},"120903":{"kcode":"22944","tcode":"24","mcode":"12","bcode":"1209","code":"120903","name":"\uad11\uace0\ub514\uc790\uc778"},"120904":{"kcode":"22945","tcode":"24","mcode":"12","bcode":"1209","code":"120904","name":"\uc2e0\ubb38\u00b7\uc7a1\uc9c0\uad11\uace0"},"120905":{"kcode":"22946","tcode":"24","mcode":"12","bcode":"1209","code":"120905","name":"TV\u00b7\ub3d9\uc601\uc0c1\uad11\uace0"},"120906":{"kcode":"22947","tcode":"24","mcode":"12","bcode":"1209","code":"120906","name":"\ubc30\ub108\u00b7\uc778\ud130\ub137\uad11\uace0"},"120907":{"kcode":"22948","tcode":"24","mcode":"12","bcode":"1209","code":"120907","name":"\uc625\uc678\u00b7\uc804\uc2dc\uad11\uace0"},"120908":{"kcode":"22949","tcode":"24","mcode":"12","bcode":"1209","code":"120908","name":"POP\u00b7SIGN"},"120909":{"kcode":"22950","tcode":"24","mcode":"12","bcode":"1209","code":"120909","name":"\ud3ec\uc2a4\ud130\ub514\uc790\uc778"},"120910":{"kcode":"22951","tcode":"24","mcode":"12","bcode":"1209","code":"120910","name":"\ud604\uc218\ub9c9\u00b7\uac04\ud310"},"120911":{"kcode":"22952","tcode":"24","mcode":"12","bcode":"1209","code":"120911","name":"\uc2dc\uac01\ub514\uc790\uc778"},"120912":{"kcode":"22953","tcode":"24","mcode":"12","bcode":"1209","code":"120912","name":"\uc601\uc0c1\ub514\uc790\uc778"},"120913":{"kcode":"22954","tcode":"24","mcode":"12","bcode":"1209","code":"120913","name":"\ud3f0\ud2b8\u00b7\ud0c0\uc774\ud3ec"},"120914":{"kcode":"22955","tcode":"24","mcode":"12","bcode":"1209","code":"120914","name":"\uc815\ubcf4\ub514\uc790\uc778"},"120915":{"kcode":"22956","tcode":"24","mcode":"12","bcode":"1209","code":"120915","name":"\ub514\uc9c0\ud138\ub514\uc790\uc778"},"120916":{"kcode":"22957","tcode":"24","mcode":"12","bcode":"1209","code":"120916","name":"\uc804\ub2e8\uc9c0\u00b7\ucfe0\ud3f0"},"120918":{"kcode":"31515","tcode":"24","mcode":"12","bcode":"1209","code":"120918","name":"DM\uad11\uace0"}}}}},"5":{"bcode":"5","name":"\uc804\ubb38\uc9c1","code":{"501":{"kcode":"7997","tcode":"9","mcode":"9","bcode":"5","code":"501","name":"\uacbd\uc601\ubd84\uc11d\u00b7\ucee8\uc124\ud134\ud2b8","keyword":{"50101":{"kcode":"9212","tcode":"24","mcode":"5","bcode":"501","code":"50101","name":"\ucee8\uc124\ud134\ud2b8"},"50102":{"kcode":"9213","tcode":"24","mcode":"5","bcode":"501","code":"50102","name":"\uae08\uc735\ucee8\uc124\ud305"},"50103":{"kcode":"9214","tcode":"24","mcode":"5","bcode":"501","code":"50103","name":"\uacbd\uc601\ucee8\uc124\ud305"},"50104":{"kcode":"9215","tcode":"24","mcode":"5","bcode":"501","code":"50104","name":"\ucc3d\uc5c5\ucee8\uc124\ud305"},"50106":{"kcode":"9217","tcode":"24","mcode":"5","bcode":"501","code":"50106","name":"IT\ucee8\uc124\ud305"},"50107":{"kcode":"9211","tcode":"24","mcode":"5","bcode":"501","code":"50107","name":"\uacbd\uc601\ubd84\uc11d"},"50113":{"kcode":"9218","tcode":"24","mcode":"5","bcode":"501","code":"50113","name":"\ubd80\ub3d9\uc0b0\ucee8\uc124\ud305"},"50114":{"kcode":"9219","tcode":"24","mcode":"5","bcode":"501","code":"50114","name":"\uc774\ubbf8\uc9c0\ucee8\uc124\ud305"},"50115":{"kcode":"9220","tcode":"24","mcode":"5","bcode":"501","code":"50115","name":"HR\ucee8\uc124\ud305"}}},"502":{"kcode":"7998","tcode":"9","mcode":"9","bcode":"5","code":"502","name":"\uc99d\uad8c\u00b7\ud22c\uc790\u00b7\ud380\ub4dc\u00b7\uc678\ud658","keyword":{"50201":{"kcode":"9221","tcode":"24","mcode":"5","bcode":"502","code":"50201","name":"\uc99d\uad8c"},"50203":{"kcode":"9222","tcode":"24","mcode":"5","bcode":"502","code":"50203","name":"MBA"},"50204":{"kcode":"9223","tcode":"24","mcode":"5","bcode":"502","code":"50204","name":"\uae30\uc5c5\ubd84\uc11d\u00b7\uc2ec\uc0ac"},"50206":{"kcode":"9224","tcode":"24","mcode":"5","bcode":"502","code":"50206","name":"\uc560\ub110\ub9ac\uc2a4\ud2b8"},"50207":{"kcode":"9225","tcode":"24","mcode":"5","bcode":"502","code":"50207","name":"\ud22c\uc790\uc0c1\ub2f4"},"50208":{"kcode":"9228","tcode":"24","mcode":"5","bcode":"502","code":"50208","name":"IPO"},"50210":{"kcode":"9227","tcode":"24","mcode":"5","bcode":"502","code":"50210","name":"\ud380\ub4dc\ub9e4\ub2c8\uc800"},"50212":{"kcode":"9230","tcode":"24","mcode":"5","bcode":"502","code":"50212","name":"\uc120\ubb3c\u00b7\uc635\uc158"},"50213":{"kcode":"22516","tcode":"24","mcode":"5","bcode":"502","code":"50213","name":"\uc8fc\uc2dd\ud22c\uc790"},"50214":{"kcode":"22517","tcode":"24","mcode":"5","bcode":"502","code":"50214","name":"\ubd80\ub3d9\uc0b0\ud22c\uc790"},"50215":{"kcode":"22518","tcode":"24","mcode":"5","bcode":"502","code":"50215","name":"\ud658\uc728\ubd84\uc11d"},"50216":{"kcode":"22519","tcode":"24","mcode":"5","bcode":"502","code":"50216","name":"M&A"}}},"504":{"kcode":"8000","tcode":"9","mcode":"9","bcode":"5","code":"504","name":"\ud5e4\ub4dc\ud5cc\ud305\u00b7\ub178\ubb34\u00b7\uc9c1\uc5c5\uc0c1\ub2f4","keyword":{"50401":{"kcode":"9238","tcode":"24","mcode":"5","bcode":"504","code":"50401","name":"\ud5e4\ub4dc\ud5cc\ud130"},"50402":{"kcode":"9239","tcode":"24","mcode":"5","bcode":"504","code":"50402","name":"\uacbd\ub825\uad00\ub9ac"},"50403":{"kcode":"9240","tcode":"24","mcode":"5","bcode":"504","code":"50403","name":"\ub178\ubb34\uc0ac"},"50405":{"kcode":"9241","tcode":"24","mcode":"5","bcode":"504","code":"50405","name":"\uc9c1\uc5c5\uc0c1\ub2f4\uc0ac"},"50406":{"kcode":"22520","tcode":"24","mcode":"5","bcode":"504","code":"50406","name":"\uc778\uc7ac\uc11c\uce58"},"50407":{"kcode":"22521","tcode":"24","mcode":"5","bcode":"504","code":"50407","name":"\uc2a4\uce74\uc6b0\ud2b8"},"50408":{"kcode":"31581","tcode":"24","mcode":"5","bcode":"504","code":"50408","name":"\uc778\uc7ac\ucee8\uc124\ud305"}}},"505":{"kcode":"7999","tcode":"9","mcode":"9","bcode":"5","code":"505","name":"\uc124\ubb38\u00b7\ud1b5\uacc4\u00b7\ub9ac\uc11c\uce58","keyword":{"50501":{"kcode":"9231","tcode":"24","mcode":"5","bcode":"505","code":"50501","name":"\ud1b5\uacc4"},"50502":{"kcode":"9232","tcode":"24","mcode":"5","bcode":"505","code":"50502","name":"\uc870\uc0ac\ubd84\uc11d"},"50503":{"kcode":"9233","tcode":"24","mcode":"5","bcode":"505","code":"50503","name":"\uc124\ubb38\uc870\uc0ac"},"50504":{"kcode":"9234","tcode":"24","mcode":"5","bcode":"505","code":"50504","name":"SAS"},"50505":{"kcode":"9235","tcode":"24","mcode":"5","bcode":"505","code":"50505","name":"SPSS"},"50506":{"kcode":"9236","tcode":"24","mcode":"5","bcode":"505","code":"50506","name":"\uc2dc\uc7a5\uc870\uc0ac"},"50507":{"kcode":"9237","tcode":"24","mcode":"5","bcode":"505","code":"50507","name":"\ub9ac\uc11c\uce58"}}},"509":{"kcode":"8001","tcode":"9","mcode":"9","bcode":"5","code":"509","name":"\uc678\uad6d\uc5b4\u00b7\ubc88\uc5ed\u00b7\ud1b5\uc5ed","keyword":{"50901":{"kcode":"9242","tcode":"24","mcode":"5","bcode":"509","code":"50901","name":"\ubc88\uc5ed"},"50902":{"kcode":"9243","tcode":"24","mcode":"5","bcode":"509","code":"50902","name":"\ud1b5\uc5ed"},"50903":{"kcode":"9244","tcode":"24","mcode":"5","bcode":"509","code":"50903","name":"\uad00\uad11\ud1b5\uc5ed"},"50904":{"kcode":"9245","tcode":"24","mcode":"5","bcode":"509","code":"50904","name":"\uc601\uc5b4"},"50905":{"kcode":"9246","tcode":"24","mcode":"5","bcode":"509","code":"50905","name":"\ud504\ub791\uc2a4\uc5b4"},"50906":{"kcode":"9247","tcode":"24","mcode":"5","bcode":"509","code":"50906","name":"\ub3c5\uc77c\uc5b4"},"50907":{"kcode":"9248","tcode":"24","mcode":"5","bcode":"509","code":"50907","name":"\uc911\uad6d\uc5b4"},"50908":{"kcode":"9249","tcode":"24","mcode":"5","bcode":"509","code":"50908","name":"\uc77c\ubcf8\uc5b4"},"50909":{"kcode":"9250","tcode":"24","mcode":"5","bcode":"509","code":"50909","name":"\uc2a4\ud398\uc778\uc5b4"},"50910":{"kcode":"9251","tcode":"24","mcode":"5","bcode":"509","code":"50910","name":"\ud3ec\ub974\ud22c\uac08\uc5b4"},"50911":{"kcode":"9252","tcode":"24","mcode":"5","bcode":"509","code":"50911","name":"\ub7ec\uc2dc\uc544\uc5b4"},"50912":{"kcode":"9253","tcode":"24","mcode":"5","bcode":"509","code":"50912","name":"\uc678\ud654\ubc88\uc5ed"},"50913":{"kcode":"9254","tcode":"24","mcode":"5","bcode":"509","code":"50913","name":"\ubca0\ud2b8\ub0a8\uc5b4"},"50914":{"kcode":"22523","tcode":"24","mcode":"5","bcode":"509","code":"50914","name":"\uc544\ub78d\uc5b4"},"50915":{"kcode":"22524","tcode":"24","mcode":"5","bcode":"509","code":"50915","name":"\ud1b5\u00b7\ubc88\uc5ed\ud559\uc6d0"},"50916":{"kcode":"22525","tcode":"24","mcode":"5","bcode":"509","code":"50916","name":"\ub3d9\uc2dc\ud1b5\uc5ed"}}},"510":{"kcode":"8002","tcode":"9","mcode":"9","bcode":"5","code":"510","name":"\ubc95\ub960\u00b7\ud2b9\ud5c8\u00b7\uc0c1\ud45c","keyword":{"51003":{"kcode":"9255","tcode":"24","mcode":"5","bcode":"510","code":"51003","name":"\ubc95\ubb34\uc0ac"},"51004":{"kcode":"9256","tcode":"24","mcode":"5","bcode":"510","code":"51004","name":"\ubcc0\ud638\uc0ac"},"51005":{"kcode":"9257","tcode":"24","mcode":"5","bcode":"510","code":"51005","name":"\ubcc0\ub9ac\uc0ac"},"51009":{"kcode":"9258","tcode":"24","mcode":"5","bcode":"510","code":"51009","name":"\ubc95\ub960\uc11c\ube44\uc2a4"},"51010":{"kcode":"9259","tcode":"24","mcode":"5","bcode":"510","code":"51010","name":"\ud2b9\ud5c8\ucd9c\uc6d0"},"51011":{"kcode":"9260","tcode":"24","mcode":"5","bcode":"510","code":"51011","name":"\uacf5\uc99d"},"51012":{"kcode":"9261","tcode":"24","mcode":"5","bcode":"510","code":"51012","name":"\ubc95\ud559\uc804\uacf5"},"51013":{"kcode":"9262","tcode":"24","mcode":"5","bcode":"510","code":"51013","name":"\uc9c0\uc801\uc7ac\uc0b0\uad8c"},"51014":{"kcode":"9263","tcode":"24","mcode":"5","bcode":"510","code":"51014","name":"\uc0c1\ud45c\ucd9c\uc6d0"},"51016":{"kcode":"22526","tcode":"24","mcode":"5","bcode":"510","code":"51016","name":"\ubc95\ubb34\ub300\ub9ac"},"51017":{"kcode":"22527","tcode":"24","mcode":"5","bcode":"510","code":"51017","name":"\uc0c1\ud45c\ub300\ub9ac"},"51018":{"kcode":"22528","tcode":"24","mcode":"5","bcode":"510","code":"51018","name":"\uc18c\uc1a1\u00b7\ubbfc\uc0ac\u00b7\ub4f1\uae30"},"51019":{"kcode":"22529","tcode":"24","mcode":"5","bcode":"510","code":"51019","name":"\ub85c\ud38c"},"51020":{"kcode":"31573","tcode":"24","mcode":"5","bcode":"510","code":"51020","name":"\ub85c\uc2a4\ucfe8"},"51021":{"kcode":"31574","tcode":"24","mcode":"5","bcode":"510","code":"51021","name":"\ubc95\ubb34\uc0ac\uc0ac\ubb34\uc7a5"},"51022":{"kcode":"31575","tcode":"24","mcode":"5","bcode":"510","code":"51022","name":"\ubcc0\ub9ac\uc0ac\uc0ac\ubb34\uc7a5"},"51023":{"kcode":"31576","tcode":"24","mcode":"5","bcode":"510","code":"51023","name":"\ubcc0\ud638\uc0ac\uc0ac\ubb34\uc7a5"}}},"511":{"kcode":"8003","tcode":"9","mcode":"9","bcode":"5","code":"511","name":"\uc138\ubb34\u00b7\ud68c\uacc4\u00b7CPA","keyword":{"51101":{"kcode":"9269","tcode":"24","mcode":"5","bcode":"511","code":"51101","name":"AICPA"},"51102":{"kcode":"9265","tcode":"24","mcode":"5","bcode":"511","code":"51102","name":"\uc138\ubb34"},"51103":{"kcode":"9266","tcode":"24","mcode":"5","bcode":"511","code":"51103","name":"\uc7ac\ubb34"},"51104":{"kcode":"9267","tcode":"24","mcode":"5","bcode":"511","code":"51104","name":"\ud68c\uacc4"},"51105":{"kcode":"9268","tcode":"24","mcode":"5","bcode":"511","code":"51105","name":"\uad00\uc138\uc0ac"},"51106":{"kcode":"9270","tcode":"24","mcode":"5","bcode":"511","code":"51106","name":"\ud68c\uacc4\uc0ac\u00b7CPA"},"51107":{"kcode":"9272","tcode":"24","mcode":"5","bcode":"511","code":"51107","name":"\ubc95\uc778\uacb0\uc0b0"},"51109":{"kcode":"22530","tcode":"24","mcode":"5","bcode":"511","code":"51109","name":"\uc138\ubb34\uc0ac"},"51110":{"kcode":"22531","tcode":"24","mcode":"5","bcode":"511","code":"51110","name":"\uae30\uc7a5"},"51111":{"kcode":"22532","tcode":"24","mcode":"5","bcode":"511","code":"51111","name":"\uacb0\uc0b0"}}},"512":{"kcode":"8004","tcode":"9","mcode":"9","bcode":"5","code":"512","name":"\ucc44\uad8c\u00b7\ubcf4\ud5d8\u00b7\ubcf4\uc0c1\u00b7\uc2ec\uc0ac","keyword":{"51201":{"kcode":"9273","tcode":"24","mcode":"5","bcode":"512","code":"51201","name":"\ucc44\uad8c\u00b7\ucd94\uc2ec"},"51203":{"kcode":"9275","tcode":"24","mcode":"5","bcode":"512","code":"51203","name":"\uc190\ud574\uc0ac\uc815"},"51204":{"kcode":"22533","tcode":"24","mcode":"5","bcode":"512","code":"51204","name":"\ub300\uc778\ubcf4\uc0c1"},"51205":{"kcode":"22534","tcode":"24","mcode":"5","bcode":"512","code":"51205","name":"\ub300\ubb3c\ubcf4\uc0c1"},"51206":{"kcode":"22535","tcode":"24","mcode":"5","bcode":"512","code":"51206","name":"\ubcf4\ud5d8\uc2ec\uc0ac"},"51208":{"kcode":"22537","tcode":"24","mcode":"5","bcode":"512","code":"51208","name":"\ubcf4\ud5d8\uacc4\ub9ac\uc0ac"},"51209":{"kcode":"22538","tcode":"24","mcode":"5","bcode":"512","code":"51209","name":"\uc5b8\ub354\ub77c\uc774\ud305"},"51210":{"kcode":"31578","tcode":"24","mcode":"5","bcode":"512","code":"51210","name":"\ub300\ucd9c\uc0c1\ub2f4"},"51211":{"kcode":"31579","tcode":"24","mcode":"5","bcode":"512","code":"51211","name":"\ub300\ucd9c\uc2ec\uc0ac"},"51212":{"kcode":"31580","tcode":"24","mcode":"5","bcode":"512","code":"51212","name":"\uc785\ucd9c\uae08\uad00\ub9ac"}}},"513":{"kcode":"8005","tcode":"9","mcode":"9","bcode":"5","code":"513","name":"\ub3c4\uc11c\uad00\uc0ac\uc11c","keyword":{"51301":{"kcode":"9276","tcode":"24","mcode":"5","bcode":"513","code":"51301","name":"\ub3c4\uc11c\uad00\uc0ac\uc11c"},"51302":{"kcode":"9277","tcode":"24","mcode":"5","bcode":"513","code":"51302","name":"\uc815\ubcf4\uac80\uc0c9"},"51303":{"kcode":"9278","tcode":"24","mcode":"5","bcode":"513","code":"51303","name":"\uc6f9\uc11c\ud551\u00b7\uc11c\ud37c"},"51304":{"kcode":"9279","tcode":"24","mcode":"5","bcode":"513","code":"51304","name":"\ubb38\ud5cc\uc815\ubcf4\ud559"},"51305":{"kcode":"9280","tcode":"24","mcode":"5","bcode":"513","code":"51305","name":"\ubd81\ub9c8\uc2a4\ud130"},"51306":{"kcode":"9281","tcode":"24","mcode":"5","bcode":"513","code":"51306","name":"\uc0ac\uc11c\uad50\uc0ac"}}},"518":{"kcode":"8007","tcode":"9","mcode":"9","bcode":"5","code":"518","name":"\uc5f0\uad6c\uc18c\u00b7R&D","keyword":{"51801":{"kcode":"9304","tcode":"24","mcode":"5","bcode":"518","code":"51801","name":"\uc5f0\uad6c\u00b7\uc2e4\ud5d8\u00b7\uae30\uc220"},"51806":{"kcode":"9309","tcode":"24","mcode":"5","bcode":"518","code":"51806","name":"\ubc18\ub3c4\uccb4\u00b7LCD"},"51807":{"kcode":"9310","tcode":"24","mcode":"5","bcode":"518","code":"51807","name":"\uc815\ubcf4\ud1b5\uc2e0\u00b7IT"},"51808":{"kcode":"9311","tcode":"24","mcode":"5","bcode":"518","code":"51808","name":"\uc758\ub8cc\u00b7\uc81c\uc57d"},"51810":{"kcode":"9312","tcode":"24","mcode":"5","bcode":"518","code":"51810","name":"\ud658\uacbd"},"51811":{"kcode":"9313","tcode":"24","mcode":"5","bcode":"518","code":"51811","name":"\ud654\ud559\u00b7\uc12c\uc720"},"51812":{"kcode":"9314","tcode":"24","mcode":"5","bcode":"518","code":"51812","name":"\uc804\uae30\u00b7\uc804\uc790\uc5f0\uad6c"},"51813":{"kcode":"9315","tcode":"24","mcode":"5","bcode":"518","code":"51813","name":"\uc6d0\uc790\ub825\u00b7\uc5d0\ub108\uc9c0"},"51814":{"kcode":"9316","tcode":"24","mcode":"5","bcode":"518","code":"51814","name":"\uc0dd\uba85\uacf5\ud559"},"51815":{"kcode":"9317","tcode":"24","mcode":"5","bcode":"518","code":"51815","name":"\uae30\uacc4\u00b7\uc790\ub3d9\ucc28"},"51816":{"kcode":"9318","tcode":"24","mcode":"5","bcode":"518","code":"51816","name":"\uae08\uc18d\u00b7\ucca0\uac15"},"51821":{"kcode":"9323","tcode":"24","mcode":"5","bcode":"518","code":"51821","name":"\uc81c\uc870\u00b7\uacf5\uc815"},"51824":{"kcode":"9326","tcode":"24","mcode":"5","bcode":"518","code":"51824","name":"\ub85c\ubd07\u00b7\uc790\ub3d9\ud654"},"51826":{"kcode":"9327","tcode":"24","mcode":"5","bcode":"518","code":"51826","name":"\uc870\uc120\u00b7\ud56d\uacf5\u00b7\uc6b0\uc8fc"},"51828":{"kcode":"9328","tcode":"24","mcode":"5","bcode":"518","code":"51828","name":"\uac74\uc124\u00b7\uad50\ud1b5\uc5f0\uad6c"},"51830":{"kcode":"9319","tcode":"24","mcode":"5","bcode":"518","code":"51830","name":"\uc2dd\ud488\uc5f0\uad6c"},"51831":{"kcode":"9329","tcode":"24","mcode":"5","bcode":"518","code":"51831","name":"\ubaa9\uc7ac\u00b7\uc81c\uc9c0"},"51833":{"kcode":"9330","tcode":"24","mcode":"5","bcode":"518","code":"51833","name":"\uad50\uc721\u00b7\uad50\uc7ac\uc5f0\uad6c"},"51834":{"kcode":"22539","tcode":"24","mcode":"5","bcode":"518","code":"51834","name":"\ub18d\ub9bc\u00b7\ucd95\uc0b0\uc5f0\uad6c"},"51835":{"kcode":"22540","tcode":"24","mcode":"5","bcode":"518","code":"51835","name":"\uacbd\uc601\u00b7\uacbd\uc81c\uc5f0\uad6c"},"51836":{"kcode":"22541","tcode":"24","mcode":"5","bcode":"518","code":"51836","name":"\uc778\ubb38\u00b7\uc0ac\ud68c\uacfc\ud559"},"51837":{"kcode":"22542","tcode":"24","mcode":"5","bcode":"518","code":"51837","name":"\uc2e0\uc18c\uc7ac\uac1c\ubc1c"},"51838":{"kcode":"8672","tcode":"24","mcode":"5","bcode":"518","code":"51838","name":"CTO"}}},"522":{"kcode":"21816","tcode":"9","mcode":"9","bcode":"5","code":"522","name":"\ubb38\ud654\u00b7\uc608\uc220\u00b7\uc885\uad50","keyword":{"52201":{"kcode":"21771","tcode":"24","mcode":"5","bcode":"522","code":"52201","name":"\ubaa9\ud68c\uc790\u00b7\ubaa9\uc0ac"},"52205":{"kcode":"21775","tcode":"24","mcode":"5","bcode":"522","code":"52205","name":"\uae30\ud0c0\uc885\uad50\uc9c1"},"52206":{"kcode":"21832","tcode":"24","mcode":"5","bcode":"522","code":"52206","name":"\uc804\ub3c4\u00b7\uc120\uad50\u00b7\uc0ac\uc5ed"},"52210":{"kcode":"21836","tcode":"24","mcode":"5","bcode":"522","code":"52210","name":"\uad50\ud68c\uc720\uae09\ubd09\uc0ac\u00b7\uac04\uc0ac"},"52211":{"kcode":"21837","tcode":"24","mcode":"5","bcode":"522","code":"52211","name":"\uad50\ud68c\uc0ac\ubb34\u00b7\ud589\uc815\u00b7\uad00\ub9ac"},"52213":{"kcode":"9282","tcode":"24","mcode":"5","bcode":"522","code":"52213","name":"\ud050\ub808\uc774\ud130"},"52214":{"kcode":"22522","tcode":"24","mcode":"5","bcode":"522","code":"52214","name":"\ubc15\ubb3c\uad00\ud559\uc608\uc0ac"},"52215":{"kcode":"26600","tcode":"24","mcode":"5","bcode":"522","code":"52215","name":"\ubb38\ud654(\ubb38\ud654\uc7ac)"},"52216":{"kcode":"26601","tcode":"24","mcode":"5","bcode":"522","code":"52216","name":"\uc21c\uc218\ubbf8\uc220\u00b7\uc74c\uc545"},"52217":{"kcode":"26602","tcode":"24","mcode":"5","bcode":"522","code":"52217","name":"\ubb38\ud654\uc774\ubca4\ud2b8"}}},"523":{"kcode":"21817","tcode":"9","mcode":"9","bcode":"5","code":"523","name":"\ud2b9\uc218\uc9c1","keyword":{"52301":{"kcode":"21776","tcode":"24","mcode":"5","bcode":"523","code":"52301","name":"\uc7a0\uc218\ubd80\u00b7\uc218\uc911\uae30\ub2a5"},"52302":{"kcode":"22683","tcode":"24","mcode":"5","bcode":"523","code":"52302","name":"\uc9c0\ub3c4\uc81c\uc791\u00b7\uae30\uc220\ub3c4\ud574\uc0ac"},"52303":{"kcode":"22684","tcode":"24","mcode":"5","bcode":"523","code":"52303","name":"\uc11d\uc7ac\uac00\uacf5\u00b7\ucc44\uc11d\uc6d0"},"52304":{"kcode":"22685","tcode":"24","mcode":"5","bcode":"523","code":"52304","name":"\ubcf4\uc11d\uac10\uc815\uc0ac"}}},"524":{"kcode":"7959","tcode":"9","mcode":"9","bcode":"5","code":"524","name":"\uc784\uc6d0\u00b7CEO","keyword":{"52401":{"kcode":"8668","tcode":"24","mcode":"5","bcode":"524","code":"52401","name":"\uc784\uc6d0"},"52402":{"kcode":"8669","tcode":"24","mcode":"5","bcode":"524","code":"52402","name":"\uac04\ubd80"}}}}},"6":{"bcode":"6","name":"\uad50\uc721","code":{"601":{"kcode":"8041","tcode":"9","mcode":"9","bcode":"6","code":"601","name":"\uad50\uc721\uae30\ud68d\u00b7\uad50\uc7ac","keyword":{"60101":{"kcode":"9464","tcode":"24","mcode":"6","bcode":"601","code":"60101","name":"\uad50\uc721\uae30\ud68d"},"60102":{"kcode":"9465","tcode":"24","mcode":"6","bcode":"601","code":"60102","name":"\uad50\uc721\uc9c4\ud589"},"60104":{"kcode":"9466","tcode":"24","mcode":"6","bcode":"601","code":"60104","name":"\uad50\uc721\ud589\uc815"},"60107":{"kcode":"9469","tcode":"24","mcode":"6","bcode":"601","code":"60107","name":"\uad50\uc7ac\u00b7\ucee8\ud150\uce20\uac1c\ubc1c"},"60108":{"kcode":"9467","tcode":"24","mcode":"6","bcode":"601","code":"60108","name":"\uad50\uc721\ud504\ub85c\uadf8\ub7a8"},"60110":{"kcode":"22686","tcode":"24","mcode":"6","bcode":"601","code":"60110","name":"\uad50\uc218\uc124\uacc4"},"60111":{"kcode":"22687","tcode":"24","mcode":"6","bcode":"601","code":"60111","name":"\ud3c9\uc0dd\uad50\uc721\uc0ac"}}},"602":{"kcode":"8034","tcode":"9","mcode":"9","bcode":"6","code":"602","name":"\ucd08\uc911\uace0\u00b7\ud2b9\uc218\ud559\uad50","keyword":{"60203":{"kcode":"9364","tcode":"24","mcode":"6","bcode":"602","code":"60203","name":"\ucd08\ub4f1\ud559\uad50"},"60204":{"kcode":"9365","tcode":"24","mcode":"6","bcode":"602","code":"60204","name":"\uc911\ud559\uad50"},"60205":{"kcode":"9366","tcode":"24","mcode":"6","bcode":"602","code":"60205","name":"\uace0\ub4f1\ud559\uad50"},"60206":{"kcode":"9367","tcode":"24","mcode":"6","bcode":"602","code":"60206","name":"\uad6d\uc5b4\u00b7\ub3c5\uc11c\u00b7\ub17c\uc220"},"60207":{"kcode":"9368","tcode":"24","mcode":"6","bcode":"602","code":"60207","name":"\uc601\uc5b4"},"60208":{"kcode":"9369","tcode":"24","mcode":"6","bcode":"602","code":"60208","name":"\uc218\ud559"},"60209":{"kcode":"9370","tcode":"24","mcode":"6","bcode":"602","code":"60209","name":"\uacfc\ud559"},"60210":{"kcode":"9371","tcode":"24","mcode":"6","bcode":"602","code":"60210","name":"\ubb3c\ub9ac"},"60211":{"kcode":"9372","tcode":"24","mcode":"6","bcode":"602","code":"60211","name":"\ud654\ud559"},"60212":{"kcode":"9373","tcode":"24","mcode":"6","bcode":"602","code":"60212","name":"\uc0dd\ubb3c"},"60214":{"kcode":"9375","tcode":"24","mcode":"6","bcode":"602","code":"60214","name":"\uad6d\uc0ac\u00b7\uc138\uacc4\uc0ac"},"60216":{"kcode":"9377","tcode":"24","mcode":"6","bcode":"602","code":"60216","name":"\uc9c0\uad6c\uacfc\ud559"},"60217":{"kcode":"9378","tcode":"24","mcode":"6","bcode":"602","code":"60217","name":"\uc0ac\ud68c"},"60218":{"kcode":"9379","tcode":"24","mcode":"6","bcode":"602","code":"60218","name":"\uc9c0\ub9ac\u00b7\uc138\uacc4\uc9c0\ub9ac"},"60219":{"kcode":"9380","tcode":"24","mcode":"6","bcode":"602","code":"60219","name":"\uc724\ub9ac\u00b7\ub3c4\ub355"},"60220":{"kcode":"9381","tcode":"24","mcode":"6","bcode":"602","code":"60220","name":"\ud55c\ubb38"},"60221":{"kcode":"9382","tcode":"24","mcode":"6","bcode":"602","code":"60221","name":"\uccb4\uc721"},"60223":{"kcode":"9383","tcode":"24","mcode":"6","bcode":"602","code":"60223","name":"\uacbd\uc81c\u00b7\uc0c1\uc5c5"},"60225":{"kcode":"9385","tcode":"24","mcode":"6","bcode":"602","code":"60225","name":"\ubbf8\uc220"},"60226":{"kcode":"9386","tcode":"24","mcode":"6","bcode":"602","code":"60226","name":"\uc74c\uc545"},"60227":{"kcode":"9387","tcode":"24","mcode":"6","bcode":"602","code":"60227","name":"\ucef4\ud4e8\ud130"},"60228":{"kcode":"9388","tcode":"24","mcode":"6","bcode":"602","code":"60228","name":"\uae30\uc220\u00b7\uac00\uc815"},"60229":{"kcode":"9389","tcode":"24","mcode":"6","bcode":"602","code":"60229","name":"\uc81c2\uc678\uad6d\uc5b4"},"60230":{"kcode":"21288","tcode":"24","mcode":"6","bcode":"602","code":"60230","name":"\uad50\uc0ac"},"60231":{"kcode":"21289","tcode":"24","mcode":"6","bcode":"602","code":"60231","name":"\ubcf4\uc870\uad50\uc0ac"},"60234":{"kcode":"22688","tcode":"24","mcode":"6","bcode":"602","code":"60234","name":"\ubcf4\uac74\u00b7\uc591\ud638\uad50\uc0ac"},"60235":{"kcode":"22689","tcode":"24","mcode":"6","bcode":"602","code":"60235","name":"\uae30\uac04\uc81c\uad50\uc0ac"},"60236":{"kcode":"22690","tcode":"24","mcode":"6","bcode":"602","code":"60236","name":"\ubc29\uacfc\ud6c4\uad50\uc0ac"},"60237":{"kcode":"22691","tcode":"24","mcode":"6","bcode":"602","code":"60237","name":"\ud2b9\uc218\ud559\uad50\uad50\uc0ac"},"60238":{"kcode":"28601","tcode":"24","mcode":"6","bcode":"602","code":"60238","name":"\uc5ed\uc0ac"}}},"603":{"kcode":"8036","tcode":"9","mcode":"9","bcode":"6","code":"603","name":"\ud559\uc2b5\uc9c0\u00b7\uacfc\uc678\u00b7\ubc29\ubb38","keyword":{"60301":{"kcode":"9409","tcode":"24","mcode":"6","bcode":"603","code":"60301","name":"\ud559\uc2b5\uc9c0\uad50\uc0ac"},"60302":{"kcode":"9410","tcode":"24","mcode":"6","bcode":"603","code":"60302","name":"\uacfc\uc678\uad50\uc0ac"},"60303":{"kcode":"9411","tcode":"24","mcode":"6","bcode":"603","code":"60303","name":"\ubc29\ubb38\ud559\uc2b5"},"60304":{"kcode":"9412","tcode":"24","mcode":"6","bcode":"603","code":"60304","name":"\uacf5\ubd80\ubc29\uad50\uc0ac"},"60305":{"kcode":"21292","tcode":"24","mcode":"6","bcode":"603","code":"60305","name":"\uc628\ub77c\uc778\u00b7\ud1b5\uc2e0\uad50\uc721"},"60307":{"kcode":"22692","tcode":"24","mcode":"6","bcode":"603","code":"60307","name":"\uc804\ud654\uc601\uc5b4"}}},"604":{"kcode":"8033","tcode":"9","mcode":"9","bcode":"6","code":"604","name":"\uc720\uce58\uc6d0\u00b7\ubcf4\uc721","keyword":{"60401":{"kcode":"9357","tcode":"24","mcode":"6","bcode":"604","code":"60401","name":"\uc720\uce58\uc6d0\uad50\uc0ac"},"60402":{"kcode":"9358","tcode":"24","mcode":"6","bcode":"604","code":"60402","name":"\ubcf4\uc721\uad50\uc0ac"},"60403":{"kcode":"9359","tcode":"24","mcode":"6","bcode":"604","code":"60403","name":"\uc5b4\ub9b0\uc774\uc9d1\uad50\uc0ac"},"60404":{"kcode":"9360","tcode":"24","mcode":"6","bcode":"604","code":"60404","name":"\ub180\uc774\ubc29\uad50\uc0ac"},"60406":{"kcode":"22693","tcode":"24","mcode":"6","bcode":"604","code":"60406","name":"\ud37c\ud3ec\uba3c\uc2a4\uac15\uc0ac"},"60409":{"kcode":"31509","tcode":"24","mcode":"6","bcode":"604","code":"60409","name":"\ud658\uacbd\ud310\uafb8\ubbf8\uae30"}}},"605":{"kcode":"8038","tcode":"9","mcode":"9","bcode":"6","code":"605","name":"\uc804\ubb38\uc9c1\uc5c5\u00b7IT\uac15\uc0ac","keyword":{"60501":{"kcode":"9420","tcode":"24","mcode":"6","bcode":"605","code":"60501","name":"\uc804\ubb38\uc9c1\uc5c5\uac15\uc0ac"},"60502":{"kcode":"9421","tcode":"24","mcode":"6","bcode":"605","code":"60502","name":"\uc6b4\uc804\ud559\uc6d0\uac15\uc0ac"},"60503":{"kcode":"9422","tcode":"24","mcode":"6","bcode":"605","code":"60503","name":"\ubbf8\uc6a9\u00b7\ubdf0\ud2f0\uac15\uc0ac"},"60505":{"kcode":"9424","tcode":"24","mcode":"6","bcode":"605","code":"60505","name":"\ud328\uc158\u00b7\ub514\uc790\uc778\uac15\uc0ac"},"60507":{"kcode":"9426","tcode":"24","mcode":"6","bcode":"605","code":"60507","name":"\ubb34\uc6a9\u00b7\ub304\uc2a4\uac15\uc0ac"},"60508":{"kcode":"9427","tcode":"24","mcode":"6","bcode":"605","code":"60508","name":"\ubb38\ud654\uc13c\ud130"},"60509":{"kcode":"9428","tcode":"24","mcode":"6","bcode":"605","code":"60509","name":"\uc694\ub9ac\uac15\uc0ac"},"60510":{"kcode":"21777","tcode":"24","mcode":"6","bcode":"605","code":"60510","name":"\uc2a4\ud3ec\uce20\uac15\uc0ac"},"60512":{"kcode":"22694","tcode":"24","mcode":"6","bcode":"605","code":"60512","name":"CAD\uac15\uc0ac"},"60513":{"kcode":"22695","tcode":"24","mcode":"6","bcode":"605","code":"60513","name":"\uc74c\uc545\u00b7\ud53c\uc544\ub178\u00b7\uae30\ud0c0"},"60514":{"kcode":"22696","tcode":"24","mcode":"6","bcode":"605","code":"60514","name":"\ubbf8\uc220\u00b7\ub9cc\ud654"},"60515":{"kcode":"22697","tcode":"24","mcode":"6","bcode":"605","code":"60515","name":"\uc9c1\uc5c5\ud6c8\ub828\uad50\uc0ac"},"60516":{"kcode":"22698","tcode":"24","mcode":"6","bcode":"605","code":"60516","name":"\uc8fc\uc2dd\u00b7\ubd80\ub3d9\uc0b0"},"60517":{"kcode":"22699","tcode":"24","mcode":"6","bcode":"605","code":"60517","name":"\uace0\uc2dc\u00b7\uc790\uaca9\uc99d\uac15\uc0ac"},"60518":{"kcode":"26603","tcode":"24","mcode":"6","bcode":"605","code":"60518","name":"\ucef4\ud4e8\ud130\u00b7IT\uac15\uc0ac"}}},"606":{"kcode":"8035","tcode":"9","mcode":"9","bcode":"6","code":"606","name":"\uc785\uc2dc\u00b7\ubcf4\uc2b5\u00b7\uc18d\uc148\ud559\uc6d0","keyword":{"60601":{"kcode":"9390","tcode":"24","mcode":"6","bcode":"606","code":"60601","name":"\uc77c\ubc18\ud559\uc6d0\uac15\uc0ac"},"60604":{"kcode":"9393","tcode":"24","mcode":"6","bcode":"606","code":"60604","name":"\uc608\uccb4\ub2a5\uac15\uc0ac"},"60605":{"kcode":"9394","tcode":"24","mcode":"6","bcode":"606","code":"60605","name":"\uae30\uc220\uc9c1\uac15\uc0ac"},"60606":{"kcode":"9395","tcode":"24","mcode":"6","bcode":"606","code":"60606","name":"\uc785\uc2dc\ud559\uc6d0\uac15\uc0ac"},"60614":{"kcode":"9405","tcode":"24","mcode":"6","bcode":"606","code":"60614","name":"\uc74c\uc545\u00b7\uc74c\ub300\uc785\uc2dc"},"60615":{"kcode":"9406","tcode":"24","mcode":"6","bcode":"606","code":"60615","name":"\uccb4\uc721\u00b7\uccb4\ub300\uc785\uc2dc"},"60616":{"kcode":"9407","tcode":"24","mcode":"6","bcode":"606","code":"60616","name":"\ubbf8\uc220\u00b7\ubbf8\ub300\uc785\uc2dc"},"60617":{"kcode":"9408","tcode":"24","mcode":"6","bcode":"606","code":"60617","name":"\uad6d\uc5b4\u00b7\ub17c\uc220\u00b7\ub3c5\uc11c"},"60620":{"kcode":"22700","tcode":"24","mcode":"6","bcode":"606","code":"60620","name":"\uc218\ud559"},"60621":{"kcode":"22701","tcode":"24","mcode":"6","bcode":"606","code":"60621","name":"\uacfc\ud559"},"60622":{"kcode":"22702","tcode":"24","mcode":"6","bcode":"606","code":"60622","name":"\uc0ac\ud68c"},"60623":{"kcode":"22703","tcode":"24","mcode":"6","bcode":"606","code":"60623","name":"\uad6d\uc0ac\u00b7\uc138\uacc4\uc0ac"},"60624":{"kcode":"22704","tcode":"24","mcode":"6","bcode":"606","code":"60624","name":"\uc804\uc784\uac15\uc0ac"},"60625":{"kcode":"22705","tcode":"24","mcode":"6","bcode":"606","code":"60625","name":"\ud30c\ud2b8\uac15\uc0ac"},"60627":{"kcode":"31511","tcode":"24","mcode":"6","bcode":"606","code":"60627","name":"\uc2e4\uc5c5\uacc4\ud559\uc6d0\uac15\uc0ac"}}},"609":{"kcode":"8042","tcode":"9","mcode":"9","bcode":"6","code":"609","name":"\ud559\uc6d0\uad00\ub9ac\u00b7\uc6b4\uc601\u00b7\uc0c1\ub2f4","keyword":{"60901":{"kcode":"9478","tcode":"24","mcode":"6","bcode":"609","code":"60901","name":"\ud559\uc6d0\uc5d0\uc774\uc804\ud2b8"},"60903":{"kcode":"9471","tcode":"24","mcode":"6","bcode":"609","code":"60903","name":"\uad50\uc721\uc0c1\ub2f4\u00b7\uc548\ub0b4"},"60905":{"kcode":"9476","tcode":"24","mcode":"6","bcode":"609","code":"60905","name":"\uc6d0\uc0dd\uad00\ub9ac\u00b7\uc720\uce58"},"60906":{"kcode":"9477","tcode":"24","mcode":"6","bcode":"609","code":"60906","name":"\uc218\uac15\uc0dd\uad00\ub9ac"},"60907":{"kcode":"9473","tcode":"24","mcode":"6","bcode":"609","code":"60907","name":"\uc720\ud559\uc0c1\ub2f4"},"60908":{"kcode":"9479","tcode":"24","mcode":"6","bcode":"609","code":"60908","name":"\ud559\uc6d0\uc6b4\uc601"},"60909":{"kcode":"31513","tcode":"24","mcode":"6","bcode":"609","code":"60909","name":"\ud504\ub85c\uadf8\ub7a8\uc0c1\ub2f4"}}},"610":{"kcode":"8040","tcode":"9","mcode":"9","bcode":"6","code":"610","name":"\ub300\ud559\uad50\uc218\u00b7\ud589\uc815\uc9c1","keyword":{"61002":{"kcode":"9456","tcode":"24","mcode":"6","bcode":"610","code":"61002","name":"\uad50\uc9c1\uc6d0"},"61003":{"kcode":"9457","tcode":"24","mcode":"6","bcode":"610","code":"61003","name":"\ud589\uc815\u00b7\uc0ac\ubb34\uc9c1"},"61005":{"kcode":"9459","tcode":"24","mcode":"6","bcode":"610","code":"61005","name":"\uc804\uc0b0\uc2e4"},"61006":{"kcode":"9460","tcode":"24","mcode":"6","bcode":"610","code":"61006","name":"\uc0c1\ub2f4\uc9c1"},"61007":{"kcode":"9461","tcode":"24","mcode":"6","bcode":"610","code":"61007","name":"\uc785\ud559\uc0ac\uc815\uad00"},"61008":{"kcode":"9462","tcode":"24","mcode":"6","bcode":"610","code":"61008","name":"\uacc4\uc57d\uc9c1"},"61009":{"kcode":"9463","tcode":"24","mcode":"6","bcode":"610","code":"61009","name":"\uc870\uad50"},"61010":{"kcode":"22725","tcode":"24","mcode":"6","bcode":"610","code":"61010","name":"\ub300\ud559\uad50\uc218"},"61012":{"kcode":"22726","tcode":"24","mcode":"6","bcode":"610","code":"61012","name":"\ub300\ud559\uac15\uc0ac"},"61013":{"kcode":"22727","tcode":"24","mcode":"6","bcode":"610","code":"61013","name":"\uc2dc\uac04\uac15\uc0ac"},"61014":{"kcode":"22728","tcode":"24","mcode":"6","bcode":"610","code":"61014","name":"\uae30\uc219\uc0ac\uc0ac\uac10"}}},"611":{"kcode":"22724","tcode":"9","mcode":"9","bcode":"6","code":"611","name":"\uc678\uad6d\uc5b4\u00b7\uc5b4\ud559\uc6d0","keyword":{"61101":{"kcode":"22706","tcode":"24","mcode":"6","bcode":"611","code":"61101","name":"\uc601\uc5b4"},"61102":{"kcode":"22707","tcode":"24","mcode":"6","bcode":"611","code":"61102","name":"\uc601\uc5b4\ud68c\ud654"},"61103":{"kcode":"22708","tcode":"24","mcode":"6","bcode":"611","code":"61103","name":"TESOL\u00b7CELTA"},"61104":{"kcode":"22709","tcode":"24","mcode":"6","bcode":"611","code":"61104","name":"TEPS"},"61105":{"kcode":"22710","tcode":"24","mcode":"6","bcode":"611","code":"61105","name":"\uc911\uad6d\uc5b4\u00b7HSK"},"61106":{"kcode":"22711","tcode":"24","mcode":"6","bcode":"611","code":"61106","name":"\uc77c\ubcf8\uc5b4\u00b7JPT"},"61107":{"kcode":"22712","tcode":"24","mcode":"6","bcode":"611","code":"61107","name":"\uae30\ud0c0\uc678\uad6d\uc5b4"},"61108":{"kcode":"22713","tcode":"24","mcode":"6","bcode":"611","code":"61108","name":"\uc5b4\ud559\uc6d0\uac15\uc0ac"},"61109":{"kcode":"22714","tcode":"24","mcode":"6","bcode":"611","code":"61109","name":"\ud1a0\uc775RC\u00b7LC"},"61110":{"kcode":"22715","tcode":"24","mcode":"6","bcode":"611","code":"61110","name":"\ud1a0\ud50cCBT\u00b7IBT"},"61111":{"kcode":"22716","tcode":"24","mcode":"6","bcode":"611","code":"61111","name":"SAT\u00b7GRE"},"61112":{"kcode":"22717","tcode":"24","mcode":"6","bcode":"611","code":"61112","name":"IELTS\u00b7OPIc"},"61114":{"kcode":"22719","tcode":"24","mcode":"6","bcode":"611","code":"61114","name":"\ud3b8\uc785\uc601\uc5b4"},"61115":{"kcode":"22720","tcode":"24","mcode":"6","bcode":"611","code":"61115","name":"\ud1b5\uc5ed\u00b7\ubc88\uc5ed"},"61116":{"kcode":"22721","tcode":"24","mcode":"6","bcode":"611","code":"61116","name":"\uc6d0\uc5b4\ubbfc\u00b7\uad50\ud3ec\uac15\uc0ac"},"61117":{"kcode":"22722","tcode":"24","mcode":"6","bcode":"611","code":"61117","name":"\uc601\uc5b4\ucea0\ud504\uac15\uc0ac"},"61118":{"kcode":"22723","tcode":"24","mcode":"6","bcode":"611","code":"61118","name":"\ud55c\uad6d\uc5b4"}}}}},"7":{"bcode":"7","name":"\ubbf8\ub514\uc5b4","code":{"702":{"kcode":"8029","tcode":"9","mcode":"9","bcode":"7","code":"702","name":"\uc5f0\uc608\u00b7\uc5d4\ud130\ud14c\uc778\uba3c\ud2b8","keyword":{"70204":{"kcode":"9523","tcode":"24","mcode":"7","bcode":"702","code":"70204","name":"\uc5f0\uc608\ub9e4\ub2c8\uc800"},"70205":{"kcode":"9524","tcode":"24","mcode":"7","bcode":"702","code":"70205","name":"\ub85c\ub4dc\ub9e4\ub2c8\uc800"},"70206":{"kcode":"9525","tcode":"24","mcode":"7","bcode":"702","code":"70206","name":"\ucf54\ub514\u00b7\uba54\uc774\ud06c\uc5c5"},"70207":{"kcode":"9526","tcode":"24","mcode":"7","bcode":"702","code":"70207","name":"\uc5f0\uc608\uc778\u00b7\ubc30\uc6b0\u00b7\uac00\uc218"},"70210":{"kcode":"9530","tcode":"24","mcode":"7","bcode":"702","code":"70210","name":"\uc5f0\uc608\uae30\ud68d\u00b7\uc624\ub514\uc158"},"70211":{"kcode":"9527","tcode":"24","mcode":"7","bcode":"702","code":"70211","name":"CF\u00b7\ud328\uc158\ubaa8\ub378"},"70214":{"kcode":"22729","tcode":"24","mcode":"7","bcode":"702","code":"70214","name":"\uce90\uc2a4\ud305\ub9e4\ub2c8\uc800"}}},"703":{"kcode":"8025","tcode":"9","mcode":"9","bcode":"7","code":"703","name":"\uce74\uba54\ub77c\u00b7\uc870\uba85\u00b7\ubbf8\uc220","keyword":{"70305":{"kcode":"9492","tcode":"24","mcode":"7","bcode":"703","code":"70305","name":"\uc601\uc0c1\ud3b8\uc9d1"},"70307":{"kcode":"9488","tcode":"24","mcode":"7","bcode":"703","code":"70307","name":"\ubc29\uc1a1\uce74\uba54\ub77c"},"70309":{"kcode":"9491","tcode":"24","mcode":"7","bcode":"703","code":"70309","name":"\ucd2c\uc601"},"70311":{"kcode":"9490","tcode":"24","mcode":"7","bcode":"703","code":"70311","name":"\uc870\uba85"},"70312":{"kcode":"9495","tcode":"24","mcode":"7","bcode":"703","code":"70312","name":"\ubc29\uc1a1\ubbf8\uc220\u00b7CG"},"70313":{"kcode":"9496","tcode":"24","mcode":"7","bcode":"703","code":"70313","name":"\ubc29\uc1a1\uae30\uc220\u00b7TD"},"70317":{"kcode":"22731","tcode":"24","mcode":"7","bcode":"703","code":"70317","name":"\ubc29\uc1a1\uc1a1\ucd9c\u00b7\uc1a1\uc2e0"},"70318":{"kcode":"22732","tcode":"24","mcode":"7","bcode":"703","code":"70318","name":"\ubc29\uc1a1\uc2dc\uc2a4\ud15c"},"70319":{"kcode":"22733","tcode":"24","mcode":"7","bcode":"703","code":"70319","name":"\ub3d9\uc601\uc0c1\ucd2c\uc601"}}},"704":{"kcode":"8030","tcode":"9","mcode":"9","bcode":"7","code":"704","name":"\uacf5\uc5f0\u00b7\ubb34\ub300\u00b7\uc2a4\ud15d","keyword":{"70405":{"kcode":"9531","tcode":"24","mcode":"7","bcode":"704","code":"70405","name":"\uacf5\uc5f0\uae30\ud68d"},"70406":{"kcode":"9532","tcode":"24","mcode":"7","bcode":"704","code":"70406","name":"\uacf5\uc5f0\u00b7\uc5f0\uc8fc\u00b7\ud569\ucc3d"},"70413":{"kcode":"22759","tcode":"24","mcode":"7","bcode":"704","code":"70413","name":"\ubb34\ub300\uc81c\uc791\u00b7\uc124\uce58"},"70414":{"kcode":"22760","tcode":"24","mcode":"7","bcode":"704","code":"70414","name":"\uc2a4\ud15d\u00b7\uc11c\ud3ec\ud2b8"},"70415":{"kcode":"22761","tcode":"24","mcode":"7","bcode":"704","code":"70415","name":"\ubba4\uc9c0\uceec\u00b7\ubb34\uc6a9\u00b7\uc5f0\uadf9"},"70416":{"kcode":"22762","tcode":"24","mcode":"7","bcode":"704","code":"70416","name":"\ubbf9\uc11c\u00b7\uc624\ud37c\ub808\uc774\ud130"},"70417":{"kcode":"22763","tcode":"24","mcode":"7","bcode":"704","code":"70417","name":"\ubb34\ub300\uac10\ub3c5"}}},"705":{"kcode":"8027","tcode":"9","mcode":"9","bcode":"7","code":"705","name":"\uc791\uac00\u00b7\uc2dc\ub098\ub9ac\uc624","keyword":{"70501":{"kcode":"9506","tcode":"24","mcode":"7","bcode":"705","code":"70501","name":"\uc791\uac00\u00b7\ud3c9\ub860\uac00"},"70503":{"kcode":"9510","tcode":"24","mcode":"7","bcode":"705","code":"70503","name":"\ubc29\uc1a1\u00b7\uad6c\uc131\uc791\uac00"},"70506":{"kcode":"9508","tcode":"24","mcode":"7","bcode":"705","code":"70506","name":"\uc2dc\ub098\ub9ac\uc624\uc791\uac00"},"70507":{"kcode":"9512","tcode":"24","mcode":"7","bcode":"705","code":"70507","name":"\uc678\ud654\ubc88\uc5ed\uc791\uac00"},"70508":{"kcode":"9513","tcode":"24","mcode":"7","bcode":"705","code":"70508","name":"\uc2a4\ud06c\ub9bd\ud130"},"70509":{"kcode":"22764","tcode":"24","mcode":"7","bcode":"705","code":"70509","name":"\ub4dc\ub77c\ub9c8\uc791\uac00"},"70510":{"kcode":"22765","tcode":"24","mcode":"7","bcode":"705","code":"70510","name":"\uc2a4\ud1a0\ub9ac\ud154\ub9c1"},"70511":{"kcode":"22766","tcode":"24","mcode":"7","bcode":"705","code":"70511","name":"\ud504\ub9ac\ubdf0\uc5b4"}}},"708":{"kcode":"8031","tcode":"9","mcode":"9","bcode":"7","code":"708","name":"\uc601\ud654\uc81c\uc791\u00b7\ubc30\uae09","keyword":{"70805":{"kcode":"9543","tcode":"24","mcode":"7","bcode":"708","code":"70805","name":"\uc601\ud654\uae30\ud68d\u00b7\uc81c\uc791"},"70806":{"kcode":"9544","tcode":"24","mcode":"7","bcode":"708","code":"70806","name":"\uc601\ud654\uac10\ub3c5\u00b7\uc5f0\ucd9c"},"70808":{"kcode":"9545","tcode":"24","mcode":"7","bcode":"708","code":"70808","name":"\uc601\ud654\uc5d4\uc9c0\ub2c8\uc5b4"},"70809":{"kcode":"9546","tcode":"24","mcode":"7","bcode":"708","code":"70809","name":"\uc601\ud654\u00b7\uc2a4\ud15d"},"70812":{"kcode":"9548","tcode":"24","mcode":"7","bcode":"708","code":"70812","name":"\uc601\ud654\ud64d\ubcf4"},"70813":{"kcode":"9549","tcode":"24","mcode":"7","bcode":"708","code":"70813","name":"\uc601\ud654\ubc30\uae09\u00b7\uc720\ud1b5"},"70814":{"kcode":"9550","tcode":"24","mcode":"7","bcode":"708","code":"70814","name":"\ud2b9\uc218\ud6a8\uacfc\u00b7SF"},"70815":{"kcode":"22777","tcode":"24","mcode":"7","bcode":"708","code":"70815","name":"\uc601\uc0ac\uae30\uc0ac"},"70816":{"kcode":"22778","tcode":"24","mcode":"7","bcode":"708","code":"70816","name":"\uc601\ud654\uc74c\uc545\u00b7OST"},"70817":{"kcode":"22779","tcode":"24","mcode":"7","bcode":"708","code":"70817","name":"\uc601\ud654\ubbf8\uc220\u00b7\uc18c\ud488"}}},"709":{"kcode":"8032","tcode":"9","mcode":"9","bcode":"7","code":"709","name":"\uad11\uace0\u00b7\uce74\ud53c\u00b7CF","keyword":{"70901":{"kcode":"9551","tcode":"24","mcode":"7","bcode":"709","code":"70901","name":"\uad11\uace0PD\u00b7\uc81c\uc791"},"70902":{"kcode":"9552","tcode":"24","mcode":"7","bcode":"709","code":"70902","name":"\uad11\uace0AE\u00b7\uae30\ud68d"},"70904":{"kcode":"9554","tcode":"24","mcode":"7","bcode":"709","code":"70904","name":"\uce74\ud53c\ub77c\uc774\ud130"},"70905":{"kcode":"9555","tcode":"24","mcode":"7","bcode":"709","code":"70905","name":"\uc544\ud2b8\ub514\ub809\ud130"},"70906":{"kcode":"9556","tcode":"24","mcode":"7","bcode":"709","code":"70906","name":"CM\ud50c\ub798\ub108"},"70907":{"kcode":"9557","tcode":"24","mcode":"7","bcode":"709","code":"70907","name":"PPL\u00b7BPL"},"70908":{"kcode":"9558","tcode":"24","mcode":"7","bcode":"709","code":"70908","name":"\ud3ec\uc9c0\uc154\ub2dd"},"70909":{"kcode":"9559","tcode":"24","mcode":"7","bcode":"709","code":"70909","name":"CF\uac10\ub3c5"},"70910":{"kcode":"22780","tcode":"24","mcode":"7","bcode":"709","code":"70910","name":"IMC"},"70911":{"kcode":"22781","tcode":"24","mcode":"7","bcode":"709","code":"70911","name":"\ucea0\ud398\uc778\u00b7\uc2ac\ub85c\uac74"}}},"710":{"kcode":"8028","tcode":"9","mcode":"9","bcode":"7","code":"710","name":"\uae30\uc790","keyword":{"71001":{"kcode":"9514","tcode":"24","mcode":"7","bcode":"710","code":"71001","name":"\uc2e0\ubb38\uae30\uc790"},"71002":{"kcode":"9515","tcode":"24","mcode":"7","bcode":"710","code":"71002","name":"\ubc29\uc1a1\uae30\uc790"},"71003":{"kcode":"9516","tcode":"24","mcode":"7","bcode":"710","code":"71003","name":"\uc7a1\uc9c0\u00b7\uc0ac\ubcf4\uae30\uc790"},"71004":{"kcode":"9517","tcode":"24","mcode":"7","bcode":"710","code":"71004","name":"\uc0ac\uc9c4\uae30\uc790"},"71005":{"kcode":"9518","tcode":"24","mcode":"7","bcode":"710","code":"71005","name":"\uc601\uc0c1\u00b7\ucde8\uc7ac\uae30\uc790"},"71006":{"kcode":"9519","tcode":"24","mcode":"7","bcode":"710","code":"71006","name":"\ucd2c\uc601\uae30\uc790"},"71007":{"kcode":"9520","tcode":"24","mcode":"7","bcode":"710","code":"71007","name":"\ud3b8\uc9d1\uae30\uc790"},"71008":{"kcode":"9521","tcode":"24","mcode":"7","bcode":"710","code":"71008","name":"\uc778\ud130\ub137\uae30\uc790"},"71010":{"kcode":"22782","tcode":"24","mcode":"7","bcode":"710","code":"71010","name":"\uc778\ud130\ub137\ub274\uc2a4\ud3b8\uc9d1"},"71011":{"kcode":"22783","tcode":"24","mcode":"7","bcode":"710","code":"71011","name":"\uc778\ud134\u00b7\uac1d\uc6d0\uae30\uc790"}}},"711":{"kcode":"8024","tcode":"9","mcode":"9","bcode":"7","code":"711","name":"\ubc29\uc1a1\uc5f0\ucd9c\u00b7PD\u00b7\uac10\ub3c5","keyword":{"71101":{"kcode":"9480","tcode":"24","mcode":"7","bcode":"711","code":"71101","name":"PD\u00b7\uc5f0\ucd9c"},"71102":{"kcode":"9483","tcode":"24","mcode":"7","bcode":"711","code":"71102","name":"\ubc29\uc1a1\uc5d4\uc9c0\ub2c8\uc5b4"},"71103":{"kcode":"9481","tcode":"24","mcode":"7","bcode":"711","code":"71103","name":"AD\u00b7\uc870\uc5f0\ucd9c"},"71104":{"kcode":"9482","tcode":"24","mcode":"7","bcode":"711","code":"71104","name":"FD\u00b7\uc5f0\ucd9c\ubcf4\uc870"},"71105":{"kcode":"9484","tcode":"24","mcode":"7","bcode":"711","code":"71105","name":"\ubc29\uc1a1\uae30\ud68d"},"71106":{"kcode":"9485","tcode":"24","mcode":"7","bcode":"711","code":"71106","name":"\ubc29\uc1a1\uc81c\uc791"},"71107":{"kcode":"9486","tcode":"24","mcode":"7","bcode":"711","code":"71107","name":"\ubc29\uc1a1\ud3b8\uc131"},"71108":{"kcode":"22784","tcode":"24","mcode":"7","bcode":"711","code":"71108","name":"\ubc29\uccad\uac1d\u00b7\ubcf4\uc870\ucd9c\uc5f0"},"71109":{"kcode":"22785","tcode":"24","mcode":"7","bcode":"711","code":"71109","name":"\uc678\ud654\ub354\ube59\u00b7\ubc88\uc5ed"},"71110":{"kcode":"22786","tcode":"24","mcode":"7","bcode":"711","code":"71110","name":"\ud648\uc1fc\ud551\ubc29\uc1a1"}}},"712":{"kcode":"8026","tcode":"9","mcode":"9","bcode":"7","code":"712","name":"\uc9c4\ud589\u00b7\uc544\ub098\uc6b4\uc11c","keyword":{"71201":{"kcode":"9499","tcode":"24","mcode":"7","bcode":"712","code":"71201","name":"\ub9ac\ud3ec\ud130"},"71202":{"kcode":"9500","tcode":"24","mcode":"7","bcode":"712","code":"71202","name":"\uc544\ub098\uc6b4\uc11c"},"71203":{"kcode":"9501","tcode":"24","mcode":"7","bcode":"712","code":"71203","name":"\uc575\ucee4"},"71204":{"kcode":"9502","tcode":"24","mcode":"7","bcode":"712","code":"71204","name":"MC\u00b7VJ"},"71205":{"kcode":"9503","tcode":"24","mcode":"7","bcode":"712","code":"71205","name":"\uc1fc\ud638\uc2a4\ud2b8"},"71206":{"kcode":"9504","tcode":"24","mcode":"7","bcode":"712","code":"71206","name":"\uc131\uc6b0\u00b7\ub354\ube59"},"71207":{"kcode":"9505","tcode":"24","mcode":"7","bcode":"712","code":"71207","name":"\uae30\uc0c1\uce90\uc2a4\ud130"},"71209":{"kcode":"22787","tcode":"24","mcode":"7","bcode":"712","code":"71209","name":"\uc0ac\ub0b4\ubc29\uc1a1"}}},"713":{"kcode":"22767","tcode":"9","mcode":"9","bcode":"7","code":"713","name":"\uc74c\uc545\u00b7\uc74c\ud5a5\u00b7\uc0ac\uc6b4\ub4dc","keyword":{"71301":{"kcode":"22768","tcode":"24","mcode":"7","bcode":"713","code":"71301","name":"\uc74c\ubc18\uae30\ud68d"},"71302":{"kcode":"22769","tcode":"24","mcode":"7","bcode":"713","code":"71302","name":"\ubcf4\uceec\ud2b8\ub808\uc774\ub2dd"},"71303":{"kcode":"22770","tcode":"24","mcode":"7","bcode":"713","code":"71303","name":"\uc791\uace1\u00b7\ud3b8\uace1"},"71304":{"kcode":"22771","tcode":"24","mcode":"7","bcode":"713","code":"71304","name":"\uc791\uc0ac"},"71305":{"kcode":"22772","tcode":"24","mcode":"7","bcode":"713","code":"71305","name":"\uc74c\ud5a5\u00b7\ub179\uc74c"},"71306":{"kcode":"22773","tcode":"24","mcode":"7","bcode":"713","code":"71306","name":"\uc624\ub514\uc624\uc5d4\uc9c0\ub2c8\uc5b4"},"71307":{"kcode":"22774","tcode":"24","mcode":"7","bcode":"713","code":"71307","name":"\uc0ac\uc6b4\ub4dc\ub514\ub809\ud130"},"71308":{"kcode":"22775","tcode":"24","mcode":"7","bcode":"713","code":"71308","name":"\uad6d\uc545\u00b7\uac00\uc57c\uae08"},"71309":{"kcode":"22776","tcode":"24","mcode":"7","bcode":"713","code":"71309","name":"\uc131\uc545\u00b7\ud074\ub798\uc2dd"}}},"714":{"kcode":"22369","tcode":"9","mcode":"9","bcode":"7","code":"714","name":"\uc778\uc1c4\u00b7\ucd9c\ud310\u00b7\ud3b8\uc9d1","keyword":{"71401":{"kcode":"22370","tcode":"24","mcode":"7","bcode":"714","code":"71401","name":"\ucd9c\ud310\u00b7\ud3b8\uc9d1\uae30\ud68d"},"71402":{"kcode":"22371","tcode":"24","mcode":"7","bcode":"714","code":"71402","name":"\ud3b8\uc9d1\u00b7\uad50\uc815\u00b7\uad50\uc5f4"},"71403":{"kcode":"22372","tcode":"24","mcode":"7","bcode":"714","code":"71403","name":"\uc778\uc1c4\u00b7\uc81c\ubcf8\u00b7\uc870\ud310"},"71404":{"kcode":"22373","tcode":"24","mcode":"7","bcode":"714","code":"71404","name":"\ucd9c\ub825\u00b7\ubcf5\uc0ac"},"71405":{"kcode":"22374","tcode":"24","mcode":"7","bcode":"714","code":"71405","name":"\uac04\ud310\u00b7\ud604\uc218\ub9c9"},"71406":{"kcode":"22375","tcode":"24","mcode":"7","bcode":"714","code":"71406","name":"\uc804\uc790\ucd9c\ud310"},"71407":{"kcode":"22376","tcode":"24","mcode":"7","bcode":"714","code":"71407","name":"\uc9d1\ud544\u00b7\uc800\uc220"}}},"715":{"kcode":"22730","tcode":"9","mcode":"9","bcode":"7","code":"715","name":"\uc0ac\uc9c4\u00b7\ud3ec\ud1a0\uadf8\ub77c\ud37c","keyword":{"71501":{"kcode":"22734","tcode":"24","mcode":"7","bcode":"715","code":"71501","name":"\uc0ac\uc9c4\ucd2c\uc601\uae30\uc0ac"},"71502":{"kcode":"22735","tcode":"24","mcode":"7","bcode":"715","code":"71502","name":"\uc0ac\uc9c4\uad00\u00b7\uc2a4\ud29c\ub514\uc624"},"71503":{"kcode":"22752","tcode":"24","mcode":"7","bcode":"715","code":"71503","name":"\ud3ec\ud1a0\uc0f5"},"71504":{"kcode":"22753","tcode":"24","mcode":"7","bcode":"715","code":"71504","name":"\ud3ec\ud1a0\uadf8\ub77c\ud37c"},"71505":{"kcode":"22754","tcode":"24","mcode":"7","bcode":"715","code":"71505","name":"\uc6e8\ub529"},"71506":{"kcode":"22755","tcode":"24","mcode":"7","bcode":"715","code":"71506","name":"\ubca0\uc774\ube44"},"71507":{"kcode":"22756","tcode":"24","mcode":"7","bcode":"715","code":"71507","name":"\uc99d\uba85\uc0ac\uc9c4"},"71508":{"kcode":"22757","tcode":"24","mcode":"7","bcode":"715","code":"71508","name":"\uc0ac\uc9c4\uc778\ud654"},"71509":{"kcode":"22758","tcode":"24","mcode":"7","bcode":"715","code":"71509","name":"\uce74\uba54\ub77c\u00b7\ub80c\uc988"}}}}},"8":{"bcode":"8","name":"\ud2b9\uc218\uacc4\uce35\u00b7\uacf5\uacf5","code":{"807":{"kcode":"8014","tcode":"9","mcode":"9","bcode":"8","code":"807","name":"\uc911\uc7a5\ub144\u00b7\uace0\ub839\uc778\u00b7\uc2e4\ubc84","keyword":{"80701":{"kcode":"9577","tcode":"24","mcode":"8","bcode":"807","code":"80701","name":"\uace0\ub839\uc790\u00b7\uc2e4\ubc84\ucde8\uc5c5"},"80703":{"kcode":"22788","tcode":"24","mcode":"8","bcode":"807","code":"80703","name":"\ud1f4\uc9c1\uc790\u00b7\uc2e4\uc9c1\uc790"}}},"808":{"kcode":"8015","tcode":"9","mcode":"9","bcode":"8","code":"808","name":"\uc7a5\uc560\uc778\u00b7\uad6d\uac00\uc720\uacf5\uc790","keyword":{"80801":{"kcode":"9579","tcode":"24","mcode":"8","bcode":"808","code":"80801","name":"\uc7a5\uc560\uc778"},"80802":{"kcode":"9580","tcode":"24","mcode":"8","bcode":"808","code":"80802","name":"\uad6d\uac00\uc720\uacf5\uc790"},"80803":{"kcode":"9581","tcode":"24","mcode":"8","bcode":"808","code":"80803","name":"\ucde8\uc5c5\ubcf4\ud638\ub300\uc0c1\uc790"}}},"809":{"kcode":"8013","tcode":"9","mcode":"9","bcode":"8","code":"809","name":"\ubcd1\uc5ed\ud2b9\ub840","keyword":{"80901":{"kcode":"9570","tcode":"24","mcode":"8","bcode":"809","code":"80901","name":"\ubcd1\uc5ed\ud2b9\ub840"},"80902":{"kcode":"9571","tcode":"24","mcode":"8","bcode":"809","code":"80902","name":"\uc804\ubb38\uc5f0\uad6c\uc694\uc6d0"},"80903":{"kcode":"9572","tcode":"24","mcode":"8","bcode":"809","code":"80903","name":"\uc0b0\uc5c5\uae30\ub2a5\uc694\uc6d0"},"80904":{"kcode":"9573","tcode":"24","mcode":"8","bcode":"809","code":"80904","name":"\uc804\uc9c1"},"80905":{"kcode":"9574","tcode":"24","mcode":"8","bcode":"809","code":"80905","name":"\ud604\uc5ed"},"80906":{"kcode":"9575","tcode":"24","mcode":"8","bcode":"809","code":"80906","name":"\ubcf4\ucda9\uc5ed"}}},"810":{"kcode":"8011","tcode":"9","mcode":"9","bcode":"8","code":"810","name":"\uacf5\ubb34\uc6d0","keyword":{"81001":{"kcode":"9560","tcode":"24","mcode":"8","bcode":"810","code":"81001","name":"9\uae09\uacf5\ubb34\uc6d0"},"81004":{"kcode":"9561","tcode":"24","mcode":"8","bcode":"810","code":"81004","name":"7\uae09\uacf5\ubb34\uc6d0"},"81005":{"kcode":"9562","tcode":"24","mcode":"8","bcode":"810","code":"81005","name":"\uc18c\ubc29\uc9c1"},"81006":{"kcode":"9563","tcode":"24","mcode":"8","bcode":"810","code":"81006","name":"\uacbd\ucc30\uc9c1"},"81007":{"kcode":"9564","tcode":"24","mcode":"8","bcode":"810","code":"81007","name":"\uc9c0\ubc29\uc9c1"},"81008":{"kcode":"9565","tcode":"24","mcode":"8","bcode":"810","code":"81008","name":"9\uae09\uae30\ub2a5\uc9c1"},"81009":{"kcode":"22789","tcode":"24","mcode":"8","bcode":"810","code":"81009","name":"6\uae09\u00b7\uace0\ub4f1\uace0\uc2dc"},"81010":{"kcode":"22790","tcode":"24","mcode":"8","bcode":"810","code":"81010","name":"\uad70\ubb34\uc6d0"},"81011":{"kcode":"22791","tcode":"24","mcode":"8","bcode":"810","code":"81011","name":"\ubcc4\uc815\uc9c1\u00b7\uacc4\uc57d\uc9c1"},"81012":{"kcode":"22792","tcode":"24","mcode":"8","bcode":"810","code":"81012","name":"\ud589\uc815\uc778\ud134"}}},"812":{"kcode":"8016","tcode":"9","mcode":"9","bcode":"8","code":"812","name":"\uc0ac\ud68c\ubcf5\uc9c0\u00b7\uc694\uc591\u00b7\ubd09\uc0ac","keyword":{"81201":{"kcode":"9582","tcode":"24","mcode":"8","bcode":"812","code":"81201","name":"\uc0ac\ud68c\ubcf5\uc9c0"},"81202":{"kcode":"9583","tcode":"24","mcode":"8","bcode":"812","code":"81202","name":"\uc790\uc6d0\ubd09\uc0ac"},"81203":{"kcode":"9584","tcode":"24","mcode":"8","bcode":"812","code":"81203","name":"\uc2ec\ub9ac\uc0c1\ub2f4"},"81205":{"kcode":"9586","tcode":"24","mcode":"8","bcode":"812","code":"81205","name":"\ucde8\uc5c5\uc0c1\ub2f4"},"81206":{"kcode":"21778","tcode":"24","mcode":"8","bcode":"812","code":"81206","name":"\uccad\uc18c\ub144\uc9c0\ub3c4\uc0ac"},"81208":{"kcode":"22794","tcode":"24","mcode":"8","bcode":"812","code":"81208","name":"\uc0dd\ud65c\uc9c0\ub3c4\uc0ac"},"81209":{"kcode":"22795","tcode":"24","mcode":"8","bcode":"812","code":"81209","name":"\uc7ac\ud65c\uad50\uc0ac"},"81210":{"kcode":"22796","tcode":"24","mcode":"8","bcode":"812","code":"81210","name":"\ud2b9\uc218\uad50\uc0ac"},"81211":{"kcode":"22798","tcode":"24","mcode":"8","bcode":"812","code":"81211","name":"\ub178\uc778\ubcf5\uc9c0\uc2dc\uc124"},"81212":{"kcode":"22799","tcode":"24","mcode":"8","bcode":"812","code":"81212","name":"\uc694\uc591\ubcf4\ud638\uc0ac"},"81213":{"kcode":"22800","tcode":"24","mcode":"8","bcode":"812","code":"81213","name":"\ucf00\uc5b4\ubcf5\uc9c0\uc0ac"},"81214":{"kcode":"22801","tcode":"24","mcode":"8","bcode":"812","code":"81214","name":"\uc2e4\ubc84\ud0c0\uc6b4"},"81215":{"kcode":"22802","tcode":"24","mcode":"8","bcode":"812","code":"81215","name":"\uc2e4\ubc84\uc0b0\uc5c5"}}},"813":{"kcode":"8012","tcode":"9","mcode":"9","bcode":"8","code":"813","name":"\uc7a5\uad50\u00b7\uad70\uc778\u00b7\ubd80\uc0ac\uad00","keyword":{"81304":{"kcode":"9569","tcode":"24","mcode":"8","bcode":"813","code":"81304","name":"\uc804\uc5ed\uc7a5\uad50\u00b7\uac04\ubd80"},"81305":{"kcode":"22793","tcode":"24","mcode":"8","bcode":"813","code":"81305","name":"\uc5ec\uad70(\uc7a5\uad50\u00b7\ubd80\uc0ac\uad00)"}}}}},"9":{"bcode":"9","name":"\uac74\uc124","code":{"901":{"kcode":"8017","tcode":"9","mcode":"9","bcode":"9","code":"901","name":"\ud1a0\ubaa9\u00b7\uc870\uacbd\u00b7\ub3c4\uc2dc\u00b7\uce21\ub7c9","keyword":{"90101":{"kcode":"9588","tcode":"24","mcode":"9","bcode":"901","code":"90101","name":"\ud1a0\ubaa9"},"90102":{"kcode":"9589","tcode":"24","mcode":"9","bcode":"901","code":"90102","name":"\uc870\uacbd\u00b7\uc815\uc6d0"},"90103":{"kcode":"9590","tcode":"24","mcode":"9","bcode":"901","code":"90103","name":"\ub3c4\uc2dc\uacc4\ud68d\u00b7\uad50\ud1b5"},"90104":{"kcode":"9591","tcode":"24","mcode":"9","bcode":"901","code":"90104","name":"\uce21\ub7c9\u00b7\uacc4\uce21"},"90106":{"kcode":"9592","tcode":"24","mcode":"9","bcode":"901","code":"90106","name":"\ub3c4\ub85c\u00b7\uc0c1\ud558\uc218\ub3c4"},"90107":{"kcode":"9593","tcode":"24","mcode":"9","bcode":"901","code":"90107","name":"\ubbf8\uc7a5"},"90109":{"kcode":"9596","tcode":"24","mcode":"9","bcode":"901","code":"90109","name":"\ud1a0\ubaa9\uae30\uc0ac"},"90111":{"kcode":"9594","tcode":"24","mcode":"9","bcode":"901","code":"90111","name":"\uad50\ub7c9\u00b7\uac00\uc124"},"90112":{"kcode":"9595","tcode":"24","mcode":"9","bcode":"901","code":"90112","name":"\uad6c\uc870\u00b7\uacbd\ub7c9\u00b7\uace8\uc870"},"90113":{"kcode":"26604","tcode":"24","mcode":"9","bcode":"901","code":"90113","name":"\uad6c\uc870\ud574\uc11d"}}},"902":{"kcode":"8018","tcode":"9","mcode":"9","bcode":"9","code":"902","name":"\uac74\ucd95\u00b7\uc778\ud14c\ub9ac\uc5b4\u00b7\uc124\uacc4","keyword":{"90201":{"kcode":"9598","tcode":"24","mcode":"9","bcode":"902","code":"90201","name":"\uc778\ud14c\ub9ac\uc5b4\uc124\uacc4"},"90202":{"kcode":"9602","tcode":"24","mcode":"9","bcode":"902","code":"90202","name":"\uc778\ud14c\ub9ac\uc5b4"},"90206":{"kcode":"9603","tcode":"24","mcode":"9","bcode":"902","code":"90206","name":"\uc2e4\ub0b4\uac74\ucd95"},"90207":{"kcode":"9604","tcode":"24","mcode":"9","bcode":"902","code":"90207","name":"\uac74\ucd95CAD"},"90208":{"kcode":"9599","tcode":"24","mcode":"9","bcode":"902","code":"90208","name":"\uac00\uc124\uc124\uacc4"},"90209":{"kcode":"9601","tcode":"24","mcode":"9","bcode":"902","code":"90209","name":"\uad50\ub7c9\uc124\uacc4"},"90210":{"kcode":"9605","tcode":"24","mcode":"9","bcode":"902","code":"90210","name":"\ub9ac\ubaa8\ub378\ub9c1"},"90211":{"kcode":"9600","tcode":"24","mcode":"9","bcode":"902","code":"90211","name":"\ub3c4\ub85c\uc124\uacc4"},"90212":{"kcode":"9606","tcode":"24","mcode":"9","bcode":"902","code":"90212","name":"\uc2e4\ub0b4\ub514\uc790\uc778"},"90213":{"kcode":"21780","tcode":"24","mcode":"9","bcode":"902","code":"90213","name":"\uc0e4\uc2dc\u00b7\ubca0\ub780\ub2e4"},"90214":{"kcode":"22803","tcode":"24","mcode":"9","bcode":"902","code":"90214","name":"\ucc3d\ud638\uacf5\uc0ac"},"90215":{"kcode":"22804","tcode":"24","mcode":"9","bcode":"902","code":"90215","name":"\ud604\uc7a5\uad00\ub9ac"},"90216":{"kcode":"22805","tcode":"24","mcode":"9","bcode":"902","code":"90216","name":"\uc804\uc2dc\uc778\ud14c\ub9ac\uc5b4"},"90217":{"kcode":"22806","tcode":"24","mcode":"9","bcode":"902","code":"90217","name":"\uac04\ud310\u00b7\ud310\ub12c"},"90218":{"kcode":"22807","tcode":"24","mcode":"9","bcode":"902","code":"90218","name":"\ub3c4\ubc30\u00b7\ubcbd\uc9c0"},"90219":{"kcode":"22808","tcode":"24","mcode":"9","bcode":"902","code":"90219","name":"\uc7a5\ud310\u00b7\ud0c0\uc77c"},"90220":{"kcode":"22809","tcode":"24","mcode":"9","bcode":"902","code":"90220","name":"\ub2e8\uc5f4\u00b7\uc678\uc7a5"},"90221":{"kcode":"22810","tcode":"24","mcode":"9","bcode":"902","code":"90221","name":"\ubc29\uc74c\u00b7\ubc29\ubcbd"},"90222":{"kcode":"22811","tcode":"24","mcode":"9","bcode":"902","code":"90222","name":"\ube4c\ud2b8\uc778\uc124\uacc4"},"90223":{"kcode":"22812","tcode":"24","mcode":"9","bcode":"902","code":"90223","name":"\uac74\ucd95"},"90224":{"kcode":"31501","tcode":"24","mcode":"9","bcode":"902","code":"90224","name":"\uc778\ud14c\ub9ac\uc5b4\uc2dc\uacf5"}}},"903":{"kcode":"8019","tcode":"9","mcode":"9","bcode":"9","code":"903","name":"\uc804\uae30\u00b7\uc18c\ubc29\u00b7\ud1b5\uc2e0\u00b7\uc124\ube44","keyword":{"90302":{"kcode":"9609","tcode":"24","mcode":"9","bcode":"903","code":"90302","name":"\uc804\uae30\uc124\ube44"},"90303":{"kcode":"9610","tcode":"24","mcode":"9","bcode":"903","code":"90303","name":"\ud1b5\uc2e0\uc124\ube44"},"90304":{"kcode":"9611","tcode":"24","mcode":"9","bcode":"903","code":"90304","name":"\uc18c\ubc29\u00b7\ubc29\uc7ac"},"90305":{"kcode":"9612","tcode":"24","mcode":"9","bcode":"903","code":"90305","name":"\uae30\uacc4\uc124\ube44"},"90306":{"kcode":"9608","tcode":"24","mcode":"9","bcode":"903","code":"90306","name":"\uc804\uae30\ubc30\uc120"},"90307":{"kcode":"9614","tcode":"24","mcode":"9","bcode":"903","code":"90307","name":"\uacf5\uc870\ub0c9\ub3d9"},"90308":{"kcode":"9613","tcode":"24","mcode":"9","bcode":"903","code":"90308","name":"\uac74\ucd95\uc124\ube44"},"90309":{"kcode":"22813","tcode":"24","mcode":"9","bcode":"903","code":"90309","name":"\uc804\uae30\uae30\uc0ac"},"90310":{"kcode":"22814","tcode":"24","mcode":"9","bcode":"903","code":"90310","name":"\uc5d0\uc5b4\ucf58\u00b7\ud658\uae30"},"90311":{"kcode":"22815","tcode":"24","mcode":"9","bcode":"903","code":"90311","name":"\uc5f4\uad00\ub9ac\u00b7\ubcf4\uc77c\ub7ec"},"90312":{"kcode":"22816","tcode":"24","mcode":"9","bcode":"903","code":"90312","name":"\ubc30\uad00\u00b7\ud30c\uc774\ud504"},"90313":{"kcode":"22817","tcode":"24","mcode":"9","bcode":"903","code":"90313","name":"LAN\u00b7\ucf00\uc774\ube14"},"90314":{"kcode":"22818","tcode":"24","mcode":"9","bcode":"903","code":"90314","name":"\uc804\ud654\u00b7\ud1b5\uc2e0"},"90315":{"kcode":"22819","tcode":"24","mcode":"9","bcode":"903","code":"90315","name":"\uc5d8\ub9ac\ubca0\uc774\ud130"},"90316":{"kcode":"22820","tcode":"24","mcode":"9","bcode":"903","code":"90316","name":"\uc704\uc131\u00b7\uc548\ud14c\ub098"}}},"904":{"kcode":"8020","tcode":"9","mcode":"9","bcode":"9","code":"904","name":"\ud658\uacbd\u00b7\ud50c\ub79c\ud2b8","keyword":{"90402":{"kcode":"9616","tcode":"24","mcode":"9","bcode":"904","code":"90402","name":"\ud658\uacbd"},"90403":{"kcode":"9617","tcode":"24","mcode":"9","bcode":"904","code":"90403","name":"\ud50c\ub79c\ud2b8"},"90404":{"kcode":"9618","tcode":"24","mcode":"9","bcode":"904","code":"90404","name":"\ud658\uacbd\uae30\uc0ac"},"90405":{"kcode":"22821","tcode":"24","mcode":"9","bcode":"904","code":"90405","name":"\ud3d0\uae30\ubb3c\ucc98\ub9ac"},"90406":{"kcode":"22822","tcode":"24","mcode":"9","bcode":"904","code":"90406","name":"\uc218\uc9c8\ud658\uacbd"},"90407":{"kcode":"22823","tcode":"24","mcode":"9","bcode":"904","code":"90407","name":"\ud658\uacbd\uc601\ud5a5\ud3c9\uac00"},"90408":{"kcode":"22824","tcode":"24","mcode":"9","bcode":"904","code":"90408","name":"\uc18c\uc74c\u00b7\uc9c4\ub3d9"},"90409":{"kcode":"22825","tcode":"24","mcode":"9","bcode":"904","code":"90409","name":"\ud1a0\uc591\ud658\uacbd"},"90410":{"kcode":"22826","tcode":"24","mcode":"9","bcode":"904","code":"90410","name":"\ub300\uae30\ud658\uacbd"}}},"905":{"kcode":"8021","tcode":"9","mcode":"9","bcode":"9","code":"905","name":"\ud604\uc7a5\u00b7\uc2dc\uacf5\u00b7\uac10\ub9ac\u00b7\uacf5\ubb34","keyword":{"90502":{"kcode":"9620","tcode":"24","mcode":"9","bcode":"905","code":"90502","name":"\uac74\ucd95\uc2dc\uacf5"},"90505":{"kcode":"9619","tcode":"24","mcode":"9","bcode":"905","code":"90505","name":"\uac74\ucd95\uac10\ub9ac"},"90506":{"kcode":"9621","tcode":"24","mcode":"9","bcode":"905","code":"90506","name":"\uacf5\ubb34"},"90512":{"kcode":"9625","tcode":"24","mcode":"9","bcode":"905","code":"90512","name":"\ud604\uc7a5\uc18c\uc7a5"},"90513":{"kcode":"22832","tcode":"24","mcode":"9","bcode":"905","code":"90513","name":"\uc0f5\ub4dc\ub85c\uc789"},"90514":{"kcode":"22833","tcode":"24","mcode":"9","bcode":"905","code":"90514","name":"\uc2dc\uacf5"},"90515":{"kcode":"22834","tcode":"24","mcode":"9","bcode":"905","code":"90515","name":"\ud1a0\ubaa9\uac10\ub9ac"},"90516":{"kcode":"22835","tcode":"24","mcode":"9","bcode":"905","code":"90516","name":"\uc18c\ubc29\uac10\ub9ac"},"90517":{"kcode":"22836","tcode":"24","mcode":"9","bcode":"905","code":"90517","name":"\uac10\ub9ac\uc6d0"},"90518":{"kcode":"22837","tcode":"24","mcode":"9","bcode":"905","code":"90518","name":"\uc124\uacc4\uac10\ub9ac"},"90519":{"kcode":"22838","tcode":"24","mcode":"9","bcode":"905","code":"90519","name":"\uc2dc\uacf5\uac10\ub9ac"},"90520":{"kcode":"22839","tcode":"24","mcode":"9","bcode":"905","code":"90520","name":"\uac74\ucd95\uc790\uc7ac"},"90521":{"kcode":"22840","tcode":"24","mcode":"9","bcode":"905","code":"90521","name":"\ubcf4\uc218\u00b7\ucca0\uac70"},"90522":{"kcode":"22841","tcode":"24","mcode":"9","bcode":"905","code":"90522","name":"\uacac\uc2b5\u00b7\uc870\uacf5\u00b7\ubcf4\uc870"},"90523":{"kcode":"22842","tcode":"24","mcode":"9","bcode":"905","code":"90523","name":"\uac74\uc124\ud604\uc7a5"},"90524":{"kcode":"22843","tcode":"24","mcode":"9","bcode":"905","code":"90524","name":"\uc77c\uc6a9\uc9c1"},"90525":{"kcode":"31502","tcode":"24","mcode":"9","bcode":"905","code":"90525","name":"\ub178\ubb34"},"90526":{"kcode":"31503","tcode":"24","mcode":"9","bcode":"905","code":"90526","name":"\uc885\ud569\uac10\ub9ac"},"90527":{"kcode":"31504","tcode":"24","mcode":"9","bcode":"905","code":"90527","name":"\ud604\uc7a5\uac10\ub9ac"},"90528":{"kcode":"31505","tcode":"24","mcode":"9","bcode":"905","code":"90528","name":"\uacf5\uc0ac\uac10\ub9ac"},"90529":{"kcode":"31506","tcode":"24","mcode":"9","bcode":"905","code":"90529","name":"\uac74\ucd95 CM"}}},"906":{"kcode":"8022","tcode":"9","mcode":"9","bcode":"9","code":"906","name":"\uc548\uc804\u00b7\ud488\uc9c8\u00b7\uac80\uc0ac\u00b7\uad00\ub9ac","keyword":{"90603":{"kcode":"9626","tcode":"24","mcode":"9","bcode":"906","code":"90603","name":"\uc548\uc804"},"90604":{"kcode":"9627","tcode":"24","mcode":"9","bcode":"906","code":"90604","name":"\ud488\uc9c8\uad00\ub9ac"},"90606":{"kcode":"9629","tcode":"24","mcode":"9","bcode":"906","code":"90606","name":"\ube44\ud30c\uad34\uac80\uc0ac"},"90607":{"kcode":"9630","tcode":"24","mcode":"9","bcode":"906","code":"90607","name":"\uac74\uc124\uc548\uc804"},"90608":{"kcode":"9631","tcode":"24","mcode":"9","bcode":"906","code":"90608","name":"\uc0b0\uc5c5\uc548\uc804"},"90609":{"kcode":"22844","tcode":"24","mcode":"9","bcode":"906","code":"90609","name":"\uac00\uc2a4\uc810\uac80"},"90610":{"kcode":"22845","tcode":"24","mcode":"9","bcode":"906","code":"90610","name":"\uc804\uae30\uc810\uac80"},"90611":{"kcode":"22846","tcode":"24","mcode":"9","bcode":"906","code":"90611","name":"\uc704\ud5d8\ubb3c\uad00\ub9ac"},"90612":{"kcode":"22847","tcode":"24","mcode":"9","bcode":"906","code":"90612","name":"\uac74\ubb3c\u00b7\ube4c\ub529\uad00\ub9ac"},"90613":{"kcode":"22848","tcode":"24","mcode":"9","bcode":"906","code":"90613","name":"\uc2dc\uc124\uad00\ub9ac"},"90614":{"kcode":"22849","tcode":"24","mcode":"9","bcode":"906","code":"90614","name":"\uc544\ud30c\ud2b8\uacbd\ube44"},"90615":{"kcode":"22850","tcode":"24","mcode":"9","bcode":"906","code":"90615","name":"\uad00\ub9ac\uc18c\uc7a5"}}},"908":{"kcode":"8023","tcode":"9","mcode":"9","bcode":"9","code":"908","name":"\ubd80\ub3d9\uc0b0\u00b7\uac1c\ubc1c\u00b7\uacbd\ub9e4\u00b7\ubd84\uc591","keyword":{"90801":{"kcode":"9632","tcode":"24","mcode":"9","bcode":"908","code":"90801","name":"\ubd80\ub3d9\uc0b0"},"90802":{"kcode":"9633","tcode":"24","mcode":"9","bcode":"908","code":"90802","name":"\ubd80\ub3d9\uc0b0\uac1c\ubc1c"},"90803":{"kcode":"9634","tcode":"24","mcode":"9","bcode":"908","code":"90803","name":"\ubd80\ub3d9\uc0b0\uc2dc\ud589"},"90804":{"kcode":"9635","tcode":"24","mcode":"9","bcode":"908","code":"90804","name":"\ubd84\uc591\u00b7\uc784\ub300"},"90805":{"kcode":"9636","tcode":"24","mcode":"9","bcode":"908","code":"90805","name":"\uacbd\ub9e4\u00b7\uc785\ucc30"},"90806":{"kcode":"9637","tcode":"24","mcode":"9","bcode":"908","code":"90806","name":"\uc601\uc5c5\u00b7\ud64d\ubcf4"},"90807":{"kcode":"9638","tcode":"24","mcode":"9","bcode":"908","code":"90807","name":"\uacac\uc801\u00b7\uc2dc\uc138"},"90808":{"kcode":"9639","tcode":"24","mcode":"9","bcode":"908","code":"90808","name":"\uacf5\uc778\uc911\uac1c\uc0ac"},"90809":{"kcode":"9640","tcode":"24","mcode":"9","bcode":"908","code":"90809","name":"\ubd84\uc591\uc0c1\ub2f4\uc0ac"},"90810":{"kcode":"9641","tcode":"24","mcode":"9","bcode":"908","code":"90810","name":"\ud574\uc678\ubd80\ub3d9\uc0b0"},"90811":{"kcode":"9642","tcode":"24","mcode":"9","bcode":"908","code":"90811","name":"\ub9e4\uc785\ub9e4\uac01"},"90812":{"kcode":"9643","tcode":"24","mcode":"9","bcode":"908","code":"90812","name":"\uc591\ub3c4\uc591\uc218"},"90813":{"kcode":"9644","tcode":"24","mcode":"9","bcode":"908","code":"90813","name":"\uc784\ub300\ucee8\uc124\ud305"},"90814":{"kcode":"9645","tcode":"24","mcode":"9","bcode":"908","code":"90814","name":"\uac10\uc815\ud3c9\uac00\uc0ac"},"90815":{"kcode":"9646","tcode":"24","mcode":"9","bcode":"908","code":"90815","name":"\uc0c1\uac00\u00b7\uc0ac\ubb34\uc2e4"},"90816":{"kcode":"9647","tcode":"24","mcode":"9","bcode":"908","code":"90816","name":"\uc544\ud30c\ud2b8\u00b7\ube4c\ub77c"},"90817":{"kcode":"22851","tcode":"24","mcode":"9","bcode":"908","code":"90817","name":"\uc8fc\ud0dd\uad00\ub9ac\uc0ac"},"90818":{"kcode":"22852","tcode":"24","mcode":"9","bcode":"908","code":"90818","name":"\ubaa8\ub378\ud558\uc6b0\uc2a4"}}},"909":{"kcode":"22827","tcode":"9","mcode":"9","bcode":"9","code":"909","name":"\ubcf8\uc0ac\u00b7\uad00\ub9ac\u00b7\uc804\uc0b0","keyword":{"90901":{"kcode":"22828","tcode":"24","mcode":"9","bcode":"909","code":"90901","name":"\uad00\ub9ac\uc9c1"},"90902":{"kcode":"22829","tcode":"24","mcode":"9","bcode":"909","code":"90902","name":"\uae30\uc220\uc9c1"},"90903":{"kcode":"22830","tcode":"24","mcode":"9","bcode":"909","code":"90903","name":"\uc804\uc0b0\uc9c1"},"90904":{"kcode":"22831","tcode":"24","mcode":"9","bcode":"909","code":"90904","name":"\uc0ac\ubb34\uc9c1"}}}}},"11":{"bcode":"11","name":"\uc11c\ube44\uc2a4","code":{"1101":{"kcode":"8048","tcode":"9","mcode":"9","bcode":"11","code":"1101","name":"\uc6e8\ub529\u00b7\ud589\uc0ac\u00b7\uc774\ubca4\ud2b8","keyword":{"110101":{"kcode":"9705","tcode":"24","mcode":"11","bcode":"1101","code":"110101","name":"\uc774\ubca4\ud2b8\ud50c\ub798\ub108"},"110102":{"kcode":"9706","tcode":"24","mcode":"11","bcode":"1101","code":"110102","name":"\uc6e8\ub529\ud50c\ub798\ub108"},"110103":{"kcode":"9707","tcode":"24","mcode":"11","bcode":"1101","code":"110103","name":"\ud504\ub85c\ubaa8\ud130"},"110104":{"kcode":"9708","tcode":"24","mcode":"11","bcode":"1101","code":"110104","name":"\uce90\uc2a4\ud305\ub514\ub809\ud130"},"110105":{"kcode":"9709","tcode":"24","mcode":"11","bcode":"1101","code":"110105","name":"\ud30c\ud2f0\ud50c\ub798\ub108"},"110106":{"kcode":"9710","tcode":"24","mcode":"11","bcode":"1101","code":"110106","name":"\ucee4\ud50c\ub9e4\ub2c8\uc800"},"110107":{"kcode":"9711","tcode":"24","mcode":"11","bcode":"1101","code":"110107","name":"\ud589\uc0ac\uc9c4\ud589"},"110108":{"kcode":"21301","tcode":"24","mcode":"11","bcode":"1101","code":"110108","name":"\uc7a5\ub840\u00b7\uc0c1\uc870\uc11c\ube44\uc2a4"},"110109":{"kcode":"22914","tcode":"24","mcode":"11","bcode":"1101","code":"110109","name":"\ud30c\ud2f0\uc6a9\ud488\ud310\ub9e4"},"110110":{"kcode":"26606","tcode":"24","mcode":"11","bcode":"1101","code":"110110","name":"\ud50c\ub85c\ub9ac\uc2a4\ud2b8"}}},"1102":{"kcode":"8049","tcode":"9","mcode":"9","bcode":"11","code":"1102","name":"\uc548\ub0b4\u00b7\ub3c4\uc6b0\ubbf8\u00b7\ub098\ub808\uc774\ud130","keyword":{"110201":{"kcode":"9712","tcode":"24","mcode":"11","bcode":"1102","code":"110201","name":"\uc548\ub0b4\ub370\uc2a4\ud06c"},"110202":{"kcode":"9713","tcode":"24","mcode":"11","bcode":"1102","code":"110202","name":"\ub3c4\uc6b0\ubbf8"},"110203":{"kcode":"9714","tcode":"24","mcode":"11","bcode":"1102","code":"110203","name":"\uc804\ud654\uc548\ub0b4\uc6d0"},"110204":{"kcode":"9715","tcode":"24","mcode":"11","bcode":"1102","code":"110204","name":"\ub098\ub808\uc774\ud130"},"110205":{"kcode":"9716","tcode":"24","mcode":"11","bcode":"1102","code":"110205","name":"\ucef4\ud328\ub2c8\uc5b8"},"110206":{"kcode":"9717","tcode":"24","mcode":"11","bcode":"1102","code":"110206","name":"\ubaa8\ub378"},"110207":{"kcode":"21782","tcode":"24","mcode":"11","bcode":"1102","code":"110207","name":"\ubc29\uc1a1\uc548\ub0b4\uc6d0"},"110208":{"kcode":"22915","tcode":"24","mcode":"11","bcode":"1102","code":"110208","name":"\uc2b9\uac15\uae30\uc548\ub0b4\uc6d0"}}},"1103":{"kcode":"8050","tcode":"9","mcode":"9","bcode":"11","code":"1103","name":"\ubcf4\uc548\u00b7\uacbd\ud638\u00b7\uc548\uc804","keyword":{"110301":{"kcode":"9718","tcode":"24","mcode":"11","bcode":"1103","code":"110301","name":"\uc548\uc804"},"110302":{"kcode":"9719","tcode":"24","mcode":"11","bcode":"1103","code":"110302","name":"\uccad\uc6d0\uacbd\ucc30"},"110303":{"kcode":"9720","tcode":"24","mcode":"11","bcode":"1103","code":"110303","name":"\uc18c\ubc29"},"110304":{"kcode":"9721","tcode":"24","mcode":"11","bcode":"1103","code":"110304","name":"\ubcf4\uc548"},"110305":{"kcode":"9722","tcode":"24","mcode":"11","bcode":"1103","code":"110305","name":"\uacbd\ud638\u00b7\uacbd\ube44"},"110310":{"kcode":"14207","tcode":"24","mcode":"11","bcode":"1103","code":"110310","name":"\uc2dc\ud050\ub9ac\ud2f0"},"110311":{"kcode":"21783","tcode":"24","mcode":"11","bcode":"1103","code":"110311","name":"\uacbd\ube44\uc9c0\ub3c4\uc0ac"},"110312":{"kcode":"22916","tcode":"24","mcode":"11","bcode":"1103","code":"110312","name":"\uc0b0\uc5c5\uc548\uc804\uae30\uc0ac"},"110313":{"kcode":"26607","tcode":"24","mcode":"11","bcode":"1103","code":"110313","name":"\ud604\uae08\ud638\uc1a1"},"110314":{"kcode":"31553","tcode":"24","mcode":"11","bcode":"1103","code":"110314","name":"\ubcf4\uc548\uac80\uc0c9"},"110315":{"kcode":"31554","tcode":"24","mcode":"11","bcode":"1103","code":"110315","name":"\uc21c\ucc30"}}},"1104":{"kcode":"8051","tcode":"9","mcode":"9","bcode":"11","code":"1104","name":"\uc8fc\ucc28\u00b7\uc138\ucc28\u00b7\uc8fc\uc720","keyword":{"110402":{"kcode":"9729","tcode":"24","mcode":"11","bcode":"1104","code":"110402","name":"\uc8fc\ucc28\uad00\ub9ac"},"110403":{"kcode":"9730","tcode":"24","mcode":"11","bcode":"1104","code":"110403","name":"\uc8fc\ucc28\uc548\ub0b4"},"110412":{"kcode":"22917","tcode":"24","mcode":"11","bcode":"1104","code":"110412","name":"\ubc1c\ub81b\ud30c\ud0b9"},"110413":{"kcode":"22918","tcode":"24","mcode":"11","bcode":"1104","code":"110413","name":"\uc8fc\ucc28\u00b7\ubc1c\uad8c\ub3c4\uc6b0\ubbf8"},"110414":{"kcode":"22919","tcode":"24","mcode":"11","bcode":"1104","code":"110414","name":"\uc8fc\ucc28\uc815\uc0b0\uc6d0"},"110415":{"kcode":"22920","tcode":"24","mcode":"11","bcode":"1104","code":"110415","name":"\uc138\ucc28\uc7a5"},"110416":{"kcode":"22921","tcode":"24","mcode":"11","bcode":"1104","code":"110416","name":"\uc8fc\uc720\uc6d0"}}},"1105":{"kcode":"8052","tcode":"9","mcode":"9","bcode":"11","code":"1105","name":"AS\u00b7\uc11c\ube44\uc2a4\u00b7\uc218\ub9ac","keyword":{"110501":{"kcode":"9739","tcode":"24","mcode":"11","bcode":"1105","code":"110501","name":"AS\uae30\uc0ac"},"110502":{"kcode":"9740","tcode":"24","mcode":"11","bcode":"1105","code":"110502","name":"\uc11c\ube44\uc2a4"},"110503":{"kcode":"9741","tcode":"24","mcode":"11","bcode":"1105","code":"110503","name":"\uc124\uce58\u00b7\uc218\ub9ac"},"110504":{"kcode":"9742","tcode":"24","mcode":"11","bcode":"1105","code":"110504","name":"\uc790\ub3d9\ucc28\uc815\ube44"},"110505":{"kcode":"9743","tcode":"24","mcode":"11","bcode":"1105","code":"110505","name":"\uc815\uae30\u00b7\uc815\ubc00\uac80\uc0ac"},"110506":{"kcode":"9744","tcode":"24","mcode":"11","bcode":"1105","code":"110506","name":"\ud310\uae08\u00b7\ub3c4\uc7a5\u00b7\ub3c4\uc0c9"},"110507":{"kcode":"9745","tcode":"24","mcode":"11","bcode":"1105","code":"110507","name":"\uc36c\ud305\u00b7\uad11\ud0dd\u00b7\ud29c\ub2dd"},"110508":{"kcode":"9746","tcode":"24","mcode":"11","bcode":"1105","code":"110508","name":"\uc720\uc9c0\u00b7\ubcf4\uc218\u00b7\uad50\uccb4"}}},"1107":{"kcode":"8054","tcode":"9","mcode":"9","bcode":"11","code":"1107","name":"\uc678\uc2dd\u00b7\uc2dd\uc74c\ub8cc","keyword":{"110702":{"kcode":"9751","tcode":"24","mcode":"11","bcode":"1107","code":"110702","name":"\uc9c0\ubc30\uc778"},"110703":{"kcode":"9752","tcode":"24","mcode":"11","bcode":"1107","code":"110703","name":"\uc11c\ube44\uc2a4"},"110704":{"kcode":"9753","tcode":"24","mcode":"11","bcode":"1107","code":"110704","name":"\ub9e4\ub2c8\uc838"},"110705":{"kcode":"9754","tcode":"24","mcode":"11","bcode":"1107","code":"110705","name":"\ucea1\ud2f4"},"110713":{"kcode":"9755","tcode":"24","mcode":"11","bcode":"1107","code":"110713","name":"\uce90\uc154"},"110714":{"kcode":"9756","tcode":"24","mcode":"11","bcode":"1107","code":"110714","name":"\uc6e8\uc774\ud130"},"110715":{"kcode":"9757","tcode":"24","mcode":"11","bcode":"1107","code":"110715","name":"\uc6e8\uc774\ud2b8\ub9ac\uc2a4"},"110716":{"kcode":"9758","tcode":"24","mcode":"11","bcode":"1107","code":"110716","name":"\ud640\uc11c\ube59"},"110730":{"kcode":"9764","tcode":"24","mcode":"11","bcode":"1107","code":"110730","name":"\ubc14\ub9ac\uc2a4\ud0c0\u00b7\ucee4\ud53c"},"110733":{"kcode":"9767","tcode":"24","mcode":"11","bcode":"1107","code":"110733","name":"\uc18c\ubbc8\ub9ac\uc5d0\u00b7\uc640\uc778"},"110735":{"kcode":"22922","tcode":"24","mcode":"11","bcode":"1107","code":"110735","name":"\uc22f\ubd88\uad00\ub9ac"},"110736":{"kcode":"22923","tcode":"24","mcode":"11","bcode":"1107","code":"110736","name":"\uce74\uc6b4\ud130"},"110737":{"kcode":"22924","tcode":"24","mcode":"11","bcode":"1107","code":"110737","name":"\uc74c\uc2dd\ubc30\ub2ec"}}},"1108":{"kcode":"8055","tcode":"9","mcode":"9","bcode":"11","code":"1108","name":"\ud638\ud154\u00b7\uce74\uc9c0\ub178\u00b7\ucf58\ub3c4","keyword":{"110801":{"kcode":"9770","tcode":"24","mcode":"11","bcode":"1108","code":"110801","name":"\ud638\ud154"},"110802":{"kcode":"9771","tcode":"24","mcode":"11","bcode":"1108","code":"110802","name":"\uce74\uc9c0\ub178"},"110804":{"kcode":"9773","tcode":"24","mcode":"11","bcode":"1108","code":"110804","name":"\ucf58\ub3c4\u00b7\ub9ac\uc870\ud2b8"},"110805":{"kcode":"9774","tcode":"24","mcode":"11","bcode":"1108","code":"110805","name":"\uce74\uc6b4\ud130\u00b7\uce90\uc154"},"110806":{"kcode":"9775","tcode":"24","mcode":"11","bcode":"1108","code":"110806","name":"\ubca8\ub9e8\u00b7\ub3c4\uc5b4\ub9e8"},"110807":{"kcode":"9776","tcode":"24","mcode":"11","bcode":"1108","code":"110807","name":"\ud558\uc6b0\uc2a4\ud0a4\ud551"},"110808":{"kcode":"9777","tcode":"24","mcode":"11","bcode":"1108","code":"110808","name":"\ud504\ub860\ud2b8"},"110810":{"kcode":"22925","tcode":"24","mcode":"11","bcode":"1108","code":"110810","name":"\ub9ac\uc149\uc158\u00b7\uc608\uc57d\uc811\uc218"},"110811":{"kcode":"22926","tcode":"24","mcode":"11","bcode":"1108","code":"110811","name":"\uce74\uc9c0\ub178\ub51c\ub7ec"},"110812":{"kcode":"22927","tcode":"24","mcode":"11","bcode":"1108","code":"110812","name":"GRO"},"110813":{"kcode":"22928","tcode":"24","mcode":"11","bcode":"1108","code":"110813","name":"\ucee8\uc2dc\uc5b4\uc9c0"}}},"1109":{"kcode":"8056","tcode":"9","mcode":"9","bcode":"11","code":"1109","name":"\uc5ec\ud589\u00b7\uad00\uad11\u00b7\ud56d\uacf5","keyword":{"110901":{"kcode":"9779","tcode":"24","mcode":"11","bcode":"1109","code":"110901","name":"\uc5ec\ud589\uc0ac"},"110904":{"kcode":"9784","tcode":"24","mcode":"11","bcode":"1109","code":"110904","name":"\ud56d\uacf5\uc0ac"},"110905":{"kcode":"9781","tcode":"24","mcode":"11","bcode":"1109","code":"110905","name":"\uad00\uad11\ud1b5\uc5ed\uac00\uc774\ub4dc"},"110906":{"kcode":"9785","tcode":"24","mcode":"11","bcode":"1109","code":"110906","name":"\uc870\uc885\uc0ac\u00b7\uc2b9\ubb34\uc6d0"},"110907":{"kcode":"9782","tcode":"24","mcode":"11","bcode":"1109","code":"110907","name":"\ud604\uc9c0\uac00\uc774\ub4dc"},"110910":{"kcode":"9788","tcode":"24","mcode":"11","bcode":"1109","code":"110910","name":"\uba74\uc138\uc810"},"110911":{"kcode":"9786","tcode":"24","mcode":"11","bcode":"1109","code":"110911","name":"\ube44\uc790\uc218\uc18d"},"110912":{"kcode":"9787","tcode":"24","mcode":"11","bcode":"1109","code":"110912","name":"\uc5ec\uad8c\ubc1c\uae09"},"110913":{"kcode":"9783","tcode":"24","mcode":"11","bcode":"1109","code":"110913","name":"OP"},"110915":{"kcode":"22929","tcode":"24","mcode":"11","bcode":"1109","code":"110915","name":"\uc5ec\ud589\uc0c1\ud488\uac1c\ubc1c"},"110916":{"kcode":"22930","tcode":"24","mcode":"11","bcode":"1109","code":"110916","name":"\uc608\uc57d\u00b7\ubc1c\uad8c"},"110917":{"kcode":"22931","tcode":"24","mcode":"11","bcode":"1109","code":"110917","name":"\uacf5\ud56d\uc9c0\uc0c1\uc9c1"}}},"1110":{"kcode":"22543","tcode":"9","mcode":"9","bcode":"11","code":"1110","name":"\ub808\uc800\u00b7\uc2a4\ud3ec\uce20","keyword":{"111001":{"kcode":"22633","tcode":"24","mcode":"11","bcode":"1110","code":"111001","name":"\ub808\uc800"},"111002":{"kcode":"22634","tcode":"24","mcode":"11","bcode":"1110","code":"111002","name":"\uc2a4\ud3ec\uce20"},"111003":{"kcode":"22635","tcode":"24","mcode":"11","bcode":"1110","code":"111003","name":"\uc0dd\ud65c\uccb4\uc721"},"111004":{"kcode":"22636","tcode":"24","mcode":"11","bcode":"1110","code":"111004","name":"\uc218\uc601\uac15\uc0ac"},"111006":{"kcode":"22638","tcode":"24","mcode":"11","bcode":"1110","code":"111006","name":"\ud5ec\uc2a4"},"111007":{"kcode":"22639","tcode":"24","mcode":"11","bcode":"1110","code":"111007","name":"\uace8\ud504\u00b7\uace8\ud504\uac15\uc0ac"},"111008":{"kcode":"22640","tcode":"24","mcode":"11","bcode":"1110","code":"111008","name":"\uc694\uac00\uac15\uc0ac"},"111009":{"kcode":"22641","tcode":"24","mcode":"11","bcode":"1110","code":"111009","name":"\uc5d0\uc5b4\ub85c\ube45"},"111010":{"kcode":"22642","tcode":"24","mcode":"11","bcode":"1110","code":"111010","name":"\uce90\ub514"},"111012":{"kcode":"22644","tcode":"24","mcode":"11","bcode":"1110","code":"111012","name":"\ud14c\ub9c8\ud30c\ud06c\uc9c1\uc6d0"},"111013":{"kcode":"22645","tcode":"24","mcode":"11","bcode":"1110","code":"111013","name":"\ub304\uc2a4\uac15\uc0ac"},"111014":{"kcode":"22646","tcode":"24","mcode":"11","bcode":"1110","code":"111014","name":"\ubb34\uc220\uc0ac\ubc94"},"111016":{"kcode":"22648","tcode":"24","mcode":"11","bcode":"1110","code":"111016","name":"\ub2f9\uad6c"},"111017":{"kcode":"22649","tcode":"24","mcode":"11","bcode":"1110","code":"111017","name":"\uc2a4\ud0a4\uac15\uc0ac"},"111018":{"kcode":"22650","tcode":"24","mcode":"11","bcode":"1110","code":"111018","name":"\ub808\ud06c\ub9ac\uc5d0\uc774\uc158"},"111019":{"kcode":"26608","tcode":"24","mcode":"11","bcode":"1110","code":"111019","name":"\ub808\ud3ec\uce20"},"111021":{"kcode":"31549","tcode":"24","mcode":"11","bcode":"1110","code":"111021","name":"\ub180\uc774\uacf5\uc6d0"},"111023":{"kcode":"31551","tcode":"24","mcode":"11","bcode":"1110","code":"111023","name":"\uc2b9\ub9c8"},"111024":{"kcode":"31552","tcode":"24","mcode":"11","bcode":"1110","code":"111024","name":"\uc624\ub77d"}}},"1111":{"kcode":"22544","tcode":"9","mcode":"9","bcode":"11","code":"1111","name":"\ubbf8\uc6a9\u00b7\ud53c\ubd80\uad00\ub9ac\u00b7\uc560\uacac","keyword":{"111101":{"kcode":"22651","tcode":"24","mcode":"11","bcode":"1111","code":"111101","name":"\ubbf8\uc6a9\u00b7\ubdf0\ud2f0"},"111102":{"kcode":"22652","tcode":"24","mcode":"11","bcode":"1111","code":"111102","name":"\uba54\uc774\ud06c\uc5c5"},"111103":{"kcode":"22653","tcode":"24","mcode":"11","bcode":"1111","code":"111103","name":"\ubdf0\ud2f0\ub9e4\ub2c8\uc800"},"111104":{"kcode":"22654","tcode":"24","mcode":"11","bcode":"1111","code":"111104","name":"\ud5e4\uc5b4\ub514\uc790\uc774\ub108"},"111105":{"kcode":"22655","tcode":"24","mcode":"11","bcode":"1111","code":"111105","name":"\ud53c\ubd80\uad00\ub9ac\u00b7\uc5d0\uc2a4\ud14c\ud2f1"},"111106":{"kcode":"22656","tcode":"24","mcode":"11","bcode":"1111","code":"111106","name":"\ub2e4\uc774\uc5b4\ud2b8\u00b7\ube44\ub9cc\uad00\ub9ac"},"111107":{"kcode":"22657","tcode":"24","mcode":"11","bcode":"1111","code":"111107","name":"\ub124\uc77c\uc544\ud2b8"},"111108":{"kcode":"22658","tcode":"24","mcode":"11","bcode":"1111","code":"111108","name":"\uc560\uacac\ubbf8\uc6a9"},"111109":{"kcode":"22659","tcode":"24","mcode":"11","bcode":"1111","code":"111109","name":"\uc560\uacac\uad00\ub9ac\u00b7\ud6c8\ub828"},"111110":{"kcode":"22660","tcode":"24","mcode":"11","bcode":"1111","code":"111110","name":"\ub9c8\uc0ac\uc9c0"},"111111":{"kcode":"22661","tcode":"24","mcode":"11","bcode":"1111","code":"111111","name":"\ubd84\uc7a5\u00b7\ud2b9\uc218\ubd84\uc7a5"},"111112":{"kcode":"22662","tcode":"24","mcode":"11","bcode":"1111","code":"111112","name":"\ub450\ud53c\u00b7\ud0c8\ubaa8"},"111113":{"kcode":"22663","tcode":"24","mcode":"11","bcode":"1111","code":"111113","name":"\uc0f4\ud478\ub3c4\uc6b0\ubbf8"},"111114":{"kcode":"22664","tcode":"24","mcode":"11","bcode":"1111","code":"111114","name":"\ubc1c\uad00\ub9ac"},"111115":{"kcode":"22665","tcode":"24","mcode":"11","bcode":"1111","code":"111115","name":"\ubbf8\uc6a9\uae30\ud0c0"}}},"1112":{"kcode":"22545","tcode":"9","mcode":"9","bcode":"11","code":"1112","name":"\uc694\ub9ac\u00b7\uc81c\ube75\uc0ac\u00b7\uc601\uc591\uc0ac","keyword":{"111201":{"kcode":"22666","tcode":"24","mcode":"11","bcode":"1112","code":"111201","name":"\uc870\ub9ac\uc0ac"},"111202":{"kcode":"22667","tcode":"24","mcode":"11","bcode":"1112","code":"111202","name":"\uc694\ub9ac\uc0ac"},"111203":{"kcode":"22668","tcode":"24","mcode":"11","bcode":"1112","code":"111203","name":"\ubca0\uc774\ucee4\ub9ac"},"111204":{"kcode":"22669","tcode":"24","mcode":"11","bcode":"1112","code":"111204","name":"\uc81c\uacfc\u00b7\uc81c\ube75\uc0ac"},"111205":{"kcode":"22670","tcode":"24","mcode":"11","bcode":"1112","code":"111205","name":"\uc601\uc591\uc0ac"},"111206":{"kcode":"22671","tcode":"24","mcode":"11","bcode":"1112","code":"111206","name":"\ud55c\uc2dd"},"111207":{"kcode":"22672","tcode":"24","mcode":"11","bcode":"1112","code":"111207","name":"\uc591\uc2dd"},"111208":{"kcode":"22673","tcode":"24","mcode":"11","bcode":"1112","code":"111208","name":"\uc77c\uc2dd"},"111209":{"kcode":"22674","tcode":"24","mcode":"11","bcode":"1112","code":"111209","name":"\uc911\uc2dd"},"111210":{"kcode":"22675","tcode":"24","mcode":"11","bcode":"1112","code":"111210","name":"\uc8fc\ubc29\uc7a5"},"111211":{"kcode":"22676","tcode":"24","mcode":"11","bcode":"1112","code":"111211","name":"chef"},"111212":{"kcode":"22677","tcode":"24","mcode":"11","bcode":"1112","code":"111212","name":"\uc8fc\ubc29\ubcf4\uc870"},"111213":{"kcode":"22678","tcode":"24","mcode":"11","bcode":"1112","code":"111213","name":"\ub2e8\uccb4\uae09\uc2dd"},"111214":{"kcode":"22679","tcode":"24","mcode":"11","bcode":"1112","code":"111214","name":"\uc2dd\ud488\uc5c5\uccb4"},"111215":{"kcode":"22680","tcode":"24","mcode":"11","bcode":"1112","code":"111215","name":"\ud30c\ud2f0\uc250\ub974"},"111216":{"kcode":"22681","tcode":"24","mcode":"11","bcode":"1112","code":"111216","name":"\ucc2c\ubaa8"},"111217":{"kcode":"22682","tcode":"24","mcode":"11","bcode":"1112","code":"111217","name":"\ud478\ub4dc\uc2a4\ud0c0\uc77c\ub9ac\uc2a4\ud2b8"}}},"1113":{"kcode":"22546","tcode":"9","mcode":"9","bcode":"11","code":"1113","name":"\uac00\uc0ac\u00b7\uccad\uc18c\u00b7\uc721\uc544","keyword":{"111301":{"kcode":"22623","tcode":"24","mcode":"11","bcode":"1113","code":"111301","name":"\uac00\uc0ac\ub3c4\uc6b0\ubbf8"},"111302":{"kcode":"22624","tcode":"24","mcode":"11","bcode":"1113","code":"111302","name":"\ubca0\uc774\ube44\uc2dc\ud130"},"111303":{"kcode":"22625","tcode":"24","mcode":"11","bcode":"1113","code":"111303","name":"\uccad\uc18c\u00b7\ubbf8\ud654"},"111304":{"kcode":"22626","tcode":"24","mcode":"11","bcode":"1113","code":"111304","name":"\uc815\uc218\uae30\u00b7\ube44\ub370"},"111305":{"kcode":"22627","tcode":"24","mcode":"11","bcode":"1113","code":"111305","name":"\uc138\ud0c1\u00b7\uc637\uc218\uc120"},"111306":{"kcode":"22628","tcode":"24","mcode":"11","bcode":"1113","code":"111306","name":"\uc0b0\ubaa8\ub3c4\uc6b0\ubbf8"},"111307":{"kcode":"22629","tcode":"24","mcode":"11","bcode":"1113","code":"111307","name":"\uc721\uc544\ub3c4\uc6b0\ubbf8"},"111308":{"kcode":"22630","tcode":"24","mcode":"11","bcode":"1113","code":"111308","name":"\uc785\uc8fc\ub3c4\uc6b0\ubbf8"},"111309":{"kcode":"22631","tcode":"24","mcode":"11","bcode":"1113","code":"111309","name":"\ud574\ucda9\u00b7\ubc29\uc5ed\u00b7\uc18c\ub3c5"},"111310":{"kcode":"22632","tcode":"24","mcode":"11","bcode":"1113","code":"111310","name":"\uc2e4\ubc84\uc2dc\ud130"}}}}},"13":{"bcode":"13","name":"\uc758\ub8cc","code":{"1301":{"kcode":"22547","tcode":"9","mcode":"9","bcode":"13","code":"1301","name":"\uc758\uc0ac\u00b7\uce58\uacfc\u00b7\ud55c\uc758\uc0ac","keyword":{"130101":{"kcode":"22556","tcode":"24","mcode":"13","bcode":"1301","code":"130101","name":"\uc758\uc0ac"},"130102":{"kcode":"22557","tcode":"24","mcode":"13","bcode":"1301","code":"130102","name":"\uce58\uacfc\uc758\uc0ac"},"130103":{"kcode":"22558","tcode":"24","mcode":"13","bcode":"1301","code":"130103","name":"\ud55c\uc758\uc0ac"},"130104":{"kcode":"22559","tcode":"24","mcode":"13","bcode":"1301","code":"130104","name":"\ub2f9\uc9c1\uc758\u00b7\ub300\uc9c4\uc758"},"130105":{"kcode":"22560","tcode":"24","mcode":"13","bcode":"1301","code":"130105","name":"\uc804\ubb38\uc758\u00b7\uc804\uacf5\uc758"}}},"1302":{"kcode":"22548","tcode":"9","mcode":"9","bcode":"13","code":"1302","name":"\uc218\uc758\uc0ac","keyword":{"130201":{"kcode":"22561","tcode":"24","mcode":"13","bcode":"1302","code":"130201","name":"\uc218\uc758\uc0ac"},"130202":{"kcode":"22562","tcode":"24","mcode":"13","bcode":"1302","code":"130202","name":"\ub3d9\ubb3c\uac04\ud638\ud14c\ud06c\ub2c8\uc158"},"130203":{"kcode":"22563","tcode":"24","mcode":"13","bcode":"1302","code":"130203","name":"\uc218\uc758\uac04\ud638\uc0ac"},"130204":{"kcode":"22564","tcode":"24","mcode":"13","bcode":"1302","code":"130204","name":"\uac04\ud638\ubcf4\uc870\uc0ac"}}},"1303":{"kcode":"22549","tcode":"9","mcode":"9","bcode":"13","code":"1303","name":"\uc57d\uc0ac","keyword":{"130301":{"kcode":"22565","tcode":"24","mcode":"13","bcode":"1303","code":"130301","name":"\uc57d\uc0ac"},"130302":{"kcode":"22566","tcode":"24","mcode":"13","bcode":"1303","code":"130302","name":"\ud55c\uc57d\uc0ac"},"130303":{"kcode":"22567","tcode":"24","mcode":"13","bcode":"1303","code":"130303","name":"\uc57d\ubb34\ubcf4\uc870"},"130304":{"kcode":"22568","tcode":"24","mcode":"13","bcode":"1303","code":"130304","name":"\uc81c\uc57d\uc5f0\uad6c\u00b7\uac1c\ubc1c"},"130305":{"kcode":"22569","tcode":"24","mcode":"13","bcode":"1303","code":"130305","name":"\uac74\uac15\ubcf4\uc870\uc2dd\ud488"},"130306":{"kcode":"26662","tcode":"24","mcode":"13","bcode":"1303","code":"130306","name":"CRA"}}},"1304":{"kcode":"22550","tcode":"9","mcode":"9","bcode":"13","code":"1304","name":"\uac04\ud638\uc0ac","keyword":{"130401":{"kcode":"22570","tcode":"24","mcode":"13","bcode":"1304","code":"130401","name":"\uac04\ud638\uc0ac"},"130402":{"kcode":"22571","tcode":"24","mcode":"13","bcode":"1304","code":"130402","name":"\uc218\uac04\ud638\uc0ac"},"130403":{"kcode":"22572","tcode":"24","mcode":"13","bcode":"1304","code":"130403","name":"\ucc45\uc784\uac04\ud638\uc0ac"},"130404":{"kcode":"22573","tcode":"24","mcode":"13","bcode":"1304","code":"130404","name":"\uc678\ub798\uac04\ud638\uc0ac"},"130405":{"kcode":"22574","tcode":"24","mcode":"13","bcode":"1304","code":"130405","name":"\ubcd1\ub3d9\uac04\ud638\uc0ac"},"130406":{"kcode":"22575","tcode":"24","mcode":"13","bcode":"1304","code":"130406","name":"\uc751\uae09\uc2e4\uac04\ud638\uc0ac"},"130407":{"kcode":"22576","tcode":"24","mcode":"13","bcode":"1304","code":"130407","name":"\uc218\uc220\uc2e4\uac04\ud638\uc0ac"},"130408":{"kcode":"22577","tcode":"24","mcode":"13","bcode":"1304","code":"130408","name":"\ub9c8\ucde8\uac04\ud638\uc0ac"},"130409":{"kcode":"22578","tcode":"24","mcode":"13","bcode":"1304","code":"130409","name":"\uc804\ubb38\uac04\ud638\uc0ac"},"130410":{"kcode":"22579","tcode":"24","mcode":"13","bcode":"1304","code":"130410","name":"\uac80\uc9c4\uc13c\ud130\uac04\ud638\uc0ac"},"130411":{"kcode":"22580","tcode":"24","mcode":"13","bcode":"1304","code":"130411","name":"\uc815\uc2e0\uacfc\uac04\ud638\uc0ac"},"130412":{"kcode":"22581","tcode":"24","mcode":"13","bcode":"1304","code":"130412","name":"NCLEX-RN"},"130413":{"kcode":"22582","tcode":"24","mcode":"13","bcode":"1304","code":"130413","name":"\ud658\uc790\ucc98\uce58\u00b7\uc751\ub300"},"130414":{"kcode":"22583","tcode":"24","mcode":"13","bcode":"1304","code":"130414","name":"\uc870\uc0b0\uc0ac"},"130415":{"kcode":"22584","tcode":"24","mcode":"13","bcode":"1304","code":"130415","name":"N-Keep"},"130416":{"kcode":"34369","tcode":"24","mcode":"13","bcode":"1304","code":"130416","name":"D-Keep"},"130417":{"kcode":"34370","tcode":"24","mcode":"13","bcode":"1304","code":"130417","name":"E-Keep"},"130418":{"kcode":"34371","tcode":"24","mcode":"13","bcode":"1304","code":"130418","name":"\uc5f0\uad6c\uac04\ud638\uc0ac(CRC)"},"130419":{"kcode":"34372","tcode":"24","mcode":"13","bcode":"1304","code":"130419","name":"\uc778\uacf5\uc2e0\uc7a5\uc2e4\uac04\ud638\uc0ac"},"130420":{"kcode":"34373","tcode":"24","mcode":"13","bcode":"1304","code":"130420","name":"\uc0b0\uc5c5\uac04\ud638\uc0ac"},"130421":{"kcode":"34374","tcode":"24","mcode":"13","bcode":"1304","code":"130421","name":"PA"},"130422":{"kcode":"34375","tcode":"24","mcode":"13","bcode":"1304","code":"130422","name":"SA"}}},"1305":{"kcode":"22551","tcode":"9","mcode":"9","bcode":"13","code":"1305","name":"\uac04\ud638\uc870\ubb34\uc0ac","keyword":{"130501":{"kcode":"22585","tcode":"24","mcode":"13","bcode":"1305","code":"130501","name":"\uac04\ud638\uc870\ubb34\uc0ac"},"130502":{"kcode":"22586","tcode":"24","mcode":"13","bcode":"1305","code":"130502","name":"\uc218\uc220\uc2e4\ubcf4\uc870"},"130503":{"kcode":"22587","tcode":"24","mcode":"13","bcode":"1305","code":"130503","name":"\uc0b0\ubd80\uc778\uacfc"},"130504":{"kcode":"22588","tcode":"24","mcode":"13","bcode":"1305","code":"130504","name":"\uce58\uacfc\uc870\ubb34\uc0ac"},"130505":{"kcode":"22589","tcode":"24","mcode":"13","bcode":"1305","code":"130505","name":"\ud55c\uc758\uc6d0"}}},"1306":{"kcode":"22552","tcode":"9","mcode":"9","bcode":"13","code":"1306","name":"\uc758\ub8cc\uae30\uc0ac","keyword":{"130601":{"kcode":"22590","tcode":"24","mcode":"13","bcode":"1306","code":"130601","name":"\uc784\uc0c1\ubcd1\ub9ac\uc0ac"},"130602":{"kcode":"22591","tcode":"24","mcode":"13","bcode":"1306","code":"130602","name":"\ubc29\uc0ac\uc120\uc0ac"},"130603":{"kcode":"22592","tcode":"24","mcode":"13","bcode":"1306","code":"130603","name":"\uce58\uae30\uacf5\uc0ac"},"130604":{"kcode":"22593","tcode":"24","mcode":"13","bcode":"1306","code":"130604","name":"\uce58\uacfc\uc704\uc0dd\uc0ac"},"130605":{"kcode":"22594","tcode":"24","mcode":"13","bcode":"1306","code":"130605","name":"\ubb3c\ub9ac\uce58\ub8cc\uc0ac"},"130606":{"kcode":"22595","tcode":"24","mcode":"13","bcode":"1306","code":"130606","name":"\uc548\uacbd\uc0ac"},"130607":{"kcode":"22596","tcode":"24","mcode":"13","bcode":"1306","code":"130607","name":"\uc601\uc591\uc0ac"},"130608":{"kcode":"22597","tcode":"24","mcode":"13","bcode":"1306","code":"130608","name":"\uc74c\uc545\u00b7\ubbf8\uc220\u00b7\ub180\uc774\uce58\ub8cc"},"130610":{"kcode":"22599","tcode":"24","mcode":"13","bcode":"1306","code":"130610","name":"\uc791\uc5c5\uce58\ub8cc\uc0ac"},"130611":{"kcode":"22600","tcode":"24","mcode":"13","bcode":"1306","code":"130611","name":"\uc751\uae09\uad6c\uc870\uc0ac"},"130612":{"kcode":"22601","tcode":"24","mcode":"13","bcode":"1306","code":"130612","name":"\uc704\uc0dd\uc0ac"},"130613":{"kcode":"22602","tcode":"24","mcode":"13","bcode":"1306","code":"130613","name":"\uc6b4\ub3d9\ucc98\ubc29\uc0ac"},"130614":{"kcode":"22603","tcode":"24","mcode":"13","bcode":"1306","code":"130614","name":"\uc0b0\uc5c5\uc704\uc0dd\uad00\ub9ac\uae30\uc0ac"},"130615":{"kcode":"22604","tcode":"24","mcode":"13","bcode":"1306","code":"130615","name":"\uc758\uacf5\uae30\uc0ac"},"130616":{"kcode":"22605","tcode":"24","mcode":"13","bcode":"1306","code":"130616","name":"\uc758\uc9c0\ubcf4\uc870\uae30\uae30\uc0ac"},"130617":{"kcode":"22606","tcode":"24","mcode":"13","bcode":"1306","code":"130617","name":"\uc5b8\uc5b4\uce58\ub8cc\uc0ac"},"130618":{"kcode":"22615","tcode":"24","mcode":"13","bcode":"1306","code":"130618","name":"\uc758\ubb34\uae30\ub85d\uc0ac"},"130619":{"kcode":"26610","tcode":"24","mcode":"13","bcode":"1306","code":"130619","name":"\uac80\uc548\uc0ac"},"130620":{"kcode":"9585","tcode":"24","mcode":"13","bcode":"1306","code":"130620","name":"\uc2ec\ub9ac\uce58\ub8cc\uc0ac"}}},"1307":{"kcode":"22553","tcode":"9","mcode":"9","bcode":"13","code":"1307","name":"\uc0ac\ubb34\u00b7\uc6d0\ubb34\u00b7\ucf54\ub514","keyword":{"130701":{"kcode":"22607","tcode":"24","mcode":"13","bcode":"1307","code":"130701","name":"\uc6d0\ubb34\ud589\uc815"},"130702":{"kcode":"22608","tcode":"24","mcode":"13","bcode":"1307","code":"130702","name":"\uc57c\uac04\ub2f9\uc9c1\uc790"},"130703":{"kcode":"22609","tcode":"24","mcode":"13","bcode":"1307","code":"130703","name":"\ubcd1\uc6d0\ucf54\ub514\ub124\uc774\ud130"},"130704":{"kcode":"22610","tcode":"24","mcode":"13","bcode":"1307","code":"130704","name":"\uad6c\ub9e4\u00b7\uc870\ub2ec"},"130705":{"kcode":"22611","tcode":"24","mcode":"13","bcode":"1307","code":"130705","name":"\ubcd1\uc6d0\uc2dc\uc124\uad00\ub9ac"},"130706":{"kcode":"22612","tcode":"24","mcode":"13","bcode":"1307","code":"130706","name":"\uc811\uc218\u00b7\uc218\ub0a9\u00b7\uc608\uc57d"},"130707":{"kcode":"22613","tcode":"24","mcode":"13","bcode":"1307","code":"130707","name":"\uc804\ud654\uad50\ud658\u00b7\uc548\ub0b4"}}},"1308":{"kcode":"22554","tcode":"9","mcode":"9","bcode":"13","code":"1308","name":"\ubcf4\ud5d8\uc2ec\uc0ac\uacfc","keyword":{"130801":{"kcode":"22614","tcode":"24","mcode":"13","bcode":"1308","code":"130801","name":"\ubcf4\ud5d8\uc2ec\uc0ac\u00b7\uccad\uad6c"}}},"1309":{"kcode":"22555","tcode":"9","mcode":"9","bcode":"13","code":"1309","name":"\uc758\ub8cc\uae30\ud0c0\uc9c1","keyword":{"130901":{"kcode":"22616","tcode":"24","mcode":"13","bcode":"1309","code":"130901","name":"\uad6c\uae09\ucc28\uae30\uc0ac"},"130902":{"kcode":"22617","tcode":"24","mcode":"13","bcode":"1309","code":"130902","name":"\uccad\uc18c\u00b7\ubbf8\ud654"},"130903":{"kcode":"22618","tcode":"24","mcode":"13","bcode":"1309","code":"130903","name":"\uacbd\ube44\u00b7\ubcf4\uc548"},"130904":{"kcode":"22619","tcode":"24","mcode":"13","bcode":"1309","code":"130904","name":"\uc870\ub9ac\uc0ac"},"130905":{"kcode":"22620","tcode":"24","mcode":"13","bcode":"1309","code":"130905","name":"\uac04\ubcd1\uc778"},"130906":{"kcode":"22621","tcode":"24","mcode":"13","bcode":"1309","code":"130906","name":"\uc0ac\ud68c\ubcf5\uc9c0\uc0ac"},"130907":{"kcode":"22622","tcode":"24","mcode":"13","bcode":"1309","code":"130907","name":"\uc758\ub8cc\uae30\ud0c0\uc9c1"}}}}}}     
</script>
   <script type='text/javascript'>
var googleSlotList = {};

var googletag = googletag || {};
googletag.cmd = googletag.cmd || [];

(function() {
var useSSL = 'https:' == document.location.protocol;
var src = (useSSL ? 'https:' : 'http:') + '//www.googletagservices.com/tag/js/gpt.js';
document.write('<scr' + 'ipt src="' + src + '"></scr' + 'ipt>');
})();
</script>
<script type="text/javascript">
    function invPcStat(params,opt) {
        new Ajax.Request( "/zf_user/appinstall-nudge/stat", {
                method: 'GET', 
                parameters : { params : params}
        });
        var tmp = params.split(",");
        try{n_trackEvent('app_nudge_pc', tmp[0], tmp[2], opt);}catch(e){};
    }

    function wrap(obj, target) {
        // Convert 'target' to an array, if necessary.
        if(!obj) {
            return;
        }
        if(!target.length) {
            target = [target];
        }

        // Loops backwards to prevent having to clone the wrapper on the first element (see 'child' below).
        for(var i = target.length - 1; i >= 0; i--) {
            var child = (i > 0) ? obj.cloneNode(true) : obj;
            var el = target[i];

            // Cache the current parent and sibling.
            var parent  = el.parentNode;
            var sibling = el.nextSibling;

            // Wrap the element (is automatically removed from its current parent).
            child.appendChild(el);

            // If the element had a sibling, insert the wrapper before the sibling to maintain the HTML structure;
            // otherwise, just append it to the parent.
            if(sibling) {
                parent.insertBefore(child, sibling);
            }else{
                parent.appendChild(child);
            }
        }
    }

    function addEvent(elem,type,handler){
        if(elem.addEventListener) elem.addEventListener(type,handler,false);
        else if(elem.attachEvent) elem.attachEvent('on'+type,handler);
    }

    function removeEvent(elem,type,handler) {
        if(elem.addEventListener) elem.removeEventListener(type, handler ,false);
        else if(elem.attachEvent) elem.detachEvent('on'+type, handler);
    }

    function nextElem(obj) {
        if(!obj) return;
        do{
            obj = obj.nextSibling;
        }while(obj && obj.nodeType !== 1);
        return obj;
    }

    function getIndex(obj, array) {
        for (var i = 0; i < array.length; i++) {
            if (array[i] === obj) {
                return i;
            }
        }
    }

    function placeholderIsSupported() {
        var test = document.createElement('INPUT');
        return ('placeholder' in test);
    }

    if (!document.getElementsByClassName) { //ie8 에서 getElementsByClassName 처리를 위한 polyfill
        document.getElementsByClassName = function(search) {
            var d = document, elements, pattern, i, results = [];
            if (d.querySelectorAll) { // IE8
                return d.querySelectorAll("." + search);
            }
            if (d.evaluate) { // IE6, IE7
                pattern = ".//*[contains(concat(' ', @class, ' '), ' " + search + " ')]";
                elements = d.evaluate(pattern, d, null, 0, null);
                while ((i = elements.iterateNext())) {
                    results.push(i);
                }
            } else {
                elements = d.getElementsByTagName("*");
                pattern = new RegExp("(^|\\s)" + search + "(\\s|$)");
                for (i = 0; i < elements.length; i++) {
                    if ( pattern.test(elements[i].className) ) {
                        results.push(elements[i]);
                    }
                }
            }
            return results;
        }
    }

    function placeholder() {
        if( placeholderIsSupported() ) {
            return;
        }
        
        var textareaElement = document.getElementsByClassName("sri_textarea");
        if(textareaElement.length > 0) {
            var inputElement = new Array();
            var tempInputElement = document.getElementsByTagName("INPUT");

            for (var i = 0; i< tempInputElement.length;i++){
                inputElement.push(tempInputElement[i]);
            }
            for (var j = 0; j< textareaElement.length;j++) {
                inputElement.push(textareaElement[j]);
            }
        } else {
            var inputElement = document.getElementsByTagName("INPUT");
        }
        var arrayInputElement = [];
        var arrayPseudoPlaceholder = [];

        for(var i=0; i<inputElement.length; i++) {
            if(inputElement[i].getAttribute("placeholder") === null) {
                continue;
            }

            // 감싸는 엘리먼트 만들기
            var parentInputElement = inputElement[i].parentNode;
            var wrapInputElement = document.createElement("SPAN"); // inputText를 감싸기 위한 엘리먼트를 생성한다.
            wrapInputElement.className = "wrap_placeholder"; // 클래스 지정
            parentInputElement.insertBefore(wrapInputElement, parentInputElement.childNodes[0]);
            wrap(wrapInputElement, inputElement[i]); // inputText를 새로 생성한 엘리먼트로 감싼다.

            // 가상 placeholder 만들기
            var pseudoPlaceholder = document.createElement("SPAN");
            var placeholderValue = document.createTextNode(inputElement[i].getAttribute("placeholder"));
            pseudoPlaceholder.className = "pseudo_placeholder";
            pseudoPlaceholder.appendChild(placeholderValue);
            wrapInputElement.insertBefore(pseudoPlaceholder, wrapInputElement.childNodes[0]);
            if(inputElement[i].value.length !== 0) { // inputText에 value값이 존재한다면(수정 페이지등) 가상 placeholder를 숨김처리
                pseudoPlaceholder.style.visibility = "hidden";
            }

            arrayPseudoPlaceholder.push(pseudoPlaceholder); // 생성된 가상 placeholder를 배열에 담는다.
            arrayInputElement.push(inputElement[i]); // placeholder 어트리뷰트가 없는 엘리먼트는 컨티뉴로 건너뜀
        }

        for(var j = 0;j < arrayInputElement.length;j++) {
            inputElem = arrayInputElement[j];
            addEvent(arrayInputElement[j], "keyup", function(ev) {
                var eventTarget = ev.target ? ev.target : ev.srcElement;
                var idx = getIndex(eventTarget, arrayInputElement);

                if(eventTarget.value.length > 0) { // 입력된 글자수가 0보다 많다면
                    arrayPseudoPlaceholder[idx].style.visibility = "hidden";
                }else{ // 입력된 글자수가 1보다 작다면
                    arrayPseudoPlaceholder[idx].style.visibility = "visible";
                }
            });
            addEvent(arrayPseudoPlaceholder[j], "click", function(ev) {
                var eventTarget = ev.target ? ev.target : ev.srcElement;
                nextElem(eventTarget).focus();
            });
        }
    }
    addEvent(window, "load", placeholder);
    </script>

<script type='text/javascript'>
googletag.cmd.push(function() {
                        googleSlotList['div-gpt-ad-1511847708022-0'] = googletag.defineSlot('/61280259/1000-list_120x240', [120, 240], 'div-gpt-ad-1511847708022-0').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1400664864294-0'] = googletag.defineSlot('/61280259/1000-list_120x600', [120, 600], 'div-gpt-ad-1400664864294-0').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1511846653839-0'] = googletag.defineSlot('/61280259/area-list_120x240', [120, 240], 'div-gpt-ad-1511846653839-0').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1400664864294-2'] = googletag.defineSlot('/61280259/area-list_120x600', [120, 600], 'div-gpt-ad-1400664864294-2').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1400664864294-3'] = googletag.defineSlot('/61280259/area-list_728x90', [728, 90], 'div-gpt-ad-1400664864294-3').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1511845706684-0'] = googletag.defineSlot('/61280259/category-list_120x240', [120, 240], 'div-gpt-ad-1511845706684-0').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1400664864294-4'] = googletag.defineSlot('/61280259/category-list_120x600', [120, 600], 'div-gpt-ad-1400664864294-4').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1400664864294-5'] = googletag.defineSlot('/61280259/category-list_728x90', [728, 90], 'div-gpt-ad-1400664864294-5').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1426214085634-0'] = googletag.defineSlot('/61280259/Contest-box_left_307x281', [307, 281], 'div-gpt-ad-1426214085634-0').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1426214150723-0'] = googletag.defineSlot('/61280259/Contest-box_middle_307x281', [307, 281], 'div-gpt-ad-1426214150723-0').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1426214197444-0'] = googletag.defineSlot('/61280259/Contest-box_right_307x281', [307, 281], 'div-gpt-ad-1426214197444-0').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1511845587070-0'] = googletag.defineSlot('/61280259/CS_120x240', [120, 240], 'div-gpt-ad-1511845587070-0').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1400664864294-6'] = googletag.defineSlot('/61280259/CS_120x600', [120, 600], 'div-gpt-ad-1400664864294-6').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1400664864294-7'] = googletag.defineSlot('/61280259/CS_728x90', [728, 90], 'div-gpt-ad-1400664864294-7').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1511846339912-0'] = googletag.defineSlot('/61280259/etc_120x240', [120, 240], 'div-gpt-ad-1511846339912-0').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1400664864294-10'] = googletag.defineSlot('/61280259/etc_120x600', [120, 600], 'div-gpt-ad-1400664864294-10').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1400664864294-11'] = googletag.defineSlot('/61280259/etc_728x90', [728, 90], 'div-gpt-ad-1400664864294-11').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1550638948072-0'] = googletag.defineSlot('/61280259/Login_728x90', [728, 90], 'div-gpt-ad-1550638948072-0').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1400664864294-12'] = googletag.defineSlot('/61280259/logout_120x600', [120, 600], 'div-gpt-ad-1400664864294-12').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1400664864294-13'] = googletag.defineSlot('/61280259/logout_728x90', [728, 90], 'div-gpt-ad-1400664864294-13').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1533172458701-0'] = googletag.defineSlot('/61280259/Main-Big_108x360', [108, 360], 'div-gpt-ad-1533172458701-0').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1425521803564-0'] = googletag.defineSlot('/61280259/Main-Big_543x113', [543, 113], 'div-gpt-ad-1425521803564-0').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1426837722822-0'] = googletag.defineSlot('/61280259/Main-image_230x142', [230, 142], 'div-gpt-ad-1426837722822-0').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1553056482914-0'] = googletag.defineSlot('/61280259/member_120x240', [120, 240], 'div-gpt-ad-1553056482914-0').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1400664864294-14'] = googletag.defineSlot('/61280259/member_120x600', [120, 600], 'div-gpt-ad-1400664864294-14').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1400664864294-15'] = googletag.defineSlot('/61280259/member_728x90', [728, 90], 'div-gpt-ad-1400664864294-15').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1550543155169-0'] = googletag.defineSlot('/61280259/memcom_120x240', [120, 240], 'div-gpt-ad-1550543155169-0').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1400664864294-16'] = googletag.defineSlot('/61280259/memcom_120x600', [120, 600], 'div-gpt-ad-1400664864294-16').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1400664864294-17'] = googletag.defineSlot('/61280259/memcom_728x90', [728, 90], 'div-gpt-ad-1400664864294-17').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1511846020570-0'] = googletag.defineSlot('/61280259/profession-list_120x240', [120, 240], 'div-gpt-ad-1511846020570-0').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1400664864294-18'] = googletag.defineSlot('/61280259/profession-list_120x600', [120, 600], 'div-gpt-ad-1400664864294-18').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1400664864294-19'] = googletag.defineSlot('/61280259/profession-list_728x90', [728, 90], 'div-gpt-ad-1400664864294-19').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1400664864294-20'] = googletag.defineSlot('/61280259/rapid-view_120x600', [120, 600], 'div-gpt-ad-1400664864294-20').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1511933728215-0'] = googletag.defineSlot('/61280259/recruit-view_120x240', [120, 240], 'div-gpt-ad-1511933728215-0').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1400664864294-22'] = googletag.defineSlot('/61280259/recruit-view_120x600', [120, 600], 'div-gpt-ad-1400664864294-22').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1547596188605-0'] = googletag.defineSlot('/61280259/recruit-view_250x250', [250, 250], 'div-gpt-ad-1547596188605-0').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1400664864294-23'] = googletag.defineSlot('/61280259/recruit-view_728x90', [728, 90], 'div-gpt-ad-1400664864294-23').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1374566074903-2'] = googletag.defineSlot('/61280259/SearchLeft120x600', [120, 600], 'div-gpt-ad-1374566074903-2').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1384850668630-1'] = googletag.defineSlot('/61280259/SearchTop_468x60', [468, 60], 'div-gpt-ad-1384850668630-1').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1550638841234-0'] = googletag.defineSlot('/61280259/successHelper_728x90', [728, 90], 'div-gpt-ad-1550638841234-0').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1553056822382-0'] = googletag.defineSlot('/61280259/talent_120x240', [120, 240], 'div-gpt-ad-1553056822382-0').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1400664864294-24'] = googletag.defineSlot('/61280259/talent_120x600', [120, 600], 'div-gpt-ad-1400664864294-24').addService(googletag.pubads());
                    googleSlotList['div-gpt-ad-1400664864294-25'] = googletag.defineSlot('/61280259/talent_728x90', [728, 90], 'div-gpt-ad-1400664864294-25').addService(googletag.pubads());
                googletag.enableServices();
    googletag.pubads().addEventListener('slotRenderEnded', function(event) {
        if (!event.isEmpty) {
            var domId = event.slot.getSlotId().getDomId();
            if (!!document.getElementById(domId + '-wrapper')) {
                document.getElementById(domId + '-wrapper').querySelector('.google-standby-banner').style.display = 'none';
                document.getElementById(domId + '-inner').style.display = '';
            }
        }
    });
});
</script>

<script type="text/template" id="request_job_category">
    <div class="layer_pop_manage layer_hope" data-layer_id="request_job_category">
        <div class="layer_manage_wrap">
            <h4>직종 추가요청</h4>
            <p class="txt">
                직종분류를 선택하신 후 추가를 원하는 직종명을 입력하시기 바랍니다.<br>
                요청하신 사항은 검토 후에 반영됩니다.
            </p>
            <fieldset>
                <legend>직종 추가요청</legend>
                <table class="manage_list_table reg_table">
                    <caption>직종 추가요청</caption>
                    <colgroup>
                        <col style="width: 120px;">
                        <col>
                    </colgroup>
                    <tbody>
                    <tr>
                        <th scope="row">1차 직종<span class="essential">*</span></th>
                        <td class="file_select">
                            <select name="add_bcode">
                                <option value="1" label="경영·사무">경영·사무</option><option value="10" label="유통·무역">유통·무역</option><option value="2" label="영업·고객상담">영업·고객상담</option><option value="3" label="생산·제조">생산·제조</option><option value="4" label="IT·인터넷">IT·인터넷</option><option value="12" label="디자인">디자인</option><option value="5" label="전문직">전문직</option><option value="6" label="교육">교육</option><option value="7" label="미디어">미디어</option><option value="8" label="특수계층·공공">특수계층·공공</option><option value="9" label="건설">건설</option><option value="11" label="서비스">서비스</option><option value="13" label="의료">의료</option>                            </select>
                        </td>
                    </tr>
                    <tr class="onlyPortfolio">
                        <th scope="row">추가 직종<span class="essential">*</span></th>
                        <td>
                            <textarea name="add_contents" style="-ms-word-break: break-all;"></textarea>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <div class="bottom_btn_wrap">
                    <button type="button" class="btn_basic_type05 btn_job_add">완료</button>
                    <button type="button" class="btn_basic_type01 btn_close">취소</button>
                </div>
            </fieldset>

            <button type="button" class="btn_layer_close btn_close"><span>닫기</span></button>
        </div>
    </div>
</script>
<script type="text/template" id="career_job_category">
    <div class="layer_pop_manage layer_jobs_select" data-layer_id="career_job_category">
        <div class="layer_manage_wrap">
            <h4>직종 선택</h4>
            <button class="btn_layer_close btn_close" type="button"><span>닫기</span></button>
            <fieldset>
                <legend>직종 선택</legend>
                <div class="area_table_scroll">
                    <table class="manage_list_table reg_table">
                        <caption>직종 선택</caption>
                        <colgroup>
                            <col style="width: 120px;">
                            <col>
                        </colgroup>
                        <tbody>
                                                        <tr>
                                    <th>경영·사무</th>
                                    <td>
                                        <ul class="list_depth2">
                                                                                                <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_101">
                                                            <input type="checkbox" id="career_job_category_101" name="career_job_category" class="inp_check"
                                                                   value="101"
                                                                   data-job_category_cd="101"
                                                                   data-job_category_text="경영·사무 > 기획·전략·경영">
                                                            <span class="txt_check">기획·전략·경영</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_102">
                                                            <input type="checkbox" id="career_job_category_102" name="career_job_category" class="inp_check"
                                                                   value="102"
                                                                   data-job_category_cd="102"
                                                                   data-job_category_text="경영·사무 > 총무·법무·사무">
                                                            <span class="txt_check">총무·법무·사무</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_103">
                                                            <input type="checkbox" id="career_job_category_103" name="career_job_category" class="inp_check"
                                                                   value="103"
                                                                   data-job_category_cd="103"
                                                                   data-job_category_text="경영·사무 > 경리·출납·결산">
                                                            <span class="txt_check">경리·출납·결산</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_104">
                                                            <input type="checkbox" id="career_job_category_104" name="career_job_category" class="inp_check"
                                                                   value="104"
                                                                   data-job_category_cd="104"
                                                                   data-job_category_text="경영·사무 > 홍보·PR·사보">
                                                            <span class="txt_check">홍보·PR·사보</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_107">
                                                            <input type="checkbox" id="career_job_category_107" name="career_job_category" class="inp_check"
                                                                   value="107"
                                                                   data-job_category_cd="107"
                                                                   data-job_category_text="경영·사무 > 비서·안내·수행원">
                                                            <span class="txt_check">비서·안내·수행원</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_108">
                                                            <input type="checkbox" id="career_job_category_108" name="career_job_category" class="inp_check"
                                                                   value="108"
                                                                   data-job_category_cd="108"
                                                                   data-job_category_text="경영·사무 > 사무보조·문서작성">
                                                            <span class="txt_check">사무보조·문서작성</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_113">
                                                            <input type="checkbox" id="career_job_category_113" name="career_job_category" class="inp_check"
                                                                   value="113"
                                                                   data-job_category_cd="113"
                                                                   data-job_category_text="경영·사무 > 인사·교육·노무">
                                                            <span class="txt_check">인사·교육·노무</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_114">
                                                            <input type="checkbox" id="career_job_category_114" name="career_job_category" class="inp_check"
                                                                   value="114"
                                                                   data-job_category_cd="114"
                                                                   data-job_category_text="경영·사무 > 회계·재무·세무·IR">
                                                            <span class="txt_check">회계·재무·세무·IR</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_119">
                                                            <input type="checkbox" id="career_job_category_119" name="career_job_category" class="inp_check"
                                                                   value="119"
                                                                   data-job_category_cd="119"
                                                                   data-job_category_text="경영·사무 > 마케팅·광고·분석">
                                                            <span class="txt_check">마케팅·광고·분석</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_120">
                                                            <input type="checkbox" id="career_job_category_120" name="career_job_category" class="inp_check"
                                                                   value="120"
                                                                   data-job_category_cd="120"
                                                                   data-job_category_text="경영·사무 > 전시·컨벤션·세미나">
                                                            <span class="txt_check">전시·컨벤션·세미나</span>
                                                        </label>
                                                    </li>
                                                                                            </ul>
                                    </td>
                                </tr>
                                                                <tr>
                                    <th>유통·무역</th>
                                    <td>
                                        <ul class="list_depth2">
                                                                                                <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1001">
                                                            <input type="checkbox" id="career_job_category_1001" name="career_job_category" class="inp_check"
                                                                   value="1001"
                                                                   data-job_category_cd="1001"
                                                                   data-job_category_text="유통·무역 > 물류·유통·운송">
                                                            <span class="txt_check">물류·유통·운송</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1002">
                                                            <input type="checkbox" id="career_job_category_1002" name="career_job_category" class="inp_check"
                                                                   value="1002"
                                                                   data-job_category_cd="1002"
                                                                   data-job_category_text="유통·무역 > 해외영업·무역영업">
                                                            <span class="txt_check">해외영업·무역영업</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1003">
                                                            <input type="checkbox" id="career_job_category_1003" name="career_job_category" class="inp_check"
                                                                   value="1003"
                                                                   data-job_category_cd="1003"
                                                                   data-job_category_text="유통·무역 > 구매·자재·재고">
                                                            <span class="txt_check">구매·자재·재고</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1004">
                                                            <input type="checkbox" id="career_job_category_1004" name="career_job_category" class="inp_check"
                                                                   value="1004"
                                                                   data-job_category_cd="1004"
                                                                   data-job_category_text="유통·무역 > 납품·배송·택배">
                                                            <span class="txt_check">납품·배송·택배</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1005">
                                                            <input type="checkbox" id="career_job_category_1005" name="career_job_category" class="inp_check"
                                                                   value="1005"
                                                                   data-job_category_cd="1005"
                                                                   data-job_category_text="유통·무역 > 상품기획·MD">
                                                            <span class="txt_check">상품기획·MD</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1006">
                                                            <input type="checkbox" id="career_job_category_1006" name="career_job_category" class="inp_check"
                                                                   value="1006"
                                                                   data-job_category_cd="1006"
                                                                   data-job_category_text="유통·무역 > 무역사무·수출입">
                                                            <span class="txt_check">무역사무·수출입</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1007">
                                                            <input type="checkbox" id="career_job_category_1007" name="career_job_category" class="inp_check"
                                                                   value="1007"
                                                                   data-job_category_cd="1007"
                                                                   data-job_category_text="유통·무역 > 운전·기사">
                                                            <span class="txt_check">운전·기사</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1008">
                                                            <input type="checkbox" id="career_job_category_1008" name="career_job_category" class="inp_check"
                                                                   value="1008"
                                                                   data-job_category_cd="1008"
                                                                   data-job_category_text="유통·무역 > 중장비·화물">
                                                            <span class="txt_check">중장비·화물</span>
                                                        </label>
                                                    </li>
                                                                                            </ul>
                                    </td>
                                </tr>
                                                                <tr>
                                    <th>영업·고객상담</th>
                                    <td>
                                        <ul class="list_depth2">
                                                                                                <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_202">
                                                            <input type="checkbox" id="career_job_category_202" name="career_job_category" class="inp_check"
                                                                   value="202"
                                                                   data-job_category_cd="202"
                                                                   data-job_category_text="영업·고객상담 > 일반영업">
                                                            <span class="txt_check">일반영업</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_203">
                                                            <input type="checkbox" id="career_job_category_203" name="career_job_category" class="inp_check"
                                                                   value="203"
                                                                   data-job_category_cd="203"
                                                                   data-job_category_text="영업·고객상담 > 판매·매장관리">
                                                            <span class="txt_check">판매·매장관리</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_205">
                                                            <input type="checkbox" id="career_job_category_205" name="career_job_category" class="inp_check"
                                                                   value="205"
                                                                   data-job_category_cd="205"
                                                                   data-job_category_text="영업·고객상담 > IT·솔루션영업">
                                                            <span class="txt_check">IT·솔루션영업</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_206">
                                                            <input type="checkbox" id="career_job_category_206" name="career_job_category" class="inp_check"
                                                                   value="206"
                                                                   data-job_category_cd="206"
                                                                   data-job_category_text="영업·고객상담 > 금융·보험영업">
                                                            <span class="txt_check">금융·보험영업</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_207">
                                                            <input type="checkbox" id="career_job_category_207" name="career_job_category" class="inp_check"
                                                                   value="207"
                                                                   data-job_category_cd="207"
                                                                   data-job_category_text="영업·고객상담 > 광고영업">
                                                            <span class="txt_check">광고영업</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_208">
                                                            <input type="checkbox" id="career_job_category_208" name="career_job_category" class="inp_check"
                                                                   value="208"
                                                                   data-job_category_cd="208"
                                                                   data-job_category_text="영업·고객상담 > 기술영업">
                                                            <span class="txt_check">기술영업</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_209">
                                                            <input type="checkbox" id="career_job_category_209" name="career_job_category" class="inp_check"
                                                                   value="209"
                                                                   data-job_category_cd="209"
                                                                   data-job_category_text="영업·고객상담 > 영업기획·관리·지원">
                                                            <span class="txt_check">영업기획·관리·지원</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_210">
                                                            <input type="checkbox" id="career_job_category_210" name="career_job_category" class="inp_check"
                                                                   value="210"
                                                                   data-job_category_cd="210"
                                                                   data-job_category_text="영업·고객상담 > TM·아웃바운드">
                                                            <span class="txt_check">TM·아웃바운드</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_211">
                                                            <input type="checkbox" id="career_job_category_211" name="career_job_category" class="inp_check"
                                                                   value="211"
                                                                   data-job_category_cd="211"
                                                                   data-job_category_text="영업·고객상담 > TM·인바운드">
                                                            <span class="txt_check">TM·인바운드</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_212">
                                                            <input type="checkbox" id="career_job_category_212" name="career_job_category" class="inp_check"
                                                                   value="212"
                                                                   data-job_category_cd="212"
                                                                   data-job_category_text="영업·고객상담 > 고객센터·CS">
                                                            <span class="txt_check">고객센터·CS</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_213">
                                                            <input type="checkbox" id="career_job_category_213" name="career_job_category" class="inp_check"
                                                                   value="213"
                                                                   data-job_category_cd="213"
                                                                   data-job_category_text="영업·고객상담 > QA·CS강사·수퍼바이저">
                                                            <span class="txt_check">QA·CS강사·수퍼바이저</span>
                                                        </label>
                                                    </li>
                                                                                            </ul>
                                    </td>
                                </tr>
                                                                <tr>
                                    <th>생산·제조</th>
                                    <td>
                                        <ul class="list_depth2">
                                                                                                <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_301">
                                                            <input type="checkbox" id="career_job_category_301" name="career_job_category" class="inp_check"
                                                                   value="301"
                                                                   data-job_category_cd="301"
                                                                   data-job_category_text="생산·제조 > 금속·금형">
                                                            <span class="txt_check">금속·금형</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_302">
                                                            <input type="checkbox" id="career_job_category_302" name="career_job_category" class="inp_check"
                                                                   value="302"
                                                                   data-job_category_cd="302"
                                                                   data-job_category_text="생산·제조 > 기계·기계설비">
                                                            <span class="txt_check">기계·기계설비</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_303">
                                                            <input type="checkbox" id="career_job_category_303" name="career_job_category" class="inp_check"
                                                                   value="303"
                                                                   data-job_category_cd="303"
                                                                   data-job_category_text="생산·제조 > 화학·에너지">
                                                            <span class="txt_check">화학·에너지</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_304">
                                                            <input type="checkbox" id="career_job_category_304" name="career_job_category" class="inp_check"
                                                                   value="304"
                                                                   data-job_category_cd="304"
                                                                   data-job_category_text="생산·제조 > 섬유·의류·패션">
                                                            <span class="txt_check">섬유·의류·패션</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_308">
                                                            <input type="checkbox" id="career_job_category_308" name="career_job_category" class="inp_check"
                                                                   value="308"
                                                                   data-job_category_cd="308"
                                                                   data-job_category_text="생산·제조 > 전기·전자·제어">
                                                            <span class="txt_check">전기·전자·제어</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_309">
                                                            <input type="checkbox" id="career_job_category_309" name="career_job_category" class="inp_check"
                                                                   value="309"
                                                                   data-job_category_cd="309"
                                                                   data-job_category_text="생산·제조 > 생산관리·품질관리">
                                                            <span class="txt_check">생산관리·품질관리</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_314">
                                                            <input type="checkbox" id="career_job_category_314" name="career_job_category" class="inp_check"
                                                                   value="314"
                                                                   data-job_category_cd="314"
                                                                   data-job_category_text="생산·제조 > 반도체·디스플레이·LCD">
                                                            <span class="txt_check">반도체·디스플레이·LCD</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_315">
                                                            <input type="checkbox" id="career_job_category_315" name="career_job_category" class="inp_check"
                                                                   value="315"
                                                                   data-job_category_cd="315"
                                                                   data-job_category_text="생산·제조 > 생산·제조·포장·조립">
                                                            <span class="txt_check">생산·제조·포장·조립</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_316">
                                                            <input type="checkbox" id="career_job_category_316" name="career_job_category" class="inp_check"
                                                                   value="316"
                                                                   data-job_category_cd="316"
                                                                   data-job_category_text="생산·제조 > 비금속·요업·신소재">
                                                            <span class="txt_check">비금속·요업·신소재</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_317">
                                                            <input type="checkbox" id="career_job_category_317" name="career_job_category" class="inp_check"
                                                                   value="317"
                                                                   data-job_category_cd="317"
                                                                   data-job_category_text="생산·제조 > 바이오·제약·식품">
                                                            <span class="txt_check">바이오·제약·식품</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_318">
                                                            <input type="checkbox" id="career_job_category_318" name="career_job_category" class="inp_check"
                                                                   value="318"
                                                                   data-job_category_cd="318"
                                                                   data-job_category_text="생산·제조 > 설계·CAD·CAM">
                                                            <span class="txt_check">설계·CAD·CAM</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_319">
                                                            <input type="checkbox" id="career_job_category_319" name="career_job_category" class="inp_check"
                                                                   value="319"
                                                                   data-job_category_cd="319"
                                                                   data-job_category_text="생산·제조 > 안경·렌즈·광학">
                                                            <span class="txt_check">안경·렌즈·광학</span>
                                                        </label>
                                                    </li>
                                                                                            </ul>
                                    </td>
                                </tr>
                                                                <tr>
                                    <th>IT·인터넷</th>
                                    <td>
                                        <ul class="list_depth2">
                                                                                                <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_404">
                                                            <input type="checkbox" id="career_job_category_404" name="career_job_category" class="inp_check"
                                                                   value="404"
                                                                   data-job_category_cd="404"
                                                                   data-job_category_text="IT·인터넷 > 웹개발">
                                                            <span class="txt_check">웹개발</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_407">
                                                            <input type="checkbox" id="career_job_category_407" name="career_job_category" class="inp_check"
                                                                   value="407"
                                                                   data-job_category_cd="407"
                                                                   data-job_category_text="IT·인터넷 > 응용프로그램개발">
                                                            <span class="txt_check">응용프로그램개발</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_408">
                                                            <input type="checkbox" id="career_job_category_408" name="career_job_category" class="inp_check"
                                                                   value="408"
                                                                   data-job_category_cd="408"
                                                                   data-job_category_text="IT·인터넷 > 시스템개발">
                                                            <span class="txt_check">시스템개발</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_402">
                                                            <input type="checkbox" id="career_job_category_402" name="career_job_category" class="inp_check"
                                                                   value="402"
                                                                   data-job_category_cd="402"
                                                                   data-job_category_text="IT·인터넷 > 서버·네트워크·보안">
                                                            <span class="txt_check">서버·네트워크·보안</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_409">
                                                            <input type="checkbox" id="career_job_category_409" name="career_job_category" class="inp_check"
                                                                   value="409"
                                                                   data-job_category_cd="409"
                                                                   data-job_category_text="IT·인터넷 > ERP·시스템분석·설계">
                                                            <span class="txt_check">ERP·시스템분석·설계</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_416">
                                                            <input type="checkbox" id="career_job_category_416" name="career_job_category" class="inp_check"
                                                                   value="416"
                                                                   data-job_category_cd="416"
                                                                   data-job_category_text="IT·인터넷 > 데이터베이스·DBA">
                                                            <span class="txt_check">데이터베이스·DBA</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_413">
                                                            <input type="checkbox" id="career_job_category_413" name="career_job_category" class="inp_check"
                                                                   value="413"
                                                                   data-job_category_cd="413"
                                                                   data-job_category_text="IT·인터넷 > 퍼블리싱·UI개발">
                                                            <span class="txt_check">퍼블리싱·UI개발</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_412">
                                                            <input type="checkbox" id="career_job_category_412" name="career_job_category" class="inp_check"
                                                                   value="412"
                                                                   data-job_category_cd="412"
                                                                   data-job_category_text="IT·인터넷 > 웹디자인">
                                                            <span class="txt_check">웹디자인</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_411">
                                                            <input type="checkbox" id="career_job_category_411" name="career_job_category" class="inp_check"
                                                                   value="411"
                                                                   data-job_category_cd="411"
                                                                   data-job_category_text="IT·인터넷 > 하드웨어·소프트웨어">
                                                            <span class="txt_check">하드웨어·소프트웨어</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_410">
                                                            <input type="checkbox" id="career_job_category_410" name="career_job_category" class="inp_check"
                                                                   value="410"
                                                                   data-job_category_cd="410"
                                                                   data-job_category_text="IT·인터넷 > 통신·모바일">
                                                            <span class="txt_check">통신·모바일</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_403">
                                                            <input type="checkbox" id="career_job_category_403" name="career_job_category" class="inp_check"
                                                                   value="403"
                                                                   data-job_category_cd="403"
                                                                   data-job_category_text="IT·인터넷 > 웹기획·PM">
                                                            <span class="txt_check">웹기획·PM</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_401">
                                                            <input type="checkbox" id="career_job_category_401" name="career_job_category" class="inp_check"
                                                                   value="401"
                                                                   data-job_category_cd="401"
                                                                   data-job_category_text="IT·인터넷 > 웹마스터·QA·테스터">
                                                            <span class="txt_check">웹마스터·QA·테스터</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_406">
                                                            <input type="checkbox" id="career_job_category_406" name="career_job_category" class="inp_check"
                                                                   value="406"
                                                                   data-job_category_cd="406"
                                                                   data-job_category_text="IT·인터넷 > 컨텐츠·사이트운영">
                                                            <span class="txt_check">컨텐츠·사이트운영</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_405">
                                                            <input type="checkbox" id="career_job_category_405" name="career_job_category" class="inp_check"
                                                                   value="405"
                                                                   data-job_category_cd="405"
                                                                   data-job_category_text="IT·인터넷 > 게임·Game">
                                                            <span class="txt_check">게임·Game</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_415">
                                                            <input type="checkbox" id="career_job_category_415" name="career_job_category" class="inp_check"
                                                                   value="415"
                                                                   data-job_category_cd="415"
                                                                   data-job_category_text="IT·인터넷 > IT·디자인·컴퓨터교육">
                                                            <span class="txt_check">IT·디자인·컴퓨터교육</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_414">
                                                            <input type="checkbox" id="career_job_category_414" name="career_job_category" class="inp_check"
                                                                   value="414"
                                                                   data-job_category_cd="414"
                                                                   data-job_category_text="IT·인터넷 > 동영상·편집·코덱">
                                                            <span class="txt_check">동영상·편집·코덱</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_417">
                                                            <input type="checkbox" id="career_job_category_417" name="career_job_category" class="inp_check"
                                                                   value="417"
                                                                   data-job_category_cd="417"
                                                                   data-job_category_text="IT·인터넷 > 인공지능(AI)·빅데이터">
                                                            <span class="txt_check">인공지능(AI)·빅데이터</span>
                                                        </label>
                                                    </li>
                                                                                            </ul>
                                    </td>
                                </tr>
                                                                <tr>
                                    <th>디자인</th>
                                    <td>
                                        <ul class="list_depth2">
                                                                                                <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1201">
                                                            <input type="checkbox" id="career_job_category_1201" name="career_job_category" class="inp_check"
                                                                   value="1201"
                                                                   data-job_category_cd="1201"
                                                                   data-job_category_text="디자인 > 그래픽디자인·CG">
                                                            <span class="txt_check">그래픽디자인·CG</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1202">
                                                            <input type="checkbox" id="career_job_category_1202" name="career_job_category" class="inp_check"
                                                                   value="1202"
                                                                   data-job_category_cd="1202"
                                                                   data-job_category_text="디자인 > 출판·편집디자인">
                                                            <span class="txt_check">출판·편집디자인</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1203">
                                                            <input type="checkbox" id="career_job_category_1203" name="career_job_category" class="inp_check"
                                                                   value="1203"
                                                                   data-job_category_cd="1203"
                                                                   data-job_category_text="디자인 > 제품·산업디자인">
                                                            <span class="txt_check">제품·산업디자인</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1204">
                                                            <input type="checkbox" id="career_job_category_1204" name="career_job_category" class="inp_check"
                                                                   value="1204"
                                                                   data-job_category_cd="1204"
                                                                   data-job_category_text="디자인 > 캐릭터·만화·애니">
                                                            <span class="txt_check">캐릭터·만화·애니</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1205">
                                                            <input type="checkbox" id="career_job_category_1205" name="career_job_category" class="inp_check"
                                                                   value="1205"
                                                                   data-job_category_cd="1205"
                                                                   data-job_category_text="디자인 > 의류·패션·잡화디자인">
                                                            <span class="txt_check">의류·패션·잡화디자인</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1207">
                                                            <input type="checkbox" id="career_job_category_1207" name="career_job_category" class="inp_check"
                                                                   value="1207"
                                                                   data-job_category_cd="1207"
                                                                   data-job_category_text="디자인 > 디자인기타">
                                                            <span class="txt_check">디자인기타</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1208">
                                                            <input type="checkbox" id="career_job_category_1208" name="career_job_category" class="inp_check"
                                                                   value="1208"
                                                                   data-job_category_cd="1208"
                                                                   data-job_category_text="디자인 > 전시·공간디자인">
                                                            <span class="txt_check">전시·공간디자인</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1209">
                                                            <input type="checkbox" id="career_job_category_1209" name="career_job_category" class="inp_check"
                                                                   value="1209"
                                                                   data-job_category_cd="1209"
                                                                   data-job_category_text="디자인 > 광고·시각디자인">
                                                            <span class="txt_check">광고·시각디자인</span>
                                                        </label>
                                                    </li>
                                                                                            </ul>
                                    </td>
                                </tr>
                                                                <tr>
                                    <th>전문직</th>
                                    <td>
                                        <ul class="list_depth2">
                                                                                                <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_501">
                                                            <input type="checkbox" id="career_job_category_501" name="career_job_category" class="inp_check"
                                                                   value="501"
                                                                   data-job_category_cd="501"
                                                                   data-job_category_text="전문직 > 경영분석·컨설턴트">
                                                            <span class="txt_check">경영분석·컨설턴트</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_502">
                                                            <input type="checkbox" id="career_job_category_502" name="career_job_category" class="inp_check"
                                                                   value="502"
                                                                   data-job_category_cd="502"
                                                                   data-job_category_text="전문직 > 증권·투자·펀드·외환">
                                                            <span class="txt_check">증권·투자·펀드·외환</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_504">
                                                            <input type="checkbox" id="career_job_category_504" name="career_job_category" class="inp_check"
                                                                   value="504"
                                                                   data-job_category_cd="504"
                                                                   data-job_category_text="전문직 > 헤드헌팅·노무·직업상담">
                                                            <span class="txt_check">헤드헌팅·노무·직업상담</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_505">
                                                            <input type="checkbox" id="career_job_category_505" name="career_job_category" class="inp_check"
                                                                   value="505"
                                                                   data-job_category_cd="505"
                                                                   data-job_category_text="전문직 > 설문·통계·리서치">
                                                            <span class="txt_check">설문·통계·리서치</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_509">
                                                            <input type="checkbox" id="career_job_category_509" name="career_job_category" class="inp_check"
                                                                   value="509"
                                                                   data-job_category_cd="509"
                                                                   data-job_category_text="전문직 > 외국어·번역·통역">
                                                            <span class="txt_check">외국어·번역·통역</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_510">
                                                            <input type="checkbox" id="career_job_category_510" name="career_job_category" class="inp_check"
                                                                   value="510"
                                                                   data-job_category_cd="510"
                                                                   data-job_category_text="전문직 > 법률·특허·상표">
                                                            <span class="txt_check">법률·특허·상표</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_511">
                                                            <input type="checkbox" id="career_job_category_511" name="career_job_category" class="inp_check"
                                                                   value="511"
                                                                   data-job_category_cd="511"
                                                                   data-job_category_text="전문직 > 세무·회계·CPA">
                                                            <span class="txt_check">세무·회계·CPA</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_512">
                                                            <input type="checkbox" id="career_job_category_512" name="career_job_category" class="inp_check"
                                                                   value="512"
                                                                   data-job_category_cd="512"
                                                                   data-job_category_text="전문직 > 채권·보험·보상·심사">
                                                            <span class="txt_check">채권·보험·보상·심사</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_513">
                                                            <input type="checkbox" id="career_job_category_513" name="career_job_category" class="inp_check"
                                                                   value="513"
                                                                   data-job_category_cd="513"
                                                                   data-job_category_text="전문직 > 도서관사서">
                                                            <span class="txt_check">도서관사서</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_518">
                                                            <input type="checkbox" id="career_job_category_518" name="career_job_category" class="inp_check"
                                                                   value="518"
                                                                   data-job_category_cd="518"
                                                                   data-job_category_text="전문직 > 연구소·R&D">
                                                            <span class="txt_check">연구소·R&D</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_522">
                                                            <input type="checkbox" id="career_job_category_522" name="career_job_category" class="inp_check"
                                                                   value="522"
                                                                   data-job_category_cd="522"
                                                                   data-job_category_text="전문직 > 문화·예술·종교">
                                                            <span class="txt_check">문화·예술·종교</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_523">
                                                            <input type="checkbox" id="career_job_category_523" name="career_job_category" class="inp_check"
                                                                   value="523"
                                                                   data-job_category_cd="523"
                                                                   data-job_category_text="전문직 > 특수직">
                                                            <span class="txt_check">특수직</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_524">
                                                            <input type="checkbox" id="career_job_category_524" name="career_job_category" class="inp_check"
                                                                   value="524"
                                                                   data-job_category_cd="524"
                                                                   data-job_category_text="전문직 > 임원·CEO">
                                                            <span class="txt_check">임원·CEO</span>
                                                        </label>
                                                    </li>
                                                                                            </ul>
                                    </td>
                                </tr>
                                                                <tr>
                                    <th>교육</th>
                                    <td>
                                        <ul class="list_depth2">
                                                                                                <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_601">
                                                            <input type="checkbox" id="career_job_category_601" name="career_job_category" class="inp_check"
                                                                   value="601"
                                                                   data-job_category_cd="601"
                                                                   data-job_category_text="교육 > 교육기획·교재">
                                                            <span class="txt_check">교육기획·교재</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_602">
                                                            <input type="checkbox" id="career_job_category_602" name="career_job_category" class="inp_check"
                                                                   value="602"
                                                                   data-job_category_cd="602"
                                                                   data-job_category_text="교육 > 초중고·특수학교">
                                                            <span class="txt_check">초중고·특수학교</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_603">
                                                            <input type="checkbox" id="career_job_category_603" name="career_job_category" class="inp_check"
                                                                   value="603"
                                                                   data-job_category_cd="603"
                                                                   data-job_category_text="교육 > 학습지·과외·방문">
                                                            <span class="txt_check">학습지·과외·방문</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_604">
                                                            <input type="checkbox" id="career_job_category_604" name="career_job_category" class="inp_check"
                                                                   value="604"
                                                                   data-job_category_cd="604"
                                                                   data-job_category_text="교육 > 유치원·보육">
                                                            <span class="txt_check">유치원·보육</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_605">
                                                            <input type="checkbox" id="career_job_category_605" name="career_job_category" class="inp_check"
                                                                   value="605"
                                                                   data-job_category_cd="605"
                                                                   data-job_category_text="교육 > 전문직업·IT강사">
                                                            <span class="txt_check">전문직업·IT강사</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_606">
                                                            <input type="checkbox" id="career_job_category_606" name="career_job_category" class="inp_check"
                                                                   value="606"
                                                                   data-job_category_cd="606"
                                                                   data-job_category_text="교육 > 입시·보습·속셈학원">
                                                            <span class="txt_check">입시·보습·속셈학원</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_609">
                                                            <input type="checkbox" id="career_job_category_609" name="career_job_category" class="inp_check"
                                                                   value="609"
                                                                   data-job_category_cd="609"
                                                                   data-job_category_text="교육 > 학원관리·운영·상담">
                                                            <span class="txt_check">학원관리·운영·상담</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_610">
                                                            <input type="checkbox" id="career_job_category_610" name="career_job_category" class="inp_check"
                                                                   value="610"
                                                                   data-job_category_cd="610"
                                                                   data-job_category_text="교육 > 대학교수·행정직">
                                                            <span class="txt_check">대학교수·행정직</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_611">
                                                            <input type="checkbox" id="career_job_category_611" name="career_job_category" class="inp_check"
                                                                   value="611"
                                                                   data-job_category_cd="611"
                                                                   data-job_category_text="교육 > 외국어·어학원">
                                                            <span class="txt_check">외국어·어학원</span>
                                                        </label>
                                                    </li>
                                                                                            </ul>
                                    </td>
                                </tr>
                                                                <tr>
                                    <th>미디어</th>
                                    <td>
                                        <ul class="list_depth2">
                                                                                                <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_702">
                                                            <input type="checkbox" id="career_job_category_702" name="career_job_category" class="inp_check"
                                                                   value="702"
                                                                   data-job_category_cd="702"
                                                                   data-job_category_text="미디어 > 연예·엔터테인먼트">
                                                            <span class="txt_check">연예·엔터테인먼트</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_703">
                                                            <input type="checkbox" id="career_job_category_703" name="career_job_category" class="inp_check"
                                                                   value="703"
                                                                   data-job_category_cd="703"
                                                                   data-job_category_text="미디어 > 카메라·조명·미술">
                                                            <span class="txt_check">카메라·조명·미술</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_704">
                                                            <input type="checkbox" id="career_job_category_704" name="career_job_category" class="inp_check"
                                                                   value="704"
                                                                   data-job_category_cd="704"
                                                                   data-job_category_text="미디어 > 공연·무대·스텝">
                                                            <span class="txt_check">공연·무대·스텝</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_705">
                                                            <input type="checkbox" id="career_job_category_705" name="career_job_category" class="inp_check"
                                                                   value="705"
                                                                   data-job_category_cd="705"
                                                                   data-job_category_text="미디어 > 작가·시나리오">
                                                            <span class="txt_check">작가·시나리오</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_708">
                                                            <input type="checkbox" id="career_job_category_708" name="career_job_category" class="inp_check"
                                                                   value="708"
                                                                   data-job_category_cd="708"
                                                                   data-job_category_text="미디어 > 영화제작·배급">
                                                            <span class="txt_check">영화제작·배급</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_709">
                                                            <input type="checkbox" id="career_job_category_709" name="career_job_category" class="inp_check"
                                                                   value="709"
                                                                   data-job_category_cd="709"
                                                                   data-job_category_text="미디어 > 광고·카피·CF">
                                                            <span class="txt_check">광고·카피·CF</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_710">
                                                            <input type="checkbox" id="career_job_category_710" name="career_job_category" class="inp_check"
                                                                   value="710"
                                                                   data-job_category_cd="710"
                                                                   data-job_category_text="미디어 > 기자">
                                                            <span class="txt_check">기자</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_711">
                                                            <input type="checkbox" id="career_job_category_711" name="career_job_category" class="inp_check"
                                                                   value="711"
                                                                   data-job_category_cd="711"
                                                                   data-job_category_text="미디어 > 방송연출·PD·감독">
                                                            <span class="txt_check">방송연출·PD·감독</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_712">
                                                            <input type="checkbox" id="career_job_category_712" name="career_job_category" class="inp_check"
                                                                   value="712"
                                                                   data-job_category_cd="712"
                                                                   data-job_category_text="미디어 > 진행·아나운서">
                                                            <span class="txt_check">진행·아나운서</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_713">
                                                            <input type="checkbox" id="career_job_category_713" name="career_job_category" class="inp_check"
                                                                   value="713"
                                                                   data-job_category_cd="713"
                                                                   data-job_category_text="미디어 > 음악·음향·사운드">
                                                            <span class="txt_check">음악·음향·사운드</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_714">
                                                            <input type="checkbox" id="career_job_category_714" name="career_job_category" class="inp_check"
                                                                   value="714"
                                                                   data-job_category_cd="714"
                                                                   data-job_category_text="미디어 > 인쇄·출판·편집">
                                                            <span class="txt_check">인쇄·출판·편집</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_715">
                                                            <input type="checkbox" id="career_job_category_715" name="career_job_category" class="inp_check"
                                                                   value="715"
                                                                   data-job_category_cd="715"
                                                                   data-job_category_text="미디어 > 사진·포토그라퍼">
                                                            <span class="txt_check">사진·포토그라퍼</span>
                                                        </label>
                                                    </li>
                                                                                            </ul>
                                    </td>
                                </tr>
                                                                <tr>
                                    <th>특수계층·공공</th>
                                    <td>
                                        <ul class="list_depth2">
                                                                                                <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_807">
                                                            <input type="checkbox" id="career_job_category_807" name="career_job_category" class="inp_check"
                                                                   value="807"
                                                                   data-job_category_cd="807"
                                                                   data-job_category_text="특수계층·공공 > 중장년·고령인·실버">
                                                            <span class="txt_check">중장년·고령인·실버</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_808">
                                                            <input type="checkbox" id="career_job_category_808" name="career_job_category" class="inp_check"
                                                                   value="808"
                                                                   data-job_category_cd="808"
                                                                   data-job_category_text="특수계층·공공 > 장애인·국가유공자">
                                                            <span class="txt_check">장애인·국가유공자</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_809">
                                                            <input type="checkbox" id="career_job_category_809" name="career_job_category" class="inp_check"
                                                                   value="809"
                                                                   data-job_category_cd="809"
                                                                   data-job_category_text="특수계층·공공 > 병역특례">
                                                            <span class="txt_check">병역특례</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_810">
                                                            <input type="checkbox" id="career_job_category_810" name="career_job_category" class="inp_check"
                                                                   value="810"
                                                                   data-job_category_cd="810"
                                                                   data-job_category_text="특수계층·공공 > 공무원">
                                                            <span class="txt_check">공무원</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_812">
                                                            <input type="checkbox" id="career_job_category_812" name="career_job_category" class="inp_check"
                                                                   value="812"
                                                                   data-job_category_cd="812"
                                                                   data-job_category_text="특수계층·공공 > 사회복지·요양·봉사">
                                                            <span class="txt_check">사회복지·요양·봉사</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_813">
                                                            <input type="checkbox" id="career_job_category_813" name="career_job_category" class="inp_check"
                                                                   value="813"
                                                                   data-job_category_cd="813"
                                                                   data-job_category_text="특수계층·공공 > 장교·군인·부사관">
                                                            <span class="txt_check">장교·군인·부사관</span>
                                                        </label>
                                                    </li>
                                                                                            </ul>
                                    </td>
                                </tr>
                                                                <tr>
                                    <th>건설</th>
                                    <td>
                                        <ul class="list_depth2">
                                                                                                <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_901">
                                                            <input type="checkbox" id="career_job_category_901" name="career_job_category" class="inp_check"
                                                                   value="901"
                                                                   data-job_category_cd="901"
                                                                   data-job_category_text="건설 > 토목·조경·도시·측량">
                                                            <span class="txt_check">토목·조경·도시·측량</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_902">
                                                            <input type="checkbox" id="career_job_category_902" name="career_job_category" class="inp_check"
                                                                   value="902"
                                                                   data-job_category_cd="902"
                                                                   data-job_category_text="건설 > 건축·인테리어·설계">
                                                            <span class="txt_check">건축·인테리어·설계</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_903">
                                                            <input type="checkbox" id="career_job_category_903" name="career_job_category" class="inp_check"
                                                                   value="903"
                                                                   data-job_category_cd="903"
                                                                   data-job_category_text="건설 > 전기·소방·통신·설비">
                                                            <span class="txt_check">전기·소방·통신·설비</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_904">
                                                            <input type="checkbox" id="career_job_category_904" name="career_job_category" class="inp_check"
                                                                   value="904"
                                                                   data-job_category_cd="904"
                                                                   data-job_category_text="건설 > 환경·플랜트">
                                                            <span class="txt_check">환경·플랜트</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_905">
                                                            <input type="checkbox" id="career_job_category_905" name="career_job_category" class="inp_check"
                                                                   value="905"
                                                                   data-job_category_cd="905"
                                                                   data-job_category_text="건설 > 현장·시공·감리·공무">
                                                            <span class="txt_check">현장·시공·감리·공무</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_906">
                                                            <input type="checkbox" id="career_job_category_906" name="career_job_category" class="inp_check"
                                                                   value="906"
                                                                   data-job_category_cd="906"
                                                                   data-job_category_text="건설 > 안전·품질·검사·관리">
                                                            <span class="txt_check">안전·품질·검사·관리</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_908">
                                                            <input type="checkbox" id="career_job_category_908" name="career_job_category" class="inp_check"
                                                                   value="908"
                                                                   data-job_category_cd="908"
                                                                   data-job_category_text="건설 > 부동산·개발·경매·분양">
                                                            <span class="txt_check">부동산·개발·경매·분양</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_909">
                                                            <input type="checkbox" id="career_job_category_909" name="career_job_category" class="inp_check"
                                                                   value="909"
                                                                   data-job_category_cd="909"
                                                                   data-job_category_text="건설 > 본사·관리·전산">
                                                            <span class="txt_check">본사·관리·전산</span>
                                                        </label>
                                                    </li>
                                                                                            </ul>
                                    </td>
                                </tr>
                                                                <tr>
                                    <th>서비스</th>
                                    <td>
                                        <ul class="list_depth2">
                                                                                                <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1101">
                                                            <input type="checkbox" id="career_job_category_1101" name="career_job_category" class="inp_check"
                                                                   value="1101"
                                                                   data-job_category_cd="1101"
                                                                   data-job_category_text="서비스 > 웨딩·행사·이벤트">
                                                            <span class="txt_check">웨딩·행사·이벤트</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1102">
                                                            <input type="checkbox" id="career_job_category_1102" name="career_job_category" class="inp_check"
                                                                   value="1102"
                                                                   data-job_category_cd="1102"
                                                                   data-job_category_text="서비스 > 안내·도우미·나레이터">
                                                            <span class="txt_check">안내·도우미·나레이터</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1103">
                                                            <input type="checkbox" id="career_job_category_1103" name="career_job_category" class="inp_check"
                                                                   value="1103"
                                                                   data-job_category_cd="1103"
                                                                   data-job_category_text="서비스 > 보안·경호·안전">
                                                            <span class="txt_check">보안·경호·안전</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1104">
                                                            <input type="checkbox" id="career_job_category_1104" name="career_job_category" class="inp_check"
                                                                   value="1104"
                                                                   data-job_category_cd="1104"
                                                                   data-job_category_text="서비스 > 주차·세차·주유">
                                                            <span class="txt_check">주차·세차·주유</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1105">
                                                            <input type="checkbox" id="career_job_category_1105" name="career_job_category" class="inp_check"
                                                                   value="1105"
                                                                   data-job_category_cd="1105"
                                                                   data-job_category_text="서비스 > AS·서비스·수리">
                                                            <span class="txt_check">AS·서비스·수리</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1107">
                                                            <input type="checkbox" id="career_job_category_1107" name="career_job_category" class="inp_check"
                                                                   value="1107"
                                                                   data-job_category_cd="1107"
                                                                   data-job_category_text="서비스 > 외식·식음료">
                                                            <span class="txt_check">외식·식음료</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1108">
                                                            <input type="checkbox" id="career_job_category_1108" name="career_job_category" class="inp_check"
                                                                   value="1108"
                                                                   data-job_category_cd="1108"
                                                                   data-job_category_text="서비스 > 호텔·카지노·콘도">
                                                            <span class="txt_check">호텔·카지노·콘도</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1109">
                                                            <input type="checkbox" id="career_job_category_1109" name="career_job_category" class="inp_check"
                                                                   value="1109"
                                                                   data-job_category_cd="1109"
                                                                   data-job_category_text="서비스 > 여행·관광·항공">
                                                            <span class="txt_check">여행·관광·항공</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1110">
                                                            <input type="checkbox" id="career_job_category_1110" name="career_job_category" class="inp_check"
                                                                   value="1110"
                                                                   data-job_category_cd="1110"
                                                                   data-job_category_text="서비스 > 레저·스포츠">
                                                            <span class="txt_check">레저·스포츠</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1111">
                                                            <input type="checkbox" id="career_job_category_1111" name="career_job_category" class="inp_check"
                                                                   value="1111"
                                                                   data-job_category_cd="1111"
                                                                   data-job_category_text="서비스 > 미용·피부관리·애견">
                                                            <span class="txt_check">미용·피부관리·애견</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1112">
                                                            <input type="checkbox" id="career_job_category_1112" name="career_job_category" class="inp_check"
                                                                   value="1112"
                                                                   data-job_category_cd="1112"
                                                                   data-job_category_text="서비스 > 요리·제빵사·영양사">
                                                            <span class="txt_check">요리·제빵사·영양사</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1113">
                                                            <input type="checkbox" id="career_job_category_1113" name="career_job_category" class="inp_check"
                                                                   value="1113"
                                                                   data-job_category_cd="1113"
                                                                   data-job_category_text="서비스 > 가사·청소·육아">
                                                            <span class="txt_check">가사·청소·육아</span>
                                                        </label>
                                                    </li>
                                                                                            </ul>
                                    </td>
                                </tr>
                                                                <tr>
                                    <th>의료</th>
                                    <td>
                                        <ul class="list_depth2">
                                                                                                <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1301">
                                                            <input type="checkbox" id="career_job_category_1301" name="career_job_category" class="inp_check"
                                                                   value="1301"
                                                                   data-job_category_cd="1301"
                                                                   data-job_category_text="의료 > 의사·치과·한의사">
                                                            <span class="txt_check">의사·치과·한의사</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1302">
                                                            <input type="checkbox" id="career_job_category_1302" name="career_job_category" class="inp_check"
                                                                   value="1302"
                                                                   data-job_category_cd="1302"
                                                                   data-job_category_text="의료 > 수의사">
                                                            <span class="txt_check">수의사</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1303">
                                                            <input type="checkbox" id="career_job_category_1303" name="career_job_category" class="inp_check"
                                                                   value="1303"
                                                                   data-job_category_cd="1303"
                                                                   data-job_category_text="의료 > 약사">
                                                            <span class="txt_check">약사</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1304">
                                                            <input type="checkbox" id="career_job_category_1304" name="career_job_category" class="inp_check"
                                                                   value="1304"
                                                                   data-job_category_cd="1304"
                                                                   data-job_category_text="의료 > 간호사">
                                                            <span class="txt_check">간호사</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1305">
                                                            <input type="checkbox" id="career_job_category_1305" name="career_job_category" class="inp_check"
                                                                   value="1305"
                                                                   data-job_category_cd="1305"
                                                                   data-job_category_text="의료 > 간호조무사">
                                                            <span class="txt_check">간호조무사</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1306">
                                                            <input type="checkbox" id="career_job_category_1306" name="career_job_category" class="inp_check"
                                                                   value="1306"
                                                                   data-job_category_cd="1306"
                                                                   data-job_category_text="의료 > 의료기사">
                                                            <span class="txt_check">의료기사</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1307">
                                                            <input type="checkbox" id="career_job_category_1307" name="career_job_category" class="inp_check"
                                                                   value="1307"
                                                                   data-job_category_cd="1307"
                                                                   data-job_category_text="의료 > 사무·원무·코디">
                                                            <span class="txt_check">사무·원무·코디</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1308">
                                                            <input type="checkbox" id="career_job_category_1308" name="career_job_category" class="inp_check"
                                                                   value="1308"
                                                                   data-job_category_cd="1308"
                                                                   data-job_category_text="의료 > 보험심사과">
                                                            <span class="txt_check">보험심사과</span>
                                                        </label>
                                                    </li>
                                                                                                        <li class="item_depth2">
                                                        <label class="sri_check small sri_radio" for="career_job_category_1309">
                                                            <input type="checkbox" id="career_job_category_1309" name="career_job_category" class="inp_check"
                                                                   value="1309"
                                                                   data-job_category_cd="1309"
                                                                   data-job_category_text="의료 > 의료기타직">
                                                            <span class="txt_check">의료기타직</span>
                                                        </label>
                                                    </li>
                                                                                            </ul>
                                    </td>
                                </tr>
                                                        </tbody>
                    </table>
                </div>
            </fieldset>

            <div class="bottom_btn_wrap">
                <button class="btn_basic_type05 btn_save" type="button">완료</button>
                <button class="btn_basic_type01 btn_close" type="button">취소</button>
            </div>
        </div>
    </div>
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <div class="wrap_detail_panel job_division">
  <div class="input_title">직종 <span class="point">필수</span><span class="s_txt">최대 5개</span></div>

                <div class="option option_area">
                    <div id="desire_job_category" class="area_task_input resume_input">
                        <input type="hidden" id="job_category_code" name="job_category_code" value="404">
                        <input type="hidden" id="job_category_keyword" name="job_category_keyword" value="40404">

                        <label for="job_category_code" class="bar_title">직종<span class="valid_hidden"> (최대 5개)</span></label>

                        <div>
                            <ul class="list_task list_hope_jobs size_type5"></ul>
                        </div>

                        <button type="button" id="jobs" name="jobs" data-api_type="layer" data-api_id="desire_job_category" data-dim="n" data-position="unused" class="link_modifie">수정 · 추가하기 &gt;</button>
                        <p class="txt_error"></p>
                    </div>
                </div>
            </div>
 
        <div class="title_detail_box"><strong>직종 구분</strong></div>
        <div class="box_detail_panel">
            <ul class="wrap_category_menu" id="basic-search-job-category">
                                                        <li class="">
                        <button class="btn_category_depth1" type="button" data-depth="0" data-code="1" data-name="경영·사무">
                            <strong>경영·사무</strong> <span>(38)</span>
                        </button>
                    </li>
                                                                            <li class="checked">
                        <button class="btn_category_depth1" type="button" data-depth="0" data-code="8" data-name="특수계층·공공">
                            <strong>특수계층·공공</strong> <span>(31)</span>
                        </button>
                    </li>
                                                                            <li class=" checked">
                        <button class="btn_category_depth1" type="button" data-depth="0" data-code="2" data-name="영업·고객상담">
                            <strong>영업·고객상담</strong> <span>(50)</span>
                        </button>
                    </li>
                                                                            <li class="">
                        <button class="btn_category_depth1" type="button" data-depth="0" data-code="9" data-name="건설">
                            <strong>건설</strong> <span>(98)</span>
                        </button>
                    </li>
                                                                            <li class="">
                        <button class="btn_category_depth1" type="button" data-depth="0" data-code="3" data-name="생산·제조">
                            <strong>생산·제조</strong> <span>(82)</span>
                        </button>
                    </li>
                                                                            <li class="">
                        <button class="btn_category_depth1" type="button" data-depth="0" data-code="10" data-name="유통·무역">
                            <strong>유통·무역</strong> <span>(69)</span>
                        </button>
                    </li>
                                                                            <li class="">
                        <button class="btn_category_depth1" type="button" data-depth="0" data-code="4" data-name="IT·인터넷">
                            <strong>IT·인터넷</strong> <span>(6)</span>
                        </button>
                    </li>
                                                                            <li class="">
                        <button class="btn_category_depth1" type="button" data-depth="0" data-code="11" data-name="서비스">
                            <strong>서비스</strong> <span>(131)</span>
                        </button>
                    </li>
                                                                            <li class="">
                        <button class="btn_category_depth1" type="button" data-depth="0" data-code="5" data-name="전문직">
                            <strong>전문직</strong> <span>(17)</span>
                        </button>
                    </li>
                                                                            <li class="">
                        <button class="btn_category_depth1" type="button" data-depth="0" data-code="12" data-name="디자인">
                            <strong>디자인</strong> <span>(1)</span>
                        </button>
                    </li>
                                                                            <li class="">
                        <button class="btn_category_depth1" type="button" data-depth="0" data-code="6" data-name="교육">
                            <strong>교육</strong> <span>(30)</span>
                        </button>
                    </li>
                                                                            <li class="">
                        <button class="btn_category_depth1" type="button" data-depth="0" data-code="13" data-name="의료">
                            <strong>의료</strong> <span>(71)</span>
                        </button>
                    </li>
                                                                            <li class="">
                        <button class="btn_category_depth1" type="button" data-depth="0" data-code="7" data-name="미디어">
                            <strong>미디어</strong> <span>(4)</span>
                        </button>
                    </li>
                                                                                    </ul>
        </div>
    </div>
               
 <div id="job-category" class="wrap_category category_type_column_two job_category ">
    <h2 class="title_panel">직종</h2>
    <div class="wrap_detail_panel depth1_division">
        <div class="title_detail_box"><strong>직종 구분</strong></div>
        <div class="box_detail_panel">
            <ul class="wrap_category_menu column_two" id="job-category-depth1">
                                    <li class="">
                                                    <button class="btn_category_depth1" type="button" data-depth="0" data-code="1" data-name="경영·사무">
                                <strong>경영·사무</strong> <span>(38)</span>
                            </button>
                                            </li>
                                    <li class="checked">
                                                    <button class="btn_category_depth1" type="button" data-depth="0" data-code="8" data-name="특수계층·공공">
                                <strong>특수계층·공공</strong> <span>(31)</span>
                            </button>
                                            </li>
                                    <li class="select checked">
                                                    <button class="btn_category_depth1" type="button" data-depth="0" data-code="2" data-name="영업·고객상담">
                                <strong>영업·고객상담</strong> <span>(50)</span>
                            </button>
                                            </li>
                                    <li class="">
                                                    <button class="btn_category_depth1" type="button" data-depth="0" data-code="9" data-name="건설">
                                <strong>건설</strong> <span>(98)</span>
                            </button>
                                            </li>
                                    <li class="">
                                                    <button class="btn_category_depth1" type="button" data-depth="0" data-code="3" data-name="생산·제조">
                                <strong>생산·제조</strong> <span>(82)</span>
                            </button>
                                            </li>
                                    <li class="">
                                                    <button class="btn_category_depth1" type="button" data-depth="0" data-code="10" data-name="유통·무역">
                                <strong>유통·무역</strong> <span>(69)</span>
                            </button>
                                            </li>
                                    <li class="">
                                                    <button class="btn_category_depth1" type="button" data-depth="0" data-code="4" data-name="IT·인터넷">
                                <strong>IT·인터넷</strong> <span>(6)</span>
                            </button>
                                            </li>
                                    <li class="">
                                                    <button class="btn_category_depth1" type="button" data-depth="0" data-code="11" data-name="서비스">
                                <strong>서비스</strong> <span>(131)</span>
                            </button>
                                            </li>
                                    <li class="">
                                                    <button class="btn_category_depth1" type="button" data-depth="0" data-code="5" data-name="전문직">
                                <strong>전문직</strong> <span>(17)</span>
                            </button>
                                            </li>
                                    <li class="">
                                                    <button class="btn_category_depth1" type="button" data-depth="0" data-code="12" data-name="디자인">
                                <strong>디자인</strong> <span>(1)</span>
                            </button>
                                            </li>
                                    <li class="">
                                                    <button class="btn_category_depth1" type="button" data-depth="0" data-code="6" data-name="교육">
                                <strong>교육</strong> <span>(30)</span>
                            </button>
                                            </li>
                                    <li class="">
                                                    <button class="btn_category_depth1" type="button" data-depth="0" data-code="13" data-name="의료">
                                <strong>의료</strong> <span>(71)</span>
                            </button>
                                            </li>
                                    <li class="">
                                                    <button class="btn_category_depth1" type="button" data-depth="0" data-code="7" data-name="미디어">
                                <strong>미디어</strong> <span>(4)</span>
                            </button>
                                            </li>
                                    <li class="">
                                            </li>
                            </ul>
        </div>
    </div>
    </div>
    <div class="wrap_detail_panel depth2_division">
        <div class="title_detail_box">
            <strong>희망 직종</strong>
            <span class="box_add_util">
                <label for="exp-career"><input type="checkbox" name="" id="exp-career" title="이 직종 경력자만"> <span class="txt">이 직종 경력자만</span></label>
                <div class="ico_tooltip">
                	
                    <span class="txt_tooltip">툴팁</span>
                    <div class="lpop_tooltip_wrap">
                        인재가 희망한 직종과 근무경력 직종이<br>
                        동일한 인재만 검색합니다.
                        
                        <button class="btn_close_lpop" type="button">닫기</button>
                        
                    </div>
                    
                </div>
                
            </span>
        </div>
        <div class="box_detail_panel">
            <ul class="list_depth2_select" id="job-category-depth2">
                                    <li>
                        <label for="job-category-depth2-all">
                            <input type="checkbox" name="" id="job-category-depth2-all" title="전체" data-depth="1"
                                   data-mcode=""
                                   data-mname=""
                                   data-bcode=""
                                   data-bname=""
                                   data-code="all"
                                   data-name="전체"
                                   value="all"
                                >
                            <span class="txt " title="전체">전체</span>
                            <span class="count all">(50)</span>
                        </label>
                    </li>
                                    <li>
                        <label for="job-category-depth2-202">
                            <input type="checkbox" name="" id="job-category-depth2-202" title="일반영업" data-depth="1"
                                   data-mcode="2"
                                   data-mname="영업·고객상담"
                                   data-bcode="202"
                                   data-bname="일반영업"
                                   data-code="202"
                                   data-name="일반영업"
                                   value="202"
                                >
                            <span class="txt " title="일반영업">일반영업</span>
                            <span class="count 202">(9)</span>
                        </label>
                    </li>
                                    <li>
                        <label for="job-category-depth2-203">
                            <input type="checkbox" name="" id="job-category-depth2-203" title="판매·매장관리" data-depth="1"
                                   data-mcode="2"
                                   data-mname="영업·고객상담"
                                   data-bcode="203"
                                   data-bname="판매·매장관리"
                                   data-code="203"
                                   data-name="판매·매장관리"
                                   value="203"
                                >
                            <span class="txt " title="판매·매장관리">판매·매장관리</span>
                            <span class="count 203">(24)</span>
                        </label>
                    </li>
                                    <li>
                        <label for="job-category-depth2-205">
                            <input type="checkbox" name="" id="job-category-depth2-205" title="IT·솔루션영업" data-depth="1"
                                   data-mcode="2"
                                   data-mname="영업·고객상담"
                                   data-bcode="205"
                                   data-bname="IT·솔루션영업"
                                   data-code="205"
                                   data-name="IT·솔루션영업"
                                   value="205"
                                >
                            <span class="txt " title="IT·솔루션영업">IT·솔루션영업</span>
                            <span class="count 205">(1)</span>
                        </label>
                    </li>
                                    <li>
                        <label for="job-category-depth2-206">
                            <input type="checkbox" name="" id="job-category-depth2-206" title="금융·보험영업" data-depth="1"
                                   data-mcode="2"
                                   data-mname="영업·고객상담"
                                   data-bcode="206"
                                   data-bname="금융·보험영업"
                                   data-code="206"
                                   data-name="금융·보험영업"
                                   value="206"
                                >
                            <span class="txt " title="금융·보험영업">금융·보험영업</span>
                            <span class="count 206">(4)</span>
                        </label>
                    </li>
                                    <li>
                        <label for="job-category-depth2-207">
                            <input type="checkbox" name="" id="job-category-depth2-207" title="광고영업" data-depth="1"
                                   data-mcode="2"
                                   data-mname="영업·고객상담"
                                   data-bcode="207"
                                   data-bname="광고영업"
                                   data-code="207"
                                   data-name="광고영업"
                                   value="207"
                                checked>
                            <span class="txt select" title="광고영업">광고영업</span>
                            <span class="count 207">(1)</span>
                        </label>
                    </li>
                                    <li>
                        <label for="job-category-depth2-208">
                            <input type="checkbox" name="" id="job-category-depth2-208" title="기술영업" data-depth="1"
                                   data-mcode="2"
                                   data-mname="영업·고객상담"
                                   data-bcode="208"
                                   data-bname="기술영업"
                                   data-code="208"
                                   data-name="기술영업"
                                   value="208"
                                >
                            <span class="txt " title="기술영업">기술영업</span>
                            <span class="count 208">(3)</span>
                        </label>
                    </li>
                                    <li>
                        <label for="job-category-depth2-209">
                            <input type="checkbox" name="" id="job-category-depth2-209" title="영업기획·관리·지원" data-depth="1"
                                   data-mcode="2"
                                   data-mname="영업·고객상담"
                                   data-bcode="209"
                                   data-bname="영업기획·관리·지원"
                                   data-code="209"
                                   data-name="영업기획·관리·지원"
                                   value="209"
                                >
                            <span class="txt " title="영업기획·관리·지원">영업기획·관리·지원</span>
                            <span class="count 209">(2)</span>
                        </label>
                    </li>
                                    <li>
                        <label for="job-category-depth2-210">
                            <input type="checkbox" name="" id="job-category-depth2-210" title="TM·아웃바운드" data-depth="1"
                                   data-mcode="2"
                                   data-mname="영업·고객상담"
                                   data-bcode="210"
                                   data-bname="TM·아웃바운드"
                                   data-code="210"
                                   data-name="TM·아웃바운드"
                                   value="210"
                                >
                            <span class="txt " title="TM·아웃바운드">TM·아웃바운드</span>
                            <span class="count 210">(7)</span>
                        </label>
                    </li>
                                    <li>
                        <label for="job-category-depth2-211">
                            <input type="checkbox" name="" id="job-category-depth2-211" title="TM·인바운드" data-depth="1"
                                   data-mcode="2"
                                   data-mname="영업·고객상담"
                                   data-bcode="211"
                                   data-bname="TM·인바운드"
                                   data-code="211"
                                   data-name="TM·인바운드"
                                   value="211"
                                >
                            <span class="txt " title="TM·인바운드">TM·인바운드</span>
                            <span class="count 211">(5)</span>
                        </label>
                    </li>
                                    <li>
                        <label for="job-category-depth2-212">
                            <input type="checkbox" name="" id="job-category-depth2-212" title="고객센터·CS" data-depth="1"
                                   data-mcode="2"
                                   data-mname="영업·고객상담"
                                   data-bcode="212"
                                   data-bname="고객센터·CS"
                                   data-code="212"
                                   data-name="고객센터·CS"
                                   value="212"
                                >
                            <span class="txt " title="고객센터·CS">고객센터·CS</span>
                            <span class="count 212">(10)</span>
                        </label>
                    </li>
                                    <li>
                        <label for="job-category-depth2-213">
                            <input type="checkbox" name="" id="job-category-depth2-213" title="QA·CS강사·수퍼바이저" data-depth="1"
                                   data-mcode="2"
                                   data-mname="영업·고객상담"
                                   data-bcode="213"
                                   data-bname="QA·CS강사·수퍼바이저"
                                   data-code="213"
                                   data-name="QA·CS강사·수퍼바이저"
                                   value="213"
                                >
                            <span class="txt " title="QA·CS강사·수퍼바이저">QA·CS강사·수퍼바이저</span>
                            <span class="count 213">(2)</span>
                        </label>
                    </li>
                            </ul>
            <button class="btn_depth3_expand"><span>상세직종</span></button>
            <ul class="list_depth3_select" id="job-category-depth3">
                                    <li>
                        <label for="job-category-depth3-20701">
                            <input type="checkbox" name="" id="job-category-depth3-20701" title="광고영업" data-depth="2"
                                   data-mcode="2"
                                   data-mname="영업·고객상담"
                                   data-bcode="207"
                                   data-bname="광고영업"
                                   data-code="20701"
                                   data-name="광고영업"
                                   value="20701"
                                >
                            <span class="txt" title="광고영업">광고영업</span>
                            <span class="count">(0)</span>
                        </label>
                    </li>
                                    <li>
                        <label for="job-category-depth3-20702">
                            <input type="checkbox" name="" id="job-category-depth3-20702" title="매체광고" data-depth="2"
                                   data-mcode="2"
                                   data-mname="영업·고객상담"
                                   data-bcode="207"
                                   data-bname="광고영업"
                                   data-code="20702"
                                   data-name="매체광고"
                                   value="20702"
                                >
                            <span class="txt" title="매체광고">매체광고</span>
                            <span class="count">(0)</span>
                        </label>
                    </li>
                                    <li>
                        <label for="job-category-depth3-20703">
                            <input type="checkbox" name="" id="job-category-depth3-20703" title="온라인광고" data-depth="2"
                                   data-mcode="2"
                                   data-mname="영업·고객상담"
                                   data-bcode="207"
                                   data-bname="광고영업"
                                   data-code="20703"
                                   data-name="온라인광고"
                                   value="20703"
                                >
                            <span class="txt" title="온라인광고">온라인광고</span>
                            <span class="count">(1)</span>
                        </label>
                    </li>
                                    <li>
                        <label for="job-category-depth3-20704">
                            <input type="checkbox" name="" id="job-category-depth3-20704" title="옥외광고" data-depth="2"
                                   data-mcode="2"
                                   data-mname="영업·고객상담"
                                   data-bcode="207"
                                   data-bname="광고영업"
                                   data-code="20704"
                                   data-name="옥외광고"
                                   value="20704"
                                >
                            <span class="txt" title="옥외광고">옥외광고</span>
                            <span class="count">(0)</span>
                        </label>
                    </li>
                                    <li>
                        <label for="job-category-depth3-20705">
                            <input type="checkbox" name="" id="job-category-depth3-20705" title="키워드광고" data-depth="2"
                                   data-mcode="2"
                                   data-mname="영업·고객상담"
                                   data-bcode="207"
                                   data-bname="광고영업"
                                   data-code="20705"
                                   data-name="키워드광고"
                                   value="20705"
                                >
                            <span class="txt" title="키워드광고">키워드광고</span>
                            <span class="count">(0)</span>
                        </label>
                    </li>
                                    <li>
                        <label for="job-category-depth3-20706">
                            <input type="checkbox" name="" id="job-category-depth3-20706" title="지역광고" data-depth="2"
                                   data-mcode="2"
                                   data-mname="영업·고객상담"
                                   data-bcode="207"
                                   data-bname="광고영업"
                                   data-code="20706"
                                   data-name="지역광고"
                                   value="20706"
                                >
                            <span class="txt" title="지역광고">지역광고</span>
                            <span class="count">(0)</span>
                        </label>
                    </li>
                                    <li>
                        <label for="job-category-depth3-20707">
                            <input type="checkbox" name="" id="job-category-depth3-20707" title="지하철광고" data-depth="2"
                                   data-mcode="2"
                                   data-mname="영업·고객상담"
                                   data-bcode="207"
                                   data-bname="광고영업"
                                   data-code="20707"
                                   data-name="지하철광고"
                                   value="20707"
                                >
                            <span class="txt" title="지하철광고">지하철광고</span>
                            <span class="count">(0)</span>
                        </label>
                    </li>
                                    <li>
                        <label for="job-category-depth3-20708">
                            <input type="checkbox" name="" id="job-category-depth3-20708" title="버스광고" data-depth="2"
                                   data-mcode="2"
                                   data-mname="영업·고객상담"
                                   data-bcode="207"
                                   data-bname="광고영업"
                                   data-code="20708"
                                   data-name="버스광고"
                                   value="20708"
                                >
                            <span class="txt" title="버스광고">버스광고</span>
                            <span class="count">(0)</span>
                        </label>
                    </li>
                                    <li>
                        <label for="job-category-depth3-20710">
                            <input type="checkbox" name="" id="job-category-depth3-20710" title="DM·타겟메일" data-depth="2"
                                   data-mcode="2"
                                   data-mname="영업·고객상담"
                                   data-bcode="207"
                                   data-bname="광고영업"
                                   data-code="20710"
                                   data-name="DM·타겟메일"
                                   value="20710"
                                >
                            <span class="txt" title="DM·타겟메일">DM·타겟메일</span>
                            <span class="count">(0)</span>
                        </label>
                    </li>
                            </ul>
        </div>
    </div>
    

</body>

</html>