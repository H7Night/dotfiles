"use strict";(("undefined"!=typeof self?self:global).webpackChunkclient_web=("undefined"!=typeof self?self:global).webpackChunkclient_web||[]).push([[9718],{96597:(e,t,a)=>{a.d(t,{o:()=>q});var s=a(30758),i=a(6128),n=a(86560),r=a(62856),l=a(93395),d=a(64721),c=a(96930),o=a(65583),u=a(91825),h=a(17934),v=a(61214),_=a(62130),m=a(55285);const b="c5Ml9BbBuUEHjNkcSwZA";var g=a(86070);const p="70px",f=({adId:e,advertiser:t,tagline:a,displayImage:s,buttonMessage:i,cardOnClick:n,buttonOnClick:r,clickthroughUrl:l})=>(0,g.jsx)(m.N,{to:(0,_.H)(l),className:b,"data-testid":"leavebehind",children:(0,g.jsx)(c.v,{onClick:n,onClickHint:d.Ru.get("ad-formats.learnMore"),layout:"wide",variant:"tinted",id:e,size:"xl",title:(0,g.jsx)(o.d,{weight:"bold",variant:"ballad",lineClamp:1,"data-testid":"leavebehind-advertiser",children:t}),subtitle:(0,g.jsx)(u.j,{as:"div",lineClamp:2,"data-testid":"leavebehind-tagline",children:a}),media:(0,g.jsx)(h.C,{"data-testid":"leavebehind-image",src:s.src,alt:s.alt,imageHeight:p,imageWidth:p,size:"xl"}),trailing:(0,g.jsx)(v.$,{onClick:()=>{r&&r()},"data-testid":"leavebehind-button",colorSet:"invertedLight",size:"small","aria-label":d.Ru.get("ad-formats.learnMore"),children:i})})});var k=a(31761),y=a(96009),I=a(57016),x=a(84576);const w="zlUJfROzFEOsEDWL7ucP",j="Fxvq1Fw7XQdGRDvYokRg",q=({leavebehinds:e,seeAllButton:t,surface:a,uri:c})=>{const o=(0,x.vh)(),u=(0,I.w)(I.P),[h,v]=(0,s.useState)(void 0);(0,s.useEffect)((()=>{e&&e.length>0&&h!==e[0].requestId&&c&&(e.forEach(((e,t)=>{e.uri===c&&(e.trackingEvents?.viewed.forEach((async t=>{try{await u(t)}catch(s){const i=s;o.send((0,r.G)({error_type:"trackingURLFailure",error_message:i.message,http_error_code:422,surface:(0,k.Fh)(a),request_url:t,request_type:"leavebehindAds",lineitem_id:e.lineitemId,ad_content_origin:(0,y.Zl)(a)}))}})),o.send((0,l.x)({leavebehind_lineitem_id:e.lineitemId,leavebehind_request_id:e.requestId,event:"event_viewed",event_reason:`viewed_on_${(0,k.Fh)(a).toLowerCase()}`,surface:(0,k.Fh)(a),surface_position:t+1,uri:c})))})),v(e[0].requestId))}),[o,u,e,c,a,h]);const _=({eventReason:e,lineitemId:t,requestId:s,trackingEvents:i,surfacePosition:n})=>{((e,t)=>{t?.forEach((async t=>{try{await u(t)}catch(s){const i=s;o.send((0,r.G)({error_type:"trackingURLFailure",error_message:i.name,http_error_code:422,surface:(0,k.Fh)(a),request_url:t,request_type:"leavebehindAds",lineitem_id:e,ad_content_origin:(0,y.Zl)(a)}))}}))})(t,i),o.send((0,l.x)({leavebehind_lineitem_id:t,leavebehind_request_id:s,event:"event_clicked",event_reason:e,surface:(0,k.Fh)(a),surface_position:n,uri:c}))};return(0,g.jsxs)("section",{"data-testid":"leavebehinds-wrapper",children:[(0,g.jsxs)("div",{className:j,children:[(0,g.jsx)(i.E,{as:"h2",semanticColor:"textBase",variant:"titleSmall",paddingBottom:(0,n.po)("tighter"),"data-testid":"leavebehinds-title",children:d.Ru.get("podcast-ads.recent_ads")}),t]}),(0,g.jsx)("div",{className:w,"data-testid":"leavebehinds-list-wrapper",children:e.map(((e,t)=>(0,g.jsx)(f,{...e,buttonOnClick:()=>{_({eventReason:"button_clicked",lineitemId:e.lineitemId,trackingEvents:e.trackingEvents?.clicked,requestId:e.requestId,surfacePosition:t+1})},cardOnClick:()=>{_({eventReason:"card_clicked",lineitemId:e.lineitemId,trackingEvents:e.trackingEvents?.clicked,requestId:e.requestId,surfacePosition:t+1})}},e.adId)))})]})}},55895:(e,t,a)=>{a.d(t,{J:()=>u});var s=a(20618),i=a(40748),n=a(93395),r=a(64721),l=a(31761),d=a(96009),c=a(84576),o=a(86070);const u=({leavebehinds:e,surface:t,uri:a,pathname:u,state:h})=>{const v=(0,c.vh)(),_=`${r.Ru.get("view.see-all")} (${e.length<=d.E9?r.Ru.formatNumber(e.length):r.Ru.formatNumber(d.E9)})`;return(0,o.jsx)(s.N_,{to:u,state:h,children:(0,o.jsx)(i.H,{"data-testid":"leavebehinds-see-all",size:"small",onClick:()=>{v.send((0,n.x)({leavebehind_request_id:e[0].requestId,event:"event_clicked",event_reason:"cta_see_all",surface:(0,l.Fh)(t),uri:a}))},children:_})})}},34221:(e,t,a)=>{a.d(t,{A:()=>h});var s=a(30758),i=a(62856),n=a(63166),r=a(59942),l=a(31761),d=a(96009),c=a(84576),o=a(19412),u=a(5050);const h=function(e){const[t,a]=(0,s.useState)(),[h,v]=(0,s.useState)(!1),_=(0,c.vh)(),m=(0,n.NC)(o.SAn,{loadingValue:!1});return{data:t,error:h,getLeavebehinds:(0,s.useCallback)((async()=>{try{const t=await r.b6(u.n.getInstance(),(0,l.Fh)(e.surface),e.uri,e.playlistName,m);a(t.body)}catch(t){const a=t;_.send((0,i.G)({error_type:"fetchAdsFailure",error_message:a.name,http_error_code:a.status,surface:(0,l.Fh)(e.surface),request_type:"leavebehindAds",ad_content_origin:(0,d.Zl)(e.surface)})),v(!0)}}),[_,e.playlistName,e.surface,e.uri,m])}}},19898:(e,t,a)=>{a.r(t),a.d(t,{default:()=>_});var s=a(30758),i=a(95440),n=a(75627),r=a(96597),l=a(55895),d=a(31761),c=a(96009),o=a(86070);const u=({uri:e,playlistId:t,leavebehinds:a,playlistName:s})=>{const i=d.ui.PLAYLIST;return a&&a.length>0?(0,o.jsx)(r.o,{surface:i,uri:e,leavebehinds:a.slice(0,c.pU),seeAllButton:a.length>c.pU?(0,o.jsx)(l.J,{leavebehinds:a,surface:i,pathname:`/playlist/${t}/see-all-ads`,state:{uri:e,playlistName:s},uri:e}):null}):null};var h=a(34221);const v=e=>e.ads.sponsoredPlaylist.sponsoredPlaylist.get("allSponsorships"),_=({uri:e,playlistName:t})=>{const a=(0,n.o_h)(e)?.id,r=(0,i.d4)(v),l=r?.some((e=>e.playlistId===a)),_=d.ui.PLAYLIST,{data:m,error:b,getLeavebehinds:g}=(0,h.A)({surface:_,uri:e,playlistName:t});if((0,s.useEffect)((()=>{g()}),[g]),!m?.leavebehindAds||b||l)return null;const p=(0,c.iT)(m,e);return m&&m.leavebehindAds.length>0&&a?(0,o.jsx)(u,{uri:e,playlistId:a,leavebehinds:p,playlistName:t}):null}}}]);
//# sourceMappingURL=playlist-leavebehinds.js.map