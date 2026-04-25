import{f as d,o as l,e as o,g as e,t as p,j as c,b as u,w as f,d as b,v,x as m,T as n}from"./modules/vue-CD9mGuDB.js";import{u as r,f as x}from"./slidev/context-BO1l3Oq8.js";import{I as _}from"./slidev/default-Ceoj0in_.js";import"./index-CBBMXSTp.js";import"./modules/shiki-BCr8CZh3.js";const g={class:"h-full bg-white px-10 py-8"},w={class:"flex h-full flex-col justify-between"},j={class:"grid grid-cols-[1.25fr_0.75fr] gap-10"},y=["innerHTML"],h={class:"mt-8 max-w-[760px] text-lg leading-8 text-slate-600"},C=d({__name:"PaperCover",props:{title:{default:""},subtitle:{default:""},author:{default:""},advisor:{default:""},major:{default:""},direction:{default:""},date:{default:""}},setup(s){return r(),(a,t)=>(l(),o("div",g,[e("div",w,[t[1]||(t[1]=e("div",{class:"flex items-center justify-between text-sm text-slate-500"},[e("div",null,"研究生课题组汇报"),e("div",null,"Offline RL / Model-based / Uncertainty")],-1)),e("div",j,[e("div",null,[t[0]||(t[0]=e("div",{class:"mb-6 h-1 w-24 bg-slate-900"},null,-1)),e("h1",{class:"max-w-[760px] text-5xl leading-tight text-slate-900",innerHTML:s.title},null,8,y),e("p",h,p(s.subtitle),1)]),c(` <div class="border border-slate-200 p-6">
          <div class="text-sm tracking-[0.2em] text-slate-400">汇报信息</div>
          <div class="mt-5 space-y-4 text-[15px] leading-7 text-slate-700">
            <div
              class="flex justify-between gap-6 border-b border-slate-100 pb-2"
            >
              <span>作者</span>
              <span>{{ author }}</span>
            </div>
            <div
              class="flex justify-between gap-6 border-b border-slate-100 pb-2"
            >
              <span>导师</span>
              <span>{{ advisor }}</span>
            </div>
            <div
              class="flex justify-between gap-6 border-b border-slate-100 pb-2"
            >
              <span>专业</span>
              <span>{{ major }}</span>
            </div>
            <div
              class="flex justify-between gap-6 border-b border-slate-100 pb-2"
            >
              <span>方向</span>
              <span>{{ direction }}</span>
            </div>
            <div class="flex justify-between gap-6">
              <span>时间</span>
              <span>{{ date }}</span>
            </div>
          </div>
        </div> `)]),t[2]||(t[2]=e("div",{class:"flex items-center justify-between border-t border-slate-200 pt-4 text-sm text-slate-500"},[e("div",null,"南京邮电大学"),e("div",null,"从保守优化到定向探索")],-1))])]))}}),V={__name:"01-cover.md__slidev_2",setup(s){const{$clicksContext:a,$frontmatter:t}=r();return a.setup(),(k,P)=>{const i=C;return l(),u(_,v(m(n(x)(n(t),1))),{default:f(()=>[b(i,{title:"不确定性引导的基于模型的<br>离线强化学习方法研究",subtitle:"核心问题是离线数据覆盖有限导致的分布偏移。论文围绕不确定性如何同时服务于保守优化与高效探索展开，形成从纯离线学习到离线在线联合优化的连续技术路线",author:"刘哲闰",advisor:"张伯雷",major:"计算机技术",direction:"人工智能",date:"2026 年 6 月"})]),_:1},16)}}};export{V as default};
