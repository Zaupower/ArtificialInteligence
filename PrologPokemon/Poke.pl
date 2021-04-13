

% superEffective(X,Y) holds if X-type moves are super-effective against Y-type Pokémon.
superEffective(grass,water). superEffective(grass,ground). superEffective(grass,rock).
superEffective(fire,grass). superEffective(fire,ice). superEffective(fire,steel).
superEffective(ground,fire). superEffective(ground,poison). superEffective(ground,electric). superEffective(ground,rock). superEffective(ground,steel).
superEffective(poison,grass). superEffective(poison,fairy).
superEffective(electric,water). superEffective(electric,flying).
superEffective(water,fire). superEffective(water,ground). superEffective(water,rock).
superEffective(rock,fire). superEffective(rock,ice). superEffective(rock,bug). superEffective(rock,flying).
superEffective(flying,grass). superEffective(flying,bug). superEffective(flying,fighting).
superEffective(ice,grass). superEffective(ice,ground). superEffective(ice,flying). superEffective(ice,dragon).
superEffective(bug,grass). superEffective(bug,psychic). superEffective(bug,dark).
superEffective(ghost,ghost). superEffective(ghost,psychic).
superEffective(fighting,rock). superEffective(fighting,ice). superEffective(fighting,normal). superEffective(fighting,steel).
superEffective(dragon,dragon).
superEffective(psychic,poison). superEffective(psychic,fighting).
superEffective(steel,rock). superEffective(steel,ice). superEffective(steel,fairy).
superEffective(dark,ghost). superEffective(dark,psychic).
superEffective(fairy,fighting). superEffective(fairy,dragon). superEffective(fairy,dark).

% notVeryEffective(X,Y) holds if X-type moves are not very effective against Y-type Pokémon.
notVeryEffective(grass,grass). notVeryEffective(grass,fire). notVeryEffective(grass,poison). notVeryEffective(grass,flying). notVeryEffective(grass,bug). notVeryEffective(grass,dragon). notVeryEffective(grass,steel).
notVeryEffective(fire,fire). notVeryEffective(fire,water). notVeryEffective(fire,rock). notVeryEffective(fire,dragon).
notVeryEffective(ground,grass). notVeryEffective(ground,bug).
notVeryEffective(poison,ground). notVeryEffective(poison,poison). notVeryEffective(poison,rock). notVeryEffective(poison,ghost).
notVeryEffective(electric,grass). notVeryEffective(electric,electric). notVeryEffective(electric,dragon).
notVeryEffective(water,grass). notVeryEffective(water,water). notVeryEffective(water,dragon).
notVeryEffective(rock,ground). notVeryEffective(rock,fighting). notVeryEffective(rock,steel).
notVeryEffective(flying,electric). notVeryEffective(flying,rock). notVeryEffective(flying,steel).
notVeryEffective(ice,fire). notVeryEffective(ice,water). notVeryEffective(ice,ice). notVeryEffective(ice,steel).
notVeryEffective(normal,rock). notVeryEffective(normal,steel).
notVeryEffective(bug,fire). notVeryEffective(bug,poison). notVeryEffective(bug,flying). notVeryEffective(bug,ghost). notVeryEffective(bug,fighting). notVeryEffective(bug,steel). notVeryEffective(bug,fairy).
notVeryEffective(ghost,dark).
notVeryEffective(fighting,poison). notVeryEffective(fighting,flying). notVeryEffective(fighting,bug). notVeryEffective(fighting,psychic).
notVeryEffective(fighting,fairy).
notVeryEffective(dragon,steel).
notVeryEffective(psychic,psychic). notVeryEffective(psychic,steel).
notVeryEffective(steel,fire). notVeryEffective(steel,electric). notVeryEffective(steel,water). notVeryEffective(steel,steel).
notVeryEffective(dark,fighting). notVeryEffective(dark,dark). notVeryEffective(dark,fairy).
notVeryEffective(fairy,fire). notVeryEffective(fairy,poison). notVeryEffective(fairy,steel).

% noEffect(X,Y) holds if X-type moves have no effect on Y-type Pokémon.
noEffect(ground,flying).
noEffect(poison,steel).
noEffect(electric,ground).
noEffect(normal,ghost).
noEffect(ghost,normal).
noEffect(fighting,ghost).
noEffect(dragon,fairy).
noEffect(psychic,dark).



type(X) :- superEffective(X,_).
type(X) :- superEffective(_,X).
weakTo(X,Y) :- superEffective(Y,X).
resistantTo(X,Y) :- notVeryEffective(Y,X).
immuneTo(X,Y) :- noEffect(Y,X).



% basic(X) holds if X is the sole member of its evolutionary chain (excluding Mega-Evolutions). (Also see basic(X) under CONDITIONAL STATEMENTS (EVOLUTION).)
basic(farfetchd).
basic(kangaskhan).
basic(pinsir).
basic(tauros).
basic(lapras).
basic(ditto).
basic(aerodactyl).
basic(articuno).
basic(zapdos).
basic(moltres).
basic(mewtwo).
basic(mew).
basic(unown).
basic(girafarig).
basic(dunsparce).
basic(qwilfish).
basic(shuckle).
basic(heracross).
basic(corsola).
basic(delibird).
basic(skarmory).
basic(stantler).
basic(smeargle).
basic(miltank).
basic(raikou).
basic(entei).
basic(suicune).
basic(lugia).
basic(ho-oh).
basic(celebi).
basic(sableye).
basic(mawile).
basic(plusle).
basic(minun).
basic(volbeat).
basic(illumise).
basic(torkoal).
basic(spinda).
basic(zangoose).
basic(seviper).
basic(lunatone).
basic(solrock).
basic(castform).
basic(kecleon).
basic(tropius).
basic(absol).
basic(relicanth).
basic(luvdisc).
basic(regirock).
basic(regice).
basic(registeel).
basic(latias).
basic(latios).
basic(kyogre).
basic(groudon).
basic(rayquaza).
basic(jirachi).
basic(deoxys).
basic(pachirisu).
basic(chatot).
basic(spiritomb).
basic(carnivine).
basic(rotom).
basic(uxie).
basic(mesprit).
basic(azelf).
basic(dialga).
basic(palkia).
basic(heatran).
basic(regigigas).
basic(giratina).
basic(cresselia).
basic(phione).
basic(manaphy).
basic(darkrai).
basic(shaymin).
basic(arceus).
basic(victini).
basic(audino).
basic(throh).
basic(sawk).
basic(basculin).
basic(maractus).
basic(sigilyph).
basic(emolga).
basic(alomomola).
basic(stunfisk).
basic(druddigon).
basic(bouffalant).
basic(heatmor).
basic(durant).
basic(cobalion).
basic(terrakion).
basic(virizion).
basic(tornadus).
basic(thundurus).
basic(reshiram).
basic(zekrom).
basic(landorus).
basic(kyurem).
basic(keldeo).
basic(meloetta).
basic(genesect).
basic(furfrou).
basic(hawlucha).
basic(dedenne).
basic(carbink).
basic(klefki).
basic(xerneas).
basic(yveltal).
basic(zygarde).
basic(rowlet).
basic(litten).
basic(popplio).
basic(pikipek).
basic(yungoos).
basic(grubbin).
basic(crabrawler).
basic(oricorio).
basic(cutiefly).
basic(rockruff).
basic(wishiwashi).
basic(mareanie).
basic(mudbray).
basic(dewpider).
basic(fomantis).
basic(morelull).
basic(salandit).
basic(stufful).
basic(bounsweet).
basic(comfey).
basic(oranguru).
basic(passimian).
basic(wimpod).
basic(sandygast).
basic(pyukumuku).
basic(type_null).
basic(minior).
basic(komala).
basic(turtonator).
basic(togedemaru).
basic(mimikyu).
basic(bruxish).
basic(drampa).
basic(dhelmise).
basic(jangmo-o).
basic(tapu_koko).
basic(tapu_lele).
basic(tapu_bulu).
basic(tapu_fini).
basic(cosmog).
basic(nihilego).
basic(buzzwole).
basic(pheromosa).
basic(xurkitree).
basic(celesteela).
basic(kartana).
basic(guzzlord).
basic(necrozma).
basic(magearna).
basic(marshadow).
basic(poipole).
basic(stakataka).
basic(blacephalon).
basic(zeraora).

:- discontiguous basic/1.

% stage1(X,Y) holds if Y evolves into X AND Y is a Basic Pokémon.
stage1(ivysaur,bulbasaur).
stage1(charmeleon,charmander).
stage1(wartortle,squirtle).
stage1(metapod,caterpie).
stage1(kakuna,weedle).
stage1(pidgeotto,pidgey).
stage1(raticate,rattata).
stage1(fearow,spearow).
stage1(arbok,ekans).
stage1(pikachu,pichu).
stage1(sandslash,sandshrew).
stage1(nidorina,nidoran). stage1(nidorino,nidoran).
stage1(clefairy,cleffa).
stage1(ninetales,vulpix).
stage1(jigglypuff,igglybuff).
stage1(golbat,zubat).
stage1(gloom,oddish).
stage1(parasect,paras).
stage1(venomoth,venonat).
stage1(dugtrio,diglett).
stage1(persian,meowth).
stage1(golduck,psyduck).
stage1(primeape,mankey).
stage1(arcanine,growlithe).
stage1(poliwhirl,poliwag).
stage1(kadabra,abra).
stage1(machoke,machop).
stage1(weepinbell,bellsprout).
stage1(tentacruel,tentacool).
stage1(graveler,geodude).
stage1(rapidash,ponyta).
stage1(slowbro,slowpoke). stage1(slowking,slowpoke).
stage1(magneton,magnemite).
stage1(dodrio,doduo).
stage1(dewgong,seel).
stage1(muk,grimer).
stage1(cloyster,shellder).
stage1(haunter,gastly).
stage1(steelix,onix).
stage1(hypno,drowzee).
stage1(kingler,krabby).
stage1(electrode,voltorb).
stage1(exeggutor,exeggcute).
stage1(marowak,cubone).
stage1(hitmonlee,tyrogue). stage1(hitmonchan,tyrogue). stage1(hitmontop,tyrogue).
stage1(lickilicky,lickitung).
stage1(weezing,koffing).
stage1(rhydon,rhyhorn).
stage1(chansey,happiny).
stage1(tangrowth,tangela).
stage1(seadra,horsea).
stage1(seaking,goldeen).
stage1(starmie,staryu).
stage1(mrMime,mimeJr).
stage1(scizor,scyther).
stage1(jynx,smoochum).
stage1(electabuzz,elekid).
stage1(magmar,magby).
stage1(gyarados,magikarp).
stage1(vaporeon,eevee). stage1(flareon,eevee). stage1(jolteon,eevee). stage1(espeon,eevee). stage1(umbreon,eevee). stage1(leafeon,eevee). stage1(glaceon,eevee). stage1(sylveon,eevee).
stage1(porygon2,porygon).
stage1(omastar,omanyte).
stage1(kabutops,kabuto).
stage1(snorlax,munchlax).
stage1(dragonair,dratini).
stage1(bayleef,chikorita).
stage1(quilava,cyndaquil).
stage1(croconaw,totodile).
stage1(furret,sentret).
stage1(noctowl,hoothoot).
stage1(ledian,ledyba).
stage1(ariados,spinarak).
stage1(lanturn,chinchou).
stage1(togetic,togepi).
stage1(tic-toc,eggy).
stage1(xatu,natu).
stage1(flaafy,mareep).
stage1(marill,azurill).
stage1(sudowoodo,bonsly).
stage1(skiploom,hoppip).
stage1(ambipom,aipom).
stage1(sunflora,sunkern).
stage1(yanmega,yanma).
stage1(quagsire,wooper).
stage1(honchkrow,murkrow).
stage1(mismagius,misdreavus).
stage1(wobbuffet,wynaut).
stage1(foretress,pineco).
stage1(gliscor,gligar).
stage1(granbull,snubbull).
stage1(weavile,sneasel).
stage1(ursaring,teddiursa).
stage1(magcargo,slugma).
stage1(piloswine,swinub).
stage1(octillery,remoraid).
stage1(mantine,mantyke).
stage1(houndoom,houndour).
stage1(donphan,phanpy).
stage1(pupitar,larvitar).
stage1(grovyle,treecko).
stage1(combusken,torchic).
stage1(marshtomp,mudkip).
stage1(mightyena,poochyena).
stage1(linoone,zigzagoon).
stage1(silcoon,wurmple). stage1(cascoon,wurmple).
stage1(lombre,lotad).
stage1(nuzleaf,seedot).
stage1(swellow,taillow).
stage1(pelipper,wingull).
stage1(kirlia,ralts).
stage1(masquerain,surskit).
stage1(breloom,shroomish).
stage1(vigoroth,slakoth).
stage1(ninjask,nincada). stage1(shedinja,nincada).
stage1(loudred,whismur).
stage1(hariyama,makuhita).
stage1(probopass,nosepass).
stage1(delcatty,skitty).
stage1(lairon,aron).
stage1(medicham,meditite).
stage1(manectric,electrike).
stage1(roselia,budew).
stage1(swalot,gulpin).
stage1(sharpedo,carvanha).
stage1(wailord,wailmer).
stage1(camerupt,numel).
stage1(grumpig,spoink).
stage1(vibrava,trapinch).
stage1(cacturne,cacnea).
stage1(altaria,swablu).
stage1(whiscash,barboach).
stage1(crawdaunt,corphish).
stage1(claydol,baltoy).
stage1(cradily,lileep).
stage1(armaldo,anorith).
stage1(milotic,feebas).
stage1(banette,shuppet).
stage1(dusclops,duskull).
stage1(chimecho,chingling).
stage1(glalie,snorunt). stage1(froslass,snorunt).
stage1(sealeo,spheal).
stage1(huntail,clamperl). stage1(gorebyss,clamperl).
stage1(shelgon,bagon).
stage1(metang,beldum).
stage1(grotle,turtwig).
stage1(monferno,chimchar).
stage1(prinplup,piplup).
stage1(staravia,starly).
stage1(bibarel,bidoof).
stage1(kricketune,kricketot).
stage1(luxio,shinx).
stage1(rampardos,cranidos).
stage1(bastiodon,shieldon).
stage1(wormadam,burmy). stage1(mothim,burmy).
stage1(vespiquen,combee).
stage1(floatzel,buizel).
stage1(cherrim,cherubi).
stage1(gastrodon,shellos).
stage1(drifblim,drifloon).
stage1(lopunny,buneary).
stage1(purugly,glameow).
stage1(skuntank,stunky).
stage1(bronzong,bronzor).
stage1(gabite,gible).
stage1(lucario,riolu).
stage1(hippowdon,hippopotas).
stage1(drapion,skorupi).
stage1(toxicroak,croagunk).
stage1(lumineon,finneon).
stage1(abomasnow,snover).
stage1(servine,snivy).
stage1(pignite,tepig).
stage1(dewott,oshawott).
stage1(watchog,patrat).
stage1(herdier,lillipup).
stage1(liepard,purrloin).
stage1(simisage,pansage).
stage1(simisear,pansear).
stage1(simipour,panpour).
stage1(musharna,munna).
stage1(tranquill,pidove).
stage1(zebstrika,blitzle).
stage1(boldore,roggenrola).
stage1(swoobat,woobat).
stage1(excadrill,drilbur).
stage1(gurdurr,timburr).
stage1(palpitoad,tympole).
stage1(swadloon,sewaddle).
stage1(whirlipede,venipede).
stage1(whimsicott,cottonee).
stage1(lilligant,petilil).
stage1(krokorok,sandile).
stage1(darmanitan,darumaka).
stage1(crustle,dwebble).
stage1(scrafty,scraggy).
stage1(cofagrigus,yamask).
stage1(carracosta,tirtouga).
stage1(archeops,archen).
stage1(garbodor,trubbish).
stage1(zoroark,zorua).
stage1(cinccino,minccino).
stage1(gothorita,gothita).
stage1(duosion,solosis).
stage1(swanna,ducklett).
stage1(vanillish,vanillite).
stage1(sawsbuck,deerling).
stage1(escavalier,karrablast).
stage1(amoonguss,foongus).
stage1(jellicent,frillish).
stage1(galvantula,joltik).
stage1(ferrothorn,ferroseed).
stage1(klang,klink).
stage1(eelektrik,tynamo).
stage1(beheeyem,elgyem).
stage1(lampent,litwick).
stage1(fraxure,axew).
stage1(beartic,cubchoo).
stage1(accelgor,shelmet).
stage1(mienshao,mienfoo).
stage1(golurk,golett).
stage1(bisharp,pawniard).
stage1(braviary,rufflet).
stage1(mandibuzz,vullaby).
stage1(zweilous,deino).
stage1(volcarona,larvesta).
stage1(quilladin,chespin).
stage1(braixen,fennekin).
stage1(frogadier,froakie).
stage1(diggersby,bunnelby).
stage1(fletchinder,fletchling).
stage1(spewpa,scatterbug).
stage1(pyroar,litleo).
stage1(floette,flabébé).
stage1(gogoat,skiddo).
stage1(pangoro,pancham).
stage1(meowstic,espurr).
stage1(doublade,honedge).
stage1(aromatisse,spritzee).
stage1(slurpuff,swirlix).
stage1(malamar,inkay).
stage1(barbaracle,binacle).
stage1(dragalge,skrelp).
stage1(clawitzer,clauncher).
stage1(heliolisk,helioptile).
stage1(tyrantrum,tyrunt).
stage1(aurorus,amaura).
stage1(sliggoo,goomy).
stage1(trevenant,phantump).
stage1(gourgeist,pumpkaboo).
stage1(avalugg,bergmite).
stage1(noivern,noibat).
stage1(dartrix,rowlet).
stage1(torracat,litten).
stage1(brionne,popplio).
stage1(trumbeak,pikipek).
stage1(gumshoos,yungoos).
stage1(charjabug,grubbin).
stage1(crabominable,crabrawler).
stage1(ribombee,cutiefly).
stage1(lycanroc,rockruff).
stage1(toxapex,mareanie).
stage1(mudsdale,mudbray).
stage1(araquanid,dewpider).
stage1(lurantis,fomantis).
stage1(shiinotic,morelull).
stage1(salazzle,salandit).
stage1(bewear,stufful).
stage1(steenee,bounsweet).
stage1(golisopod,wimpod).
stage1(palossand,sandygast).
stage1(silvally,type_null).
stage1(hakamo-o,jangmo-o).
stage1(cosmoem,cosmog).
stage1(naganadel,poipole).

% stage2(X,Y) holds if Y evolves into X AND Y is a Stage-1 Pokémon.
stage2(venusaur,ivysaur).
stage2(charizard,charmeleon).
stage2(blastoise,wartortle).
stage2(butterfree,metapod).
stage2(beedrill,kakuna).
stage2(pidgeot,pidgeotto).
stage2(raichu,pikachu).
stage2(nidoqueen,nidorina). stage2(nidoking,nidorino).
stage2(clefable,clefairy).
stage2(wigglytuff,jigglypuff).
stage2(crobat,golbat).
stage2(vileplume,gloom). stage2(bellossom,gloom).
stage2(poliwrath,poliwhirl). stage2(politoed,poliwhirl).
stage2(alakazam,kadabra).
stage2(machamp,machoke).
stage2(victreebel,weepinbell).
stage2(golem,graveler).
stage2(magnezone,magneton).
stage2(gengar,haunter).
stage2(rhyperior,rhydon).
stage2(blissey,chansey).
stage2(kingdra,seadra).
stage2(electivire,electabuzz).
stage2(magmortar,magmar).
stage2(porygon-z,porygon2).
stage2(dragonite,dragonair).
stage2(meganium,bayleef).
stage2(typhlosion,quilava).
stage2(feraligatr,croconaw).
stage2(togekiss,togetic).
stage2(eggykiss,tic-toc).
stage2(ampharos,flaafy).
stage2(azumarill,marill).
stage2(jumpluff,skiploom).
stage2(mamoswine,piloswine).
stage2(tyranitar,pupitar).
stage2(sceptile,grovyle).
stage2(blaziken,combusken).
stage2(swampert,marshtomp).
stage2(beautifly,silcoon). stage2(dustox,cascoon).
stage2(ludicolo,lombre).
stage2(shiftry,nuzleaf).
stage2(gardevoir,kirlia). stage2(gallade,kirlia).
stage2(slaking,vigoroth).
stage2(exploud,loudred).
stage2(aggron,lairon).
stage2(roserade,roselia).
stage2(flygon,vibrava).
stage2(dusknoir,dusclops).
stage2(walrein,sealeo).
stage2(salamence,shelgon).
stage2(metagross,metang).
stage2(torterra,grotle).
stage2(infernape,monferno).
stage2(empoleon,prinplup).
stage2(staraptor,staravia).
stage2(luxray,luxio).
stage2(garchomp,gabite).
stage2(serperior,servine).
stage2(emboar,pignite).
stage2(samurott,dewott).
stage2(unfezant,tranquill).
stage2(stoutland,herdier).
stage2(gigalith,boldore).
stage2(conkeldurr,gurdurr).
stage2(leavanny,swadloon).
stage2(scolipede,whirlipede).
stage2(krookodile,krokorok).
stage2(gothitelle,gothorita).
stage2(reuniclus,duosion).
stage2(vanilluxe,vanillish).
stage2(klinklang,klang).
stage2(eelektross,eelektrik).
stage2(chandelure,lampent).
stage2(haxorus,fraxure).
stage2(hydreigon,zweilous).
stage2(chesnaught,quilladin).
stage2(delphox,braixen).
stage2(greninja,frogadier).
stage2(talonflame,fletchinder).
stage2(vivillon,spewpa).
stage2(florges,floette).
stage2(aegislash,doublade).
stage2(goodra,sliggoo).
stage2(decidueye,dartrix).
stage2(incineroar,torracat).
stage2(primarina,brionne).
stage2(toucannon,trumbeak).
stage2(vikavolt,charjabug).
stage2(tsareena,steenee).
stage2(kommo-o,hakamo-o).
stage2(solgaleo,cosmoem). stage2(lunala,cosmoem).

% megaEvo(X,Y) holds if Y "evolves" into X AND X is a Mega-Evolution.
megaEvo(mega_venusaur,venusaur).
megaEvo(mega_charizardX,charizard). megaEvo(mega_charizardY,charizard).
megaEvo(mega_blastoise,blastoise).
megaEvo(mega_beedrill,beedrill).
megaEvo(mega_pidgeot,pidgeot).
megaEvo(mega_alakazam,alakazam).
megaEvo(mega_slowbro,slobro).
megaEvo(mega_gengar,gengar).
megaEvo(mega_steelix,steelix).
megaEvo(mega_kangaskhan,kangaskhan).
megaEvo(mega_scizor,scizor).
megaEvo(mega_gyarados,gyarados).
megaEvo(mega_aerodactyl,aerodactyl).
megaEvo(mega_mewtwoX,mewtwo). megaEvo(mega_mewtwoY,mewtwo).
megaEvo(mega_ampharos,ampharos).
megaEvo(mega_heracross,heracross).
megaEvo(mega_tyranitar,tyranitar).
megaEvo(mega_sceptile,sceptile).
megaEvo(mega_blaziken,blaziken).
megaEvo(mega_swampert,swampert).
megaEvo(mega_gardevoir,gardevoir).
megaEvo(mega_sableye,sableye).
megaEvo(mega_mawile,mawile).
megaEvo(mega_aggron,aggron).
megaEvo(mega_medicham,medicham).
megaEvo(mega_sharpedo,sharpedo).
megaEvo(mega_camerupt,camerupt).
megaEvo(mega_altaria,altaria).
megaEvo(mega_zangoose,zangoose).
megaEvo(mega_banette,banette).
megaEvo(mega_absol,absol).
megaEvo(mega_glalie,glalie).
megaEvo(mega_salamence,salamence).
megaEvo(mega_metagross,metagross).
megaEvo(mega_latias,latias).
megaEvo(mega_latios,latios).
megaEvo(mega_rayquaza,rayquaza).
megaEvo(mega_lopunny,lopunny).
megaEvo(mega_garchomp,garchomp).
megaEvo(mega_lucario,lucario).
megaEvo(mega_abomasnow,abomasnow).
megaEvo(mega_gallade,gallade).
megaEvo(mega_audino,audino).
megaEvo(mega_diancie,diancie).


evolvesInto(X,Y) :- stage1(Y,X).
evolvesInto(X,Y) :- stage2(Y,X).
evolvesInto(X,Y) :- megaEvo(Y,X).
evolvesInto(X,Y) :- stage2(Y,Z), evolvesInto(X,Z).
evolvesInto(X,Y) :- megaEvo(Y,Z), evolvesInto(X,Z).
evolvesFrom(X,Y) :- evolvesInto(Y,X).
finalStage(X) :- \+ evolvesInto(X,_).
basic(X) :- stage1(_,X).
stage1(X) :- evolvesFrom(X,Y),basic(Y).
stage2(X) :- evolvesFrom(X,Y),stage1(Y).
megaEvo(X) :- megaEvo(X,_).


% professor(X,Y,Z) holds if X is the designated Pokémon researcher of the Y Region and is a specialist in the field of Z.
professor(oak,kanto,pokemon_humanRelationships).
professor(elm,johto,pokemonEggsAndAbilities).
professor(birch,hoenn,pokemonHabitats).
professor(rowan,sinnoh,pokemonEvolution).
professor(juniper,unova,pokemonOrigins).
professor(sycamore,kalos,pokemonMega_Evolution).
professor(kukui,alola,pokemonMoves).



% gymLeader(X,Y,Z) holds if X is the Zth Gym Leader of the Y Region.
gymLeader(brock,kanto,1).
gymLeader(misty,kanto,2).
gymLeader(ltSurge,kanto,3).
gymLeader(erika,kanto,4).
gymLeader(janine,kanto,5).
gymLeader(sabrina,kanto,6).
gymLeader(blaine,kanto,7).
gymLeader(blue,kanto,8).
gymLeader(falkner,johto,1).
gymLeader(bugsy,johto,2).
gymLeader(whitney,johto,3).
gymLeader(morty,johto,4).
gymLeader(chuck,johto,5).
gymLeader(jasmine,johto,6).
gymLeader(pryce,johto,7).
gymLeader(clair,johto,8).
gymLeader(roxanne,hoenn,1).
gymLeader(brawly,hoenn,2).
gymLeader(wattson,hoenn,3).
gymLeader(flannery,hoenn,4).
gymLeader(norman,hoenn,5).
gymLeader(winona,hoenn,6).
gymLeader(tate/liza,hoenn,7).
gymLeader(juan,hoenn,8).
gymLeader(roark,sinnoh,1).
gymLeader(gardenia,sinnoh,2).
gymLeader(maylene,sinnoh,3).
gymLeader(crasher_wake,sinnoh,4).
gymLeader(fantina,sinnoh,5).
gymLeader(byron,sinnoh,6).
gymLeader(candice,sinnoh,7).
gymLeader(volkner,sinnoh,8).
gymLeader(cheren,unova,1).
gymLeader(roxie,unova,2).
gymLeader(burgh,unova,3).
gymLeader(elesa,unova,4).
gymLeader(clay,unova,5).
gymLeader(skyla,unova,6).
gymLeader(drayden,unova,7).
gymLeader(marlon,unova,8).
gymLeader(viola,kalos,1).
gymLeader(grant,kalos,2).
gymLeader(korrina,kalos,3).
gymLeader(ramos,kalos,4).
gymLeader(clemont,kalos,5).
gymLeader(valerie,kalos,6).
gymLeader(olympia,kalos,7).
gymLeader(wulfric,kalos,8).

% gymLeader(X,Y) holds if Y is Gym Leader X's Pokémon party type.
gymLeader(brock,rock).
gymLeader(misty,water).
gymLeader(ltSurge,electric).
gymLeader(erika,grass).
gymLeader(janine,poison).
gymLeader(sabrina,psychic).
gymLeader(blaine,fire).
gymLeader(blue,various).
gymLeader(falkner,flying).
gymLeader(bugsy,bug).
gymLeader(whitney,normal).
gymLeader(morty,ghost).
gymLeader(chuck,fighting).
gymLeader(jasmine,steel).
gymLeader(pryce,ice).
gymLeader(clair,dragon).
gymLeader(roxanne,rock).
gymLeader(brawly,fighting).
gymLeader(wattson,electric).
gymLeader(flannery,fire).
gymLeader(norman,normal).
gymLeader(winona,flying).
gymLeader(tate/liza,psychic).
gymLeader(juan,water).
gymLeader(roark,rock).
gymLeader(gardenia,grass).
gymLeader(maylene,fighting).
gymLeader(crasher_wake,water).
gymLeader(fantina,ghost).
gymLeader(byron,steel).
gymLeader(candice,ice).
gymLeader(volkner,electric).
gymLeader(cheren,normal).
gymLeader(roxie,poison).
gymLeader(burgh,bug).
gymLeader(elesa,electric).
gymLeader(clay,ground).
gymLeader(skyla,flying).
gymLeader(drayden,dragon).
gymLeader(marlon,water).
gymLeader(viola,bug).
gymLeader(grant,rock).
gymLeader(korrina,fighting).
gymLeader(ramos,grass).
gymLeader(clemont,electric).
gymLeader(valerie,fairy).
gymLeader(olympia,psychic).
gymLeader(wulfric,ice).



gymLeader(X) :- gymLeader(X,_); tl(X), \+ gymLeader(tate/liza,_).

tl(tate). tl(liza).



% trial(X,Y,Z) holds if the Xth Trial takes place on Y Island and centres around the Z Type.
trial(1,melemele,normal).
trial(2,melemele,fighting).
trial(3,akala,water).
trial(4,akala,fire).
trial(5,akala,grass).
trial(6,akala,rock).
trial(7,ula_ula,electric).
trial(8,ula_ula,ghost).
trial(9,ula_ula,dark).
trial(10,poni,ground).
trial(11,poni,dragon).
trial(12,poni,fairy).

% captain(X,Y) holds if X is the captain of the Yth Trial.
captain(ilima,1).
captain(lana,3).
captain(kiawe,4).
captain(mallow,5).
captain(sophocles,7).
captain(acerola,8).
captain(mina,12).

% kahuna(X,Y) holds if X is the Kahuna of the Yth Trial.
kahuna(hala,2).
kahuna(olivia,6).
kahuna(nanu,9).
kahuna(hapu,10).


grandTrial(X) :- kahuna(_,X).
captain(X) :- captain(X,_).
captain(X,Y,Z) :- captain(X,N), trial(N,Y,Z).
kahuna(X,Y,Z) :- kahuna(X,N), trial(N,Y,Z).



% elite4(X,Y,Z) holds if X is the Zth Elite Four member of the Y Region.
elite4(will,Indigo,1) :- iRegion(Indigo).
elite4(koga,Indigo,2) :- iRegion(Indigo).
elite4(bruno,Indigo,3) :- iRegion(Indigo).
elite4(karen,Indigo,4) :- iRegion(Indigo).
elite4(lance,Indigo,5) :- iRegion(Indigo).
elite4(sidney,hoenn,1).
elite4(phoebe,hoenn,2).
elite4(glacia,hoenn,3).
elite4(drake,hoenn,4).
elite4(wallace,hoenn,5).
elite4(aaron,sinnoh,1).
elite4(bertha,sinnoh,2).
elite4(flint,sinnoh,3).
elite4(lucian,sinnoh,4).
elite4(cynthia,sinnoh,5).
elite4(shauntal,unova,O) :- e4order(O).
elite4(marshal,unova,O) :- e4order(O).
elite4(grimsley,unova,O) :- e4order(O).
elite4(caitlin,unova,O) :- e4order(O).
elite4(iris,unova,5).
elite4(malva,kalos,O) :- e4order(O).
elite4(wikstrom,kalos,O) :- e4order(O).
elite4(drasna,kalos,O) :- e4order(O).
elite4(siebold,kalos,O) :- e4order(O).
elite4(diantha,kalos,5).
elite4(molayne,alola,O) :- e4order(O).
elite4(olivia,alola,O) :- e4order(O).
elite4(acerola,alola,O) :- e4order(O).
elite4(kahili,alola,O) :- e4order(O).
elite4(hau,alola,5).

% elite4(X,Y) holds if Y is Elite Four/Champion X's Pokémon party type.
elite4(will,psychic).
elite4(koga,poison).
elite4(bruno,fighting).
elite4(karen,dark).
elite4(lance,dragon).
elite4(sidney,dark).
elite4(phoebe,ghost).
elite4(glacia,ice).
elite4(drake,dragon).
elite4(wallace,water).
elite4(aaron,bug).
elite4(bertha,ground).
elite4(flint,fire).
elite4(lucian,psychic).
elite4(cynthia,various).
elite4(shauntal,ghost).
elite4(marshal,fighting).
elite4(grimsley,dark).
elite4(caitlin,psychic).
elite4(iris,dragon).
elite4(malva,fire).
elite4(wikstrom,steel).
elite4(drasna,dragon).
elite4(siebold,water).
elite4(diantha,various).
elite4(molayne,steel).
elite4(olivia,rock).
elite4(acerola,ghost).
elite4(kahili,flying).
elite4(hau,various).



elite4(X) :- elite4(X,_).
champion(X) :- elite4(X,_,5).
champion(X,_) :- champion(X).

iRegion(kanto). iRegion(johto).
e4order(1). e4order(2). e4order(3). e4order(4).



region(kanto). region(johto). region(hoenn). region(sinnoh). region(unova). region(kalos). region(alola).



% tm(X,Y,Z) holds if TM number X contains the move Z in generation Y.
tm(01,i,mega_punch). tm(01,ii,dynamicpunch). tm(01,iii,focus_punch). tm(01,iv,focus_punch). tm(01,v,hone_claws). tm(01,vi,hone_claws). tm(01,vii,work_up).
tm(02,i,razor_wind). tm(02,ii,headbutt). tm(02,DC,dragon_claw) :- dclaw(DC).
tm(03,i,swords_dance). tm(03,ii,curse). tm(03,iii,water_pulse). tm(03,iv,water_pulse). tm(03,v,psyshock). tm(03,vi,psyshock). tm(03,vii,psyshock).
tm(04,i,whirlwind). tm(04,ii,rollout). tm(04,CM,calm_mind) :- calm(CM).
tm(05,i,mega_kick). tm(05,R,roar) :- roar(R).
tm(06,T,toxic) :- tox(T).
tm(07,i,horn_drill). tm(07,ii,zap_cannon). tm(07,H,hail) :- hail(H).
tm(08,i,body_slam). tm(08,ii,rock_smash). tm(08,BU,bulk_up) :- bulk(BU).
tm(09,i,take_down). tm(09,ii,psych_up). tm(09,iii,bullet_seed). tm(09,iv,bullet_seed). tm(09,v,venoshock). tm(09,vi,venoshock). tm(09,vii,venoshock).
tm(10,i,double-edge). tm(10,HP,hidden_power) :- hpow(HP).
tm(11,i,bubble_beam). tm(11,SD,sunny_day) :- sday(SD).
tm(12,i,water_gun). tm(12,ii,sweet_scent). tm(12,T,taunt) :- taunt(T).
tm(13,IB,ice_beam) :- iceb(IB). tm(13,ii,snore).
tm(14,B,blizzard) :- bliz(B).
tm(15,HB,hyper_beam) :- hypb(HB).
tm(16,i,pay_day). tm(16,ii,icy_wind). tm(16,LS,light_screen) :- lscr(LS).
tm(17,i,submission). tm(17,P,protect) :- prtc(P).
tm(18,i,counter). tm(18,RD,rain_dance) :- rain(RD).
tm(19,i,seismic_toss). tm(19,GD,giga_drain) :- giga(GD). tm(19,R,roost) :- roost(R).
tm(20,i,rage). tm(20,ii,endure). tm(20,S,safeguard) :- safe(S).
tm(21,i,mega_drain). tm(21,F,frustration) :- frst(F).
tm(22,SB,solar_beam) :- slrb(SB).
tm(23,i,dragon_rage). tm(23,IT,iron_tail) :- irnt(IT). tm(23,SD,smack_down) :- smkd(SD).
tm(24,T,thunderbolt) :- bolt(T). tm(24,ii,dragon_breath).
tm(25,T,thunder) :- thun(T).
tm(26,E,earthquake) :- equa(E).
tm(27,i,fissure). tm(27,R,return) :- rtrn(R).
tm(28,D,dig) :- dig(D). tm(28,vii,leech_life).
tm(29,P,psychic) :- psyc(P).
tm(30,i,teleport). tm(30,SB,shadow_ball) :- shdw(SB).
tm(31,i,mimic). tm(31,ii,mud-slap). tm(31,BB,brick_break) :- bbrk(BB).
tm(32,DT,double_team) :- dteam(DT).
tm(33,R,reflect) :- rflc(R). tm(33,ii,ice_punch).
tm(34,i,bide). tm(34,ii,swagger). tm(34,SK,shock_wave) :- skwv(SK). tm(34,SG,sludge_wave) :- sgwv(SG).
tm(35,i,metronome). tm(35,ii,sleep_talk). tm(35,F,flamethrower) :- fthr(F).
tm(36,i,self-destruct). tm(36,SB,sludge_bomb) :- sbom(SB).
tm(37,i,egg_bomb). tm(37,S,sandstorm) :- sstm(S).
tm(38,FB,fire_blast) :- blst(FB).
tm(39,S,swift) :- swft(S). tm(39,RT,rock_tomb) :- rtmb(RT).
tm(40,i,skull_bash). tm(40,ii,defense_curl). tm(40,AA,aerial_ace) :- aace(AA).
tm(41,i,softboiled). tm(41,ii,thunder_punch). tm(41,T,torment) :- tmnt(T).
tm(42,DE,dream_eater) :- deat(DE). tm(42,F,facade) :- fcad(F).
tm(43,i,sky_attack). tm(43,ii,detect). tm(43,SP,secret_power) :- spow(SP). tm(43,FC,flame_charge) :- fmch(FC).
tm(44,R,rest) :- rest(R).
tm(45,i,thunder_wave). tm(45,A,attract) :- attr(A).
tm(46,i,psywave). tm(46,T,thief) :- thif(T).
tm(47,i,explosion). tm(47,SW,steel_wing) :- stlw(SW). tm(47,LS,low_sweep) :- lswp(LS).
tm(48,i,rock_slide). tm(48,ii,fire_punch). tm(48,SS,skill_swap) :- sswp(SS). tm(48,R,round) :- rund(R).
tm(49,i,tri_attack). tm(49,ii,fury_cutter). tm(49,S,snatch) :- snch(S). tm(49,EV,echoed_voice) :- ecvc(EV).
tm(50,i,substitute). tm(50,ii,nightmare). tm(50,O,overheat) :- ovht(O).
tm(51,iv,roost). tm(51,v,ally_switch). tm(51,SW,steel_wing) :- stvi(SW).



dclaw(iii). dclaw(iv). dclaw(v). dclaw(vi). dclaw(vii).
calm(iii). calm(iv). calm(v). calm(vi). calm(vii).
roar(ii). roar(iii). roar(iv). roar(v). roar(vi). roar(vii).
tox(i). tox(ii). tox(iii). tox(iv). tox(v). tox(vi). tox(vii).
hail(iii). hail(iv). hail(v). hail(vi). hail(vii).
bulk(iii). bulk(iv). bulk(v). bulk(vi). bulk(vii).
hpow(ii). hpow(iii). hpow(iv). hpow(v). hpow(vi). hpow(vii).
sday(ii). sday(iii). sday(iv). sday(v). sday(vi). sday(vii).
taunt(iii). taunt(iv). taunt(v). taunt(vi). taunt(vii).
iceb(i). iceb(iii). iceb(iv). iceb(v). iceb(vi). iceb(vii).
bliz(i). bliz(ii). bliz(iii). bliz(iv). bliz(v). bliz(vi). bliz(vii).
hypb(i). hypb(ii). hypb(iii). hypb(iv). hypb(v). hypb(vi). hypb(vii).
lscr(iii). lscr(iv). lscr(v). lscr(vi). lscr(vii).
prtc(ii). prtc(iii). prtc(iv). prtc(v). prtc(vi). prtc(vii).
rain(ii). rain(iii). rain(iv). rain(v). rain(vi). rain(vii).
giga(ii). giga(iii). giga(iv). roost(vi). roost(vii).
safe(iii). safe(iv). safe(v). safe(vi). safe(vii).
frst(ii). frst(iii). frst(iv). frst(v). frst(vi). frst(vii).
slrb(i). slrb(ii). slrb(iii). slrb(iv). slrb(v). slrb(vi). slrb(vii).
irnt(ii). irnt(iii). irnt(iv). smkd(v). smkd(vi). smkd(vii).
bolt(i). bolt(iii). bolt(iv). bolt(v). bolt(vi). bolt(vii).
thun(i). thun(ii). thun(iii). thun(iv). thun(v). thun(vi). thun(vii).
equa(i). equa(ii). equa(iii). equa(iv). equa(v). equa(vi). equa(vii).
rtrn(ii). rtrn(iii). rtrn(iv). rtrn(v). rtrn(vi). rtrn(vii).
dig(i). dig(ii). dig(iii). dig(iv). dig(v). dig(vi).
psyc(i). psyc(ii). psyc(iii). psyc(iv). psyc(v). psyc(vi). psyc(vii).
shdw(ii). shdw(iii). shdw(iv). shdw(v). shdw(vi). shdw(vii).
bbrk(iii). bbrk(iv). bbrk(v). bbrk(vi). bbrk(vii).
dteam(i). dteam(ii). dteam(iii). dteam(iv). dteam(v). dteam(vi). dteam(vii).
rflc(i). rflc(iii). rflc(iv). rflc(v). rflc(vi). rflc(vii).
skwv(iii). skwv(iv). sgwv(v). sgwv(vi). sgwv(vii).
fthr(iii). fthr(iv). fthr(v). fthr(vi). fthr(vii).
sbom(ii). sbom(iii). sbom(iv). sbom(v). sbom(vi). sbom(vii).
sstm(ii). sstm(iii). sstm(iv). sstm(v). sstm(vi). sstm(vii).
blst(i). blst(ii). blst(iii). blst(iv). blst(v). blst(vi). blst(vii).
swft(i). swft(ii). rtmb(iii). rtmb(iv). rtmb(v). rtmb(vi). rtmb(vii).
aace(iii). aace(iv). aace(v). aace(vi). aace(vii).
tmnt(iii). tmnt(iv). tmnt(v). tmnt(vi). tmnt(vii).
deat(i). deat(ii). fcad(iii). fcad(iv). fcad(v). fcad(vi). fcad(vii).
spow(iii). spow(iv). fmch(v). fmch(vi). fmch(vii).
rest(i). rest(ii). rest(iii). rest(iv). rest(v). rest(vi). rest(vii).
attr(ii). attr(iii). attr(iv). attr(v). attr(vi). attr(vii).
thif(ii). thif(iii). thif(iv). thif(v). thif(vi). thif(vii).
stlw(ii). stlw(iii). stlw(iv). lswp(v). lswp(vi). lswp(vii).
sswp(iii). sswp(iv). rund(v). rund(vi). rund(vii).
snch(iii). snch(iv). ecvc(v). ecvc(vi). ecvc(vii).
ovht(iii). ovht(iv). ovht(v). ovht(vi). ovht(vii).
stvi(vi). stvi(vii).
