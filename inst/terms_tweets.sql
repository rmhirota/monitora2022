INSERT INTO azmina_monitora.tweets_ofensivos
SELECT distinct cast(t.id as bigint),
t.full_text ~ '(aberra[çc][ãa]o)|(abort(eira|tista|dista|tera|o))|(alei?jada)|(ameba)|(analfabet[oa])|(bandida)|(baranga)|(bi(ch|x)a)|(bo(qu|k)inha)|(bruxa)|(burr[oa])|(cala.*bo(c|k|quinh|kinh)a)|(calad(a|inha))|(chimpanz[ée])|(chora(?!ndo))|(chupa)|(comunista)|(corrup(ta|to|cao|çao|cão|ção))|(covarde)|(cozinha)|(criou?la)|(d[aá]r? o rabo)|(demente)|((en)?demonia(da)?)|((en)?demonha(da)?)|(diaba)|(descabelada)|(descontrolada)|(dissimulada)|(doida)|(drogada)|(esquerd(ista|opata|alha))|(estupr[ao])|(et de varginha)|(fazendeira)|(latifundi[aá]ria)|(fdp)|(filha da puta)|(fed(ida|orenta))|(feia)|(feminazi)|(fraca)|(garota)|(gayzista)|(gópi)|(gorda)|(gostosa)|(histérica)|(horrorosa)|(ideologia de gênero)|(idiota)|(imbecil)|(imoral)|(imunda)|(incompetente)|([ií]ndia( (smart(ph|f)one)|(fake)|(de taubat[eé])))|(infernos?)|(japa)|(jument[oa])|((lu)?ladr(a|ão|oa))|(louca)|(macac[oa])|(macho( de saia)?)|(maconhei?r[oa])|(mal (amada|comida))|(maldita)|(maluca)|(mama(r|ta|da))|(maric(a|ona))|(merda)|(meter uma bala( na sua cara)?)|(mimi(mi|zenta|mizenta))|(minion)|(m[uo]le(qu|k)e)|(ml[qk])|(i?moral)|(mulas?(ta))|(mulher de pinto)|(mulher de verdade)|(múmia)|((essa )?negr?a)|(neg[ru]inha)|(noj(o|enta))|((s[uo]vaco )?pelud[oa])|(pepp?a)|(p[eé]ssima)|(p[eé]ssima mãe)|(mãe de merda)|(pilantra)|(piranha)|(porca)|((?<!caixa[ -])(essa )?preta)|(prom[íi]scua)|(?<!(d(e|is)|com))puta|(queima rosca)|(retardada)|(rid[íi]cula)|(rola(?!r))|(santinha)|(sapat(ão|ao|ona))|(selvage(m|ns))|(suja)|(travec(o|ao|ão|a))|((bosta de |estrume de |merda de )?vaca)|(vadia)|(vagabunda)|(v[eé](lha|ia))|((toma )?vergonha)|(v[ei]ad(inho|o))|(vitim(ismo|ista|iza[cç][aã]o|izando))' as ofensivo
FROM   azmina_monitora.temp t
left join azmina_monitora.tweets_ofensivos o on cast(t.id as bigint) = o.id and o.ofensivo is true
WHERE  o.id is null;
