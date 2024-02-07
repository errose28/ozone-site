"use strict";(self.webpackChunkdoc_site=self.webpackChunkdoc_site||[]).push([[5413],{2746:(e,t,s)=>{s.r(t),s.d(t,{assets:()=>c,contentTitle:()=>i,default:()=>x,frontMatter:()=>d,metadata:()=>o,toc:()=>l});var n=s(1527),r=s(3883);const d={sidebar_label:"Client"},i="Network Protocols Used By Ozone Clients",o={id:"system-internals/network-protocols/client",title:"Network Protocols Used By Ozone Clients",description:"TODO: File a subtask under HDDS-9862 and complete this page or section.",source:"@site/docs/07-system-internals/06-network-protocols/02-client.md",sourceDirName:"07-system-internals/06-network-protocols",slug:"/system-internals/network-protocols/client",permalink:"/docs/system-internals/network-protocols/client",draft:!1,unlisted:!1,editUrl:"https://github.com/apache/ozone-site/tree/HDDS-9225-website-v2/docs/07-system-internals/06-network-protocols/02-client.md",tags:[],version:"current",sidebarPosition:2,frontMatter:{sidebar_label:"Client"},sidebar:"tutorialSidebar",previous:{title:"Overview",permalink:"/docs/system-internals/network-protocols/overview"},next:{title:"Server",permalink:"/docs/system-internals/network-protocols/server"}},c={},l=[];function h(e){const t={a:"a",h1:"h1",p:"p",strong:"strong",table:"table",tbody:"tbody",td:"td",th:"th",thead:"thead",tr:"tr",...(0,r.a)(),...e.components};return(0,n.jsxs)(n.Fragment,{children:[(0,n.jsx)(t.h1,{id:"network-protocols-used-by-ozone-clients",children:"Network Protocols Used By Ozone Clients"}),"\n",(0,n.jsxs)(t.p,{children:[(0,n.jsx)(t.strong,{children:"TODO:"})," File a subtask under ",(0,n.jsx)(t.a,{href:"https://issues.apache.org/jira/browse/HDDS-9862",children:"HDDS-9862"})," and complete this page or section."]}),"\n",(0,n.jsx)(t.p,{children:"For each section, indicate the network protocol that is used, why it is used, and how it is secured. Some intro/explanation at the top here would be good too."}),"\n",(0,n.jsxs)(t.table,{children:[(0,n.jsx)(t.thead,{children:(0,n.jsxs)(t.tr,{children:[(0,n.jsx)(t.th,{children:"Client"}),(0,n.jsx)(t.th,{children:"Server"}),(0,n.jsx)(t.th,{children:"Protocol"}),(0,n.jsx)(t.th,{children:"Authentication"}),(0,n.jsx)(t.th,{children:"Authorization"}),(0,n.jsx)(t.th,{children:"Encryption"}),(0,n.jsx)(t.th,{children:"Notes"})]})}),(0,n.jsxs)(t.tbody,{children:[(0,n.jsxs)(t.tr,{children:[(0,n.jsx)(t.td,{children:"S3 Client"}),(0,n.jsx)(t.td,{children:"S3 Gateway"}),(0,n.jsx)(t.td,{children:"HTTPS"}),(0,n.jsx)(t.td,{children:"S3 Secrets"}),(0,n.jsx)(t.td,{children:"ACLs"}),(0,n.jsx)(t.td,{children:"TLS"}),(0,n.jsx)(t.td,{children:"S3 gateway REST API is compatible with regular S3 HTTP clients."})]}),(0,n.jsxs)(t.tr,{children:[(0,n.jsx)(t.td,{children:"HDFS Client"}),(0,n.jsx)(t.td,{children:"Ozone Manager"}),(0,n.jsx)(t.td,{children:"Hadoop RPC"}),(0,n.jsx)(t.td,{children:"Kerberos"}),(0,n.jsx)(t.td,{children:"ACLs"}),(0,n.jsx)(t.td,{children:"SASL"}),(0,n.jsx)(t.td,{children:"HDFS client uses Ozone client jar internally to communicate with Ozone."})]}),(0,n.jsxs)(t.tr,{children:[(0,n.jsx)(t.td,{children:"Ozone Client"}),(0,n.jsx)(t.td,{children:"Ozone Manager"}),(0,n.jsx)(t.td,{children:"Hadoop RPC"}),(0,n.jsx)(t.td,{children:"Kerberos"}),(0,n.jsx)(t.td,{children:"ACLs"}),(0,n.jsx)(t.td,{children:"SASL"}),(0,n.jsx)(t.td,{children:"Hadoop RPC is used to transfer Kerberos information."})]}),(0,n.jsxs)(t.tr,{children:[(0,n.jsx)(t.td,{children:"Ozone Client"}),(0,n.jsx)(t.td,{children:"Storage Container Manager"}),(0,n.jsx)(t.td,{}),(0,n.jsx)(t.td,{}),(0,n.jsx)(t.td,{}),(0,n.jsx)(t.td,{}),(0,n.jsx)(t.td,{})]}),(0,n.jsxs)(t.tr,{children:[(0,n.jsx)(t.td,{children:"Ozone Client"}),(0,n.jsx)(t.td,{children:"Datanode"}),(0,n.jsx)(t.td,{children:"gRPC"}),(0,n.jsx)(t.td,{}),(0,n.jsx)(t.td,{}),(0,n.jsx)(t.td,{}),(0,n.jsx)(t.td,{})]}),(0,n.jsxs)(t.tr,{children:[(0,n.jsx)(t.td,{children:"Ozone Client"}),(0,n.jsx)(t.td,{children:"Kerberos KDC"}),(0,n.jsx)(t.td,{}),(0,n.jsx)(t.td,{}),(0,n.jsx)(t.td,{}),(0,n.jsx)(t.td,{}),(0,n.jsx)(t.td,{})]}),(0,n.jsxs)(t.tr,{children:[(0,n.jsx)(t.td,{children:"Ozone Client"}),(0,n.jsx)(t.td,{children:"Ranger KMS"}),(0,n.jsx)(t.td,{}),(0,n.jsx)(t.td,{}),(0,n.jsx)(t.td,{}),(0,n.jsx)(t.td,{}),(0,n.jsx)(t.td,{})]}),(0,n.jsxs)(t.tr,{children:[(0,n.jsx)(t.td,{children:"REST Client"}),(0,n.jsx)(t.td,{children:"HttpFS Server"}),(0,n.jsx)(t.td,{}),(0,n.jsx)(t.td,{}),(0,n.jsx)(t.td,{}),(0,n.jsx)(t.td,{}),(0,n.jsx)(t.td,{})]}),(0,n.jsxs)(t.tr,{children:[(0,n.jsx)(t.td,{children:"REST Client"}),(0,n.jsx)(t.td,{children:"Recon REST API"}),(0,n.jsx)(t.td,{children:"HTTPS"}),(0,n.jsx)(t.td,{children:"Kerberos + SPNEGO"}),(0,n.jsx)(t.td,{children:(0,n.jsx)(t.a,{href:"../../administrator-guide/configuration/security/administrators",children:"Configured Ozone Administrators"})}),(0,n.jsx)(t.td,{children:"TLS"}),(0,n.jsx)(t.td,{})]}),(0,n.jsxs)(t.tr,{children:[(0,n.jsx)(t.td,{children:"Web Browser"}),(0,n.jsx)(t.td,{children:"Recon UI"}),(0,n.jsx)(t.td,{children:"HTTPS"}),(0,n.jsx)(t.td,{children:"Kerberos + SPNEGO/Apache Knox"}),(0,n.jsx)(t.td,{children:(0,n.jsx)(t.a,{href:"../../administrator-guide/configuration/security/administrators",children:"Configured Ozone Administrators"})}),(0,n.jsx)(t.td,{children:"TLS"}),(0,n.jsx)(t.td,{})]}),(0,n.jsxs)(t.tr,{children:[(0,n.jsx)(t.td,{children:"Web Browser"}),(0,n.jsx)(t.td,{children:"Ozone WebUIs"}),(0,n.jsx)(t.td,{children:"HTTPS"}),(0,n.jsx)(t.td,{children:"Kerberos + SPNEGO/Apache Knox"}),(0,n.jsx)(t.td,{}),(0,n.jsx)(t.td,{children:"TLS"}),(0,n.jsx)(t.td,{})]})]})]})]})}function x(e={}){const{wrapper:t}={...(0,r.a)(),...e.components};return t?(0,n.jsx)(t,{...e,children:(0,n.jsx)(h,{...e})}):h(e)}},3883:(e,t,s)=>{s.d(t,{Z:()=>o,a:()=>i});var n=s(959);const r={},d=n.createContext(r);function i(e){const t=n.useContext(d);return n.useMemo((function(){return"function"==typeof e?e(t):{...t,...e}}),[t,e])}function o(e){let t;return t=e.disableParentContext?"function"==typeof e.components?e.components(r):e.components||r:i(e.components),n.createElement(d.Provider,{value:t},e.children)}}}]);