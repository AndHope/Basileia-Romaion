####id 2880120246

# Update 141

## Companies
- company_ven_arsenal and company_gen_arsenal both given unique company icons
- combine the logging and colonization companies and adjust building ownership
- Company will have new world pine and new world fur prestige goods
- improved the mods textile company icons

## Goods
### Prestige Goods
- Add prestige_good_br_prestige_manowars: "Bucintoro"
- replaced the icon for prestige_good_br_byz_clothes and prestige_good_br_ven_clothes
- added new icon for mods prestige silk
- added prestige_good_br_prestige_spices: "Indies Spices"
- added prestige_good_br_prestige_pearls: "Fine Pearls"


## Balance changes
- native conscription nerfed
- added new port pm Wayport to be between anchorage and Cargo Port and added 1 merchant_marine to anchorage
- arable land rebalance adjusted south america mostly down a tad, increased "american coast" a bit and increased Caribbean a bit.
- rebalance the br_modifier_romaioi_culture_supremacy modifier
- goods_output_wood_mult added
- added small arms to the arsenal expansion goods
- lowered the trade companies trade advantage bonus to 15% from 25%
- adjusted and add various good transfers to starting treaties


## Bug fixes
- I don't know how or why certain players get both syria stacking modifiers but I think its this decision so added more checks
- fixed some treaty port treaties

## Other 
- standardized the mods flags at 384x256 and made sure all are .dds

# Update 140

## Companies

### Added 14 new Companies
- company_br_byz_arsenal: "Kentrikòn Polemikòn Skeuastērion"
- company_br_byz_mining_steel: "Metalleutikà Ergastēria tōn Anatolēs"
- company_br_byz_rus: "Rhōsikē Hetaireía tou Emporíou tou Boreíou"
- company_br_elysian_mercantile_guild: "Emporikḗ Syntechnía Elysiōn"
- company_br_elysian_indigo_guild: "Koinōnía tēs Sērikēs kai tēs Baphēs"
- company_br_elysian_great_estates: "Latifundia Magna Elysiōn"
- company_br_kykladian_naval: "Naftikḗ Archē tōn Kykladiōn"
- company_br_elysian_colonization_company: "Oikistikḗ Hetaireía Elysiōn"
- company_br_elysian_ironworking_company: "Siderourgikḗ Koinōnía Elysiōn"
- company_br_vinland_colonization_company: "Landnámsfélagið Mikla"
- company_br_vinland_timber_company: "Viðrfélag Vinlands"
- company_br_vinland_fishing_company: "Haffangfélagið"
- company_br_early_swedish_resource_company: "Norrlandska Gruv- och Skogsbolaget"
- company_br_bavarian_beer: "Bayerische Brauerei"

- Limited various companies to their intended tags.

## Goods

### Prestige Goods
- prestige_good_br_ely_silk: "Auriloma Silk"
- prestige_good_br_new_world_pine: "New World Pine"
- prestige_good_br_new_world_fur: "New World Fur"
- prestige_good_br_prestige_copper: "Kopparklimp"
- prestige_good_br_prestige_beer: "Königsbier"

## Treaties
- Added an ERE–Elysium trade treaty.
- Mass migration now requires active trade and Elysium to have mass migration status.

## Production Methods & Tech
- Replaced all placeholder icons with unique icons.
- Added 6 new Tier 1–2 technologies in the production tree.
- Added and adjusted various techs and production methods.
- Replaced many tech modifiers with production methods.
- New unique techs added:
  - Chinese Luxuries
  - Steppe Horse Traditions
  - Indian Luxuries
- Balanced starting techs for some countries.

## State Traits & Modifiers
- Added: state_trait_ethiopian_highlands
- Fixed and adjusted various state traits.
- Adjusted Greenland, Ontario, and Nunavut "prime land" regions; added fish and whales.
- Added more silk and wine to Elysium’s map data.
- Added more food industry buildings to better balance the world economy.
- Adjusted active PMs to utilize new early traditional production methods.

## Balance Changes
- Rebalanced various modifiers (generally lowered buff/debuff values).
- Slightly increased incorporation time for non-core culture states.
- Made the Palaiologos Italy reform slightly easier.
- Rebalanced ports to reduce early merchant marine excess.
- Added Dalmatia as a releasable nation.
- Updated trade buildings.
- Moved `br_romaioi_india_company` to a directly chartered company of the BR.
- Buffs for Ming.
- Minor EOC population adjustments.
- Added `hostile_climate_colonization` tech to more countries.
- Adjusted trade modifiers down slightly.
- Slightly increased Indian cotton presence.
- Reduced `traditionalism` state_market_access_price_impact from -15% to -10%.
- Lowered prestige of ERE monuments (they start with 3).
- Slightly increased population in North Rhine.
- Changed Chartered Company countries to Corporate Government type from Presidential Republic.
- Linked various unlinked Chartered Companies back to their home country's trade companies.
- Adjusted Frankish pops in Francia.
- Adjusted Serb pops in Bosnia.

## AI Changes
- Updated `br_ai_defines.txt` to increase trade.
- Increased AI neutrality to reduce frequency of global-scale wars.
- If both Aegypt and the Basileía Rōmaíōn are AI, Aegypt will peacefully become a protectorate.
- Aegypt player can choose a decision to avoid war.

## Localization Changes
- Renamed "Shiberia" to "Seihokudō".

## Misc
- Disabled dynamic naming by default (conflicts with custom mod names).
- Added new modifier types: tea and dye mult.
- New logo for Medici Bank.
- Slightly resized VOC logo.
- Removed unused logos.

## Bug Fixes
- Fixed various treaty ports.
- Fixed and adjusted multiple society tech modifiers.
- Miscellaneous error fixes.


# Update 139.

## Treaties
- Revamped various treaties from basic trade/foreign investment rights to Treaty Port(In places where the Port was already owned by said tag)
- Also added in some resource exchanges in treaties instead of trade rights.
- Update 04_ere_treaties.txt, these treaties are meant to go in the opposite of the intended direction
- removed foreign_investment_rights from all the starting treaties because they ai appears to hate giving and receiving it and more likely to cause cancellations

## Production Methods and Tech
- Early Mining added as a new option for all mine types that doesn't require tools. Very good for markets that do not start with access to a good supply of tools but not efficient once tools are available.
- Renamed Picks and Shovels to Improved Mining Tools
- Locations with little to no tools given Early Mining to help with the Global tool shortage
- hand tools made necessary for the improved tools mining and agro method
- renamed from Hand tools to Improved Hand Tools

## New Decisions
- Decision for Cahokia to submit to Elysium in exchange for good relations and protection.
- Added a decision for Aegypt to submit to Basileia Romaion to avoid war in exchange for good relations and protection.
- Added a decision for Basileia Romaion to transfer Emporikē Hetaireia tēs Indikēs to Basileia Romaion from Aegypt once Aegypt is their subject.
- decisions to take Aegypts colonies as Basileia Romaion if Aegypt is your subject.
- various decisions that were limited to certain tags have been opened up to more nations that meet the requirements
- refactored, fixed and additional decisions for Afrika and Aegypt
- added three new decisions for Armenia each with an associated event that are about moving your Capital to Karin, back to Ani or to Yerevan
- New decisions for Russia to make tributaries of any Rus countries that Tartaria subjugates from PLC. 
- Various QOL adjustments to BR decisions

## Journals
- added journals to get Afrika and Aegypt homelands

## Events
- Added two new opening events one for GEO and one for ARM
- The event to get rid of Thema deterioration is supposed to fire while getting rid of serfdom but doesn't always fire so I switched it to just happen at a certain date.
- Various QOL adjustments the BR Exarchate events

## Admin Buildings
- Made Nanjing Beijing and Delhi use pm_horizontal_drawer_cabinets to make their local paper factories profitable and get more taxes from these locations
- added couple more admin buildings
- Gave TWT more starting admin buildings due to near 100% tax waste, brings it down to 20% tax waste

## State traits & Modifiers
Indochina forests
- Indochina forest state trait made into a hardwood modifier
- more natural harbors
- Update 11_east_asia.txt, decreased japans starting resources a bit
- moved the irregular buff to a different modifiers and toned down the province defense of Native Conscripts buff.

## other balance changes
- Adjusted Georgia and Armenia military formations
- few more pops for cahokia
- more iron mines in asia
- adjusted certain eastern trade countries overlords ai to give any states they get in the indies to their subject
- light re-balance of various modifiers
- Added a few more pops to Armenia and Georgia
- various pops starting loyalty re-balanced
- Removed El

## misc
- improved various decision descriptions
- removed a duplicate recently conquered modifier.
- New modifiers for ARM/GEO
	- New themed Military modifier to replace the generic thema one.
	- Also gave Pronoia modifier
- Integrated various Georgian suggestions from skep17
Gave the ere armies more Thematic names get it Carl more THEMATIC 



## Bug fixes
- Add various missing localizations
- Update br_society_1836-1936.txt, fixed missing charters and other additions from the society tech
- Fixed scope bug in br_assimilation_effects.txt
- fixed ERE naming decisions not changing the name because the dyn name priority was to low
- fixed the event disappearing after selecting them because old var's were not being removed properly
- added a new decision to change the name back to default

# 🛠️ Update 138 – Total Resource & Balance Redux

## 🧾 General Improvements
- **Treaty Fixes**: Corrected treaties that were reversed from their intended direction.
- **Increased Tax Capacity** from administrative buildings.
- **More Administrative Buildings in Asia**:
  - China, Northern India, Java, and several Asian capitals now start with more admin buildings.
- **Reorganized Administrative Buildings**:
  - Most start with `simple organization`.
  - Added additional admin buildings and **lead mines** where appropriate.
- **Modded Trade**: Manually enforced more trade routes and interactions.

## 🌍 Resource & Economy Overhaul
- All mined resources are now **discoverable** over time.
  - Enabled `discoverable_resource` for **Iron**, **Lead**, **Coal**, and **Sulfur**.
  - Players start with fewer known resources and uncover more throughout the game.
- **Cotton Expansion**:
  - Added more cotton to **India** and **Persia** to help with the global fabric shortage.
- **Ownership Adjustments**:
  - Modified ownership ratios of various buildings.
  - Added additional **iron mines** to **Northern Europe**.
  - Revised ownership of some **ports** and **trade ports** globally.
- **Further Building Adjustments**:
  - Increased numbers of **paper**, **tools**, **lead**, and **iron** buildings worldwide.
  - **Holland** receives 100,000 new pops to offset major worker shortages.
- **Generic River Trait**:
  - Introduced a new **Generic River** state trait (applied to Bosnia for now).

## 🪓 Production & Industry
- **Hardwood Economy Focus**:
  - States producing artillery, small arms, and military ships now emphasize hardwood usage.
  - Increased hardwood bonuses on state traits to reduce AI reliance on softwood.
- **Artillery and Small Arms** production increased to combat global shortages.

## 🏛️ Government & Law Updates
- **Frontier Colonization Law**:
  - Aegypt and Afrika now start with `law_frontier_colonization` being enacted.
- **Palaiologos Events**:
  - BYZ AI will now choose the non-revolt option in the Themata decision event.
- **Palaiologos Reforms**:
  - Fixed broken separatism journal in `br_palaiologos_reforms.txt`.

## 🏢 Companies & Prestige Goods
- Fixed bugs and optimized building types across various companies.
- Created two unique **luxury clothing** icons:
  - One **gold-themed**
  - One **purple-themed**

## 🛡️ New Content
- **Hanseatic League**:
  - Added as a formal **trade company**.

## ⚖️ Balance & AI Behavior
- **Market Access Debuff**:
  - Applied `small_state_market_access_price_impact` to:
    - Rainforests
    - Mountain ranges
    - Very remote regions

## 🤝 Diplomacy & Treaties
- **PLC (Poland-Lithuania)**:
  - Trade pact upgraded into a **defensive pact** to prevent early-game collapse.
- **Muscovy–Roman Treaty**:
  - Romans gain trade/investment privileges in exchange for military support.
- **ARM/GEO & WAL/MOL**:
  - Pacts now include mutual **trade rights**.
- **Ausurias–HRE Agreement**:
  - Military assistance from HRE in return for **trade and investment access**.

## 🏛️ Eastern Roman Empire Updates
- **Flags & Governments**:
  - Added missing **communist flag**.
  - Updated government titles for greater historical/thematic accuracy.
- **Dynamic ERE Names Redux**:
  - **Monarchy**: Main name added.
  - **Republic (Upper-Class Voting)**: New **Senate** title added.
  - Renamed all other government variants for consistency.

## 🌎 Regional Fixes
- **South America**:
  - Updated `07_south_america.txt`: Amazonian states now properly affected by **malaria**.

## 🐛 Bug Fixes
- **Modifier Duration (v1.9 Compliance)**:
  - All `length_modifier_time` values now use **days**, not months, unless numerically specified.

---

# Update 137

- companies and prestige goods
	- reworked the mods companies
	- added new textiles companies for Venice and ERE.
	- added four new prestige goods; new luxury clothing prestige goods for the Venetian and Roman companies and also added a prestige silk for the Roman,Venice and Genoa trade companies.
	- I gave all the other mod companies a generic prestige good for now.
	- moved a lot of the company building types to extension buildings
	- converted and resized all the company logos and added some new ones.

- South American Decentralized merged
	- After my earlier merges we got down to 424 which is the max amount before the game lags. That means if a bunch of revolts were to happen prior to any annexations the game would start to lag and stutter.
	- This gives us the nessisary space for futher world building
	- nativized the names all meaning Culture tribes or Tribes of Culture except for Amazon because it seems there is no dominant language that I could find.

- recolored the maps water to appear more blue less redish especially on the great empires map. Map generally should be a tiny bit brighter idk. 

- fixed company HQs not showing up
- updated some diplo pacts to treaties
	- made scripted effects for the treaties, to avoid repetition
- fixed tech bugs
- Lots of other 1.9 bugs fixed




# Update 136

- Fixed an issue where navies were not applying blockade.

- Rebalanced the Economic Dependence debuff to improve gameplay pacing and reduce harshness in managing subjects.

- Merged several decentralized nations to reduce country count and avoid hitting the new 1.9 data structure cap
	- This means we didn't need to merge all of Africa
	- However, we may introduce a game rule in the future that allows full Africa merging as an option.

- fixed random bugs



# Update 132 Patch Notes

## Poznan Conference
- Added a new JE for North German Confederation,  the "Poznan Conference" with multiple events,
 where the north german confederation and the Commonwealth hold a conference to settle the north german claims over the baltic.
 As the north german confederation you can demand certain territories and offer the Commonwealth diplomatic agreements in return.

## Stettin Conference
- Added a new JE for North German Confederation (similar to the Poznan Conference),  the "Stettin Conference" with multiple events,
 where the north german confederation and Sweden hold a conference to settle the north german claims over the baltic.
 As the north german confederation you can demand certain territories and offer the Swedish diplomatic agreements in return.

## New religions
- Added multiple new religion with the ability to convert to them
	- Celtic
	- Finno Ugric
	- Akom

## Events
- Set up Emporikē Hetaireia tēs Indikēs opening event.
- If Mughals and Maratha are both AI and go to war Emporikē Hetaireia tēs Indikēs gets an event to get involved and help one side or the other in exchange for a good chunk of land.
- Set Up starting event for Elysium and Antipódeia
- The railroaded event chain that causes the scripted war between ERE and Aegypt will now only happen if Aegypt is AI. This is so playing Aegyptios is a better experience for the player.
- Continued working on flavor events, Added VEN,GEN,LOM,TUS,ANL and partially PAP&NET
- Updated all the events that added hidden effects by moving the effects to the immediate instead of the option.
- Fixed Various bugs and made improvements to the Anatolian and Pontic Revolt events.
- reorganized the main event file
- Starting rewriting the Palaiologos and Exarchate events

## Journals
- Replaced lots of the generic placeholder journal descriptions with proper flavored descriptions.
- Simplified this journal so you can complete it with just Tenant farming and Agrarianism if you want.
- Added another opportunity to remove the br_modifier_corrupt_pronoia debuff and have the themata event which is supposed to fire during law enactment phase but if the law passes too quickly the event won't fire.
- I lowered the requirement to finish the Aegyptian Exarchate Journal.
- Improved the descriptions of most Palaiologos Reforms Journals and Generic Journals

## Character changes
- New Land Reform Character IG
- Few commander trait adjustments

## Government changes
- Gov titles updated 
	- Cleaned and better organized our Gov Titles and made some new ones.

## Country Changes
- Renamed Emporía Erythrás Thálassas (br_romaioi_india_company in the code) to Emporikē Hetaireia tēs Indikēs. Indian Trade Company in English.
- Gave them an unique Government: Chrysoboulleios Hetaireia meaning “Chartered Company” or more precisely:
“Company established by chrysobull (imperial gold-sealed decree)”
- New Flag and Coat of Arms for the new government.
- Indikēs added as formable and releasable.

## Balance changes
- Added a small amount of prestige to financial centers and company headquarters.
- removed the starting Mughal war.
- Added an invisible AI decision that will start a kerfuffle in India if both Mughals and Marathas are AI.
- br_romaioi_india_company adjusted pops and formations
- Apoikoi wealth increased to improve immigration attraction and gdp.
- The railroaded event chain that causes the scripted war between ERE and Aegypt will now only happen if Aegypt is AI. This is so playing Aegyptios is a better experience for the player.
- Added cultural_acceptance_base requirement to the accept culture decisions.
- Added a new debuff modifier 'Echthròs tou Thronou' which is active until you restore your authority over Aegyptus and force the Komnenoi to recognize your legitimacy
- Reorganized which journals you start with at game start to include the Aegypt one
- Slight adjustment to which pop types are loyal or disloyal at campaign start for certain nations.
- Standardized the state/country religion modifiers
- removed the weird peasant consumption modifiers
- gave stock exchanges an expected sol debuff
- removed Elysiums most Western claims and other places it didn't make sense.
- removed a few other random claims
- added a couple minor claims to certain places
- Slight increase to HRE prestige
- Lots of minor pop adjustments


## AI changes
- Added a couple AI defines encouraging AI to be more likely to make peace if bankrupt or near bankrupt.
- Added triggers and variables to prevent these AI_only decisions from firing more than once.

## Localization changes
- Renamed Colonial Chinese to Jiazhouese #formerly Huáqiáo
- Renamed Colonial Japanese to Kaigai Nihonjin #formerly Kōkaijin and Kaitakusha
- Further improvements to localization organization and descriptions

- This effect does nothing for now. It will override eocfm_specific_country_setups_effect in eocfm to match BR's starting config.
- Fixes dozens of bugs from log.
- Few minor country color tweaks to no major countries

# Update 131 Patch Notes

##Eastern Orthodoxy Content Update
-Rekeyed the scripted trigger "eocfm_is_eastern_christian" to "eocfm_is_eastern_christian_trigger"
-Replaced all instances of "country_has_state_religion = rel:orthodox" with "eocfm_is_eastern_christian_trigger = yes"
-Reduced event background resolution (25MB per background was overkill)
-Updated event window reference & gui_window keys
-Implemented eocfm_integration_monthly_pulse and moved integration events/effect to it
-Implemented eocfm_mending_monthly_pulse and moved mending event to it
-Added missing effect to increment Mending Progress
-Fixed schism removing 800 instead of 500 caesaropapism in the script value
-Adjusted some text positions in the widget
-Fixed a broken loc string in eocfm_rome_reclaimed
-Fixed several outdated tooltips & improved on several others

##Character Changes
- New Land Reform Character IG

##History changes
- Started Law Enactments
	- BYZ,ARM,GEO,PLC,TAT all start with laws being enacted.

- Various characters have had the base game land reformer ideology with the new mod version.

## Law Changes
- Update br_economic_system.txt
	- Added some more pop political strength to laws
- Update br_governance_principles.txt
	- Added some more pop political strength to laws
- Update br_policing.txt
	- Some adjustments to policing inspired by BPM.
- Update br_distribution_of_power.txt
	- Added some more pop political strength to laws
- Added some bureaucrats political strength to autocracy.
	- increased capitalist for oligarchy
- Update br_bureaucracy.txt
	- Slightly Increased some pop political strength modifiers
- Update br_trade_policy.txt
	- Lowered the Isolation spread debuff to -25% from -50% base game is -15%

Update br_palaiologos_reforms.txt
- tweaks and adjustments for the reforms more in the future.

Update ERE Minors.txt
- removed duplicate laws from the ERE minors.

Delete com_gui_objectives.gui
- CMF has fixed the rules not applying so this file is not necessary.


- Create Common_content.txt
	- Start of my effort to catalog all the content and base game changes in BR.



# Update 130 Patch Notes

##Palaiologos reforms reformed.
- Improved all the journals
- Added two new journals
- Added all the journals to the country file instead of the event so that prestige isn't higher than intended at game start
- fixed various bugs that made some unabled to be completed 

##Liberty Desire
- Removed liberty desire from most modifiers but increased the one attached to the independence journal from .10 to .25

##Update 02_br_global_pops.txt
- Decrease the amount of loyalists at start of campaign.

##More ERE name options
- Added Basileía tōn Rhōmaíōn and Rhōmanía to the name change decisions.

##Update br_code_static_modifiers.txt
- Lowered Military and Prestige penalty for bankruptcy added small radicalism debuff.
- Added some discrimination radicalism to the recently conquered state modifier.

##endonymization to Exellēnízō
#Georgia renamed
- Sakartvelo name when independent
- Kartuli adjective when independent
- Ibería name when subject of BR
- Iberikón adjective when subject of BR
- Georgia will be known as such if a subject to anyone other than BR.
#Armenia renamed
- Hayastanname when independent
- Haykakan adjective when independent
- Armeníōn name when subject of BR
- Armenikoí adjective when subject of BR
- Armenia will be known as such if a subject of anyone other than BR.

##Updated thumbnail and screenshots.

##Update 05_br_global_rules.txt
- Some Fixes and Improvements to the Abbasid game rule

##Antipódeia Localization
- I did not update Antipódeia localization when I changed the name some months ago have changed its reference in all english localization. 

##Dynamic Localization
- Changed many instances of Basileia Romaion to use [ROOT.GetCountry.GetName] instead incase you have an alternative name for the ERE.

##Update ere_minor_military_formations.txt
- few frigates for the ERE subjects

##fixed egypt events triggering twice
-fixed egypt events triggering twice, because the egypt je was being added twice
-fixed a scope error in the veiled_exarchate.1 event

##Hellene
- Added Hellene culture as part of eventually cultural struggle mechanic for ERE.
- Disabled the archaeology journal plan to incorporate it into the struggle in the future.

##Fixed various Localization bugs

##Create com_gui_objectives.gui
- This is an older version of the objectives gui of the community mod framework. The new version prevents changing from default rules.





#Update 128 Patch Notes

	# Patch Notes

## Orthodox Scripting Update
- Refactored Orthodox GUI to remove dependency on fullscreen_block_window  
- Added support for (and dependency on) the Community Mod Framework  
- Updated script to EOCFM 1.0.1  
- Added dedicated /replace localization folder for BR to minimize future upkeep issues  

## Russian Flavor Text
- Added unique flavor text for Novgorod and Muscovy  
- Added semi-unique flavor text for Smolensk, Ryazan, Tver, Yaroslavl, and Nizhny Novgorod  
- Adjusted flavor text for the centralized American Natives  

## Colonial Flavor Text
- Fixed Antipódeia naming in flavor text to reflect renames in the region  
- Added semi-unique text for Genoese and Venice Africa Companies  
- Added unique flavor text for South Africa, Nieuw Holland, and Ostend Company  

## Genoa Flavor Text
- Added unique text for Genoa  
- Fixed Florence name change  

## Commonwealth Flavor Text
- Added unique flavor text for the Commonwealth and Prussia  
- Added semi-unique flavor text for Polotsk, Pskov, Turov-Pinsk, Kyiv, Chernigov, and Galicia-Volhynia  
- Fixed mistakes in Tartaria flavor text  

## Buildings & Monuments
- Incorporated Corinth Canal and Archaeology features from GotB (still testing and tweaking)  
- Reworked the Hippodrome and Great Palace using a mix of current, GBBF, and new Production Methods  
- Imported Building/Monument components from GBBF (with Alexedishi’s permission) to improve monuments  
- Changed Versailles to use the default palace production methods  
- Increased Ravenna releasable to include STATE_UMBRIA and STATE_ABRUZZO  

## Population & Wealth Adjustments
- Various population adjustments  
- Organized the population files  
- Increased wealth for a few nations  
- Improved some pops’ starting wealth  
- Increased wealth in Nanjing and Beijing  
- Created a couple of unique pop wealth scripts  
- Made Kanto wealthier to match other capital regions  

## Modifiers & Balance
- Added new modifier: "Wing Hussars" (Lancer buff)  
- Various modifier adjustments and changes  
- Lowered naval power projection debuff from Latin Privileges to balance with Regionalized Navy  
- Changed generic modifiers to "generic & unsorted"  
- Added a couple of new modifiers  

## Military & AI Adjustments
- Improved Croatia and Dalmatia’s starting military formations  
- Mughals should no longer invade Tibet  
- Updated Romans’ AI strategy:  
  - Reduced targeting of the Papacy  
  - Starts fewer wars before war with Aegypt  
- Adjusted goals for Croatia and Dalmatia  
- Updated to allow colonies to declare wars  
- Gave Saxony a Guarantee from NSE  
- Gave PLC an obligation with HUN (should help against Tartaria)  
- Gave PLC a proper starting event (fixed previous issue)  
- Moved two PLC country modifiers to journal modifiers  
- Eastern Resistance JE will only appear if PLC owns Kiev directly  
- Updated Golden Liberty Journal description  
- Changed base game’s -50% morale/organization penalty for changing mobilized formations to -25% (less punishing)  
- Increased naval power modifiers for BR/China:  
  - BR: tied to their Naval Reform journal  
  - China: tied to country modifiers  

## Country & Culture Adjustments
- Gave Bohemia the correct Church IG name  
- Upgraded Flanders to a grand principality to align with similar HRE vassals  
- Changed Polish culture color to light red (similar to their flag)  
- Changed Misri culture to light green (aligned with other Arabic cultures)  
- Made Syria and Aegypt starting rulers Romaioi culture  
- Adjusted various country colors:  
  - Darker variants for South American and Central African colonies  
  - Aegypt slightly more red to match its flag  
- BYZ AI will release Ravenna if they own it  
- Added the Dalassenos family to the restored Syrian Exarchate  

## AI Behavior & Events
- Venice joining Aegypt’s side now gives them a War Reparations CB  
- Created a new AI event chain causing a "kerfuffle" in the Balkans  
- AI will engage in the Balkans conflict  
- Decreased AI aggression towards subjects to slow down consolidation (may adjust later)  
- Adjusted input to reduce Roman aggression before its scripted war is completed  

## Map & Borders Adjustments
- Adjustments to Dongola’s borders  
- Tweaked Bosnian provinces  
- Split the state of Ingria:  
  - Gave part to Pskov  
  - Adjusted buildings, pops, and formations for Pskov  
- Easternmost part of Pskov State given to Smolensk  
- Renamed St. Petersburg to Nyenschantz (previous settlement before its founding, feedback welcome)  

## Fixes & Localization
- Updated decision localization (needs better integration or removal in the future)  
- Updated event localizations  
- Updated IG descriptions  
- Updated Thumbnails  
- Fixed Patriarchate Rises crash  
- Fixed a couple of missing modifiers needed for EOC events  
- Renamed PLC file  
- Updated br_aegyptian_crisis_events.txt  
- Fixed AI prioritization issues for Rome’s wars  






# Update 127 Patch Notes

## New Features
	###Religion Swap
		- Reworked how a country can change religion
		- Made a template for the decision to switch religion that can be easily used to add more decisions to switch to other Religions
		- Added a JE 'Converting Religion' around converting your population to the new relgion
		- Added 5 new events around the new JE
		- Added 4 new modifiers for the new JE
	### New Military Law: Mixed Army
		- Added 'Mixed Army' as a transition between Peasant Levies and Professional Army  
		- Assigned to: Yuan, ERE, NSE, ELY, KAP, MES, HUN, RAJ, MHR, JAP, PER, PLC, MUS, SER  
		- Updated mod ideologies to reflect the new law 

##Balance
	### Buildings
		- Improved Wallachia buildings  
		- Added 1 Dye Plantation to Lebanon  
		- Moved some factories around Venice and her subjects for specialization  
		- Adjusted Horse Drawn transport to more vineyards  
		- Decreased tobacco plantations globally  
		- Increased vineyards in Italy, decreased Savoy’s unprofitable industries  
		- Adjusted some ERE pops  
		- Gave Skopje lead, sulfur, and gold potential based on real-world resources  
		- Adjusted ERE monuments  
		- Adjusted tier 1 tools for grain farms to improve profitability and reduce labor demand  
		- Adjusted sugar output from fruit and grain losses to stabilize food supply  
		- Gave Dutch, Flemish, and Italian Wheat/Rye farms tools, apples in the Netherlands, and citrus in South Italy  
		- Added trade routes to balance new demand  
		- Rebalanced economic production methods for wheat, rye, and ranches  
	### Military Adjustments
		- Adjusted military laws, reducing political strength bonuses  
		- Gave Yuan 25 more Irregular Infantry  
		- Created new military modifiers for Persia and Mughals  
		- Improved military formations for multiple nations  
		- Balanced tribal society law for SE tribal nations and Kurdish princes  
		- Fixed Native Warbands modifier with a small irregular buff  
		- Added Military Unit Modifier type definitions  
		- Replaced Garibaldi with a random Italian fulfilling the same role  

	### Modifiers & Misc
		- Updated formable countries with newer PDX additions  
		- Added minor malus to great/major powers and bonuses to minor/insignificant powers  
		- Moved population growth stabilization to decentralized country rank instead of the native warbands modifier
		- Adjusted Bohemia’s AI goals and diplomatic relations with the Dutch and Swedish  
		- Changed Hyperborea, Apaleisia, Aithaia, and Kykladia to colonial from unrecognized  
		- Increased urbanization effects of Magnificent and City of Worlds Desire  
		- Moved certain modifiers to the tribal society law  
		- Added political movement modifiers to static modifiers  
		- Adjusted Fallen Eagle journal debuff  
		- Adjusted colony dependence on overlords to slow absorption  
		- Added a small bonus to subsistence farming for colonies.
	### AI & Strategy
		- AI overlords will be less aggressive toward player subjects.
		- Improved strategy adjustments for various nations  

## Fixes & Adjustments
	- Improved Marathas starting tech tier to be in line with Mughals and Chola
	- Increase arable land for pacific island chains.
	- Added Apaleisia claims to the states it starts with colonizing
	- Added Russian claims to western Siberia.
	- Fixed bugs and spacing issues  
	- Adjusted East Asian military formations  
	- Fixed a bug related to the overlord canton in flag definitions  
	- Adjusted church and state laws to align with mod standardization  
	- Increased North Italians’ home affairs institution to level 2  
	- Updated province changes to match new PDX modifications  
	- Increased arable land in the Caribbean and Australia
	- Replaced most of the Rice in the Americas with Maize since they employ less workers per farm I slightly increased arable land in the affected states.


# Update 125 Patch Notes

## Territory and State Adjustments
- Made Aztlan states furthest from her core unincorporated.
- Minor adjustments to Madagascar.
- Added 4 decentralized tags to Central America.
- Gave coastal territory to Aztlan and inland jungle to decentralized tags.
- Added 7 new decentralized tags to Southeast Asia.
- Found that Amur was duplicated in state files; removed the invisible duplicate owned by Siberia.
- Transferred Dutch Africa trade post to Dutch West Indies, aligning with their historical trade routes.

---

## Economic and Trade Adjustments
- **Trade Improvements**:
  - Added more trade routes to balance new good demands.
  - Added and removed buildings to keep resource levels balanced.
  - Added more trade routes, import/export priorities for countries with excesses and shortages.

- **Production Adjustments**:
  - Moved sulfite pulping and dye workshops to earlier techs to increase sulfur and dye demand earlier.
  - Rebalanced horse output to be less than sheep due to higher price and oversupply compared to fabric.
  - Rebalanced building PMs for ranches, wheat, and rye to better utilize new PMs.
  - Updated improved horse ranch to match grain cost and output of improved sheep ranch.
  - Lowered base level ranch meat production for better balance.

- **New Technologies**:
  - Added 3 new agriculture production techs.
  - Moved and adjusted production techs.
  - Adjusted production method unlocks to different techs.
  - Added resource icons and updated icons for production techs.
  - Created a new farm PM as an early version of soil enrichment for early fertilizer use.
  - Updated starting inventions to include new techs.

---

## Military and Strategic Updates
- **Military Unit Balance**:
	- Adjusted goods costs for military units:
	- Irregular Infantry & Hussars now require 0.1 Iron and 0.2 Wood cost for early weapons.
	- Line Infantry now requires 0.1 Lead for early ammunition.
	- Trench/Mechanized Infantry now have increased Clothes costs.
	- Lancers now use Luxury Clothes instead of regular Clothes—because those uniforms are fancy AF.
- **Military Formations**:
  - Created a custom naval formation for the HRE (12 Manowars, 20 Frigates) instead of defaulting to 30 Caravels.
  - Improved military formations for SER, MOL, WAL, HRE, OCC, MUG, and all Afghan minors.
  - Improved the armies and navies of Sweden, Netherlands, Flanders, Bohemia, and Saxony.
  - Added more ranches to Mughals, Yuan, Ming, Hungary, Burgundy, and Bohemia.

- **Modifiers and Buffs**:
  - Added a working adult ratio buff tied to literacy (10% at 100% literacy).
  - New military modifiers for PLC, HUN, and BOH.
  - New Andalusia modifier: **"Tolerance of the Book"** (drastically lowers conversion, improves culture acceptance).
  - Adjusted Sweden and Tartaria’s military modifiers.
  - Syria and Abbasids receive a **Porcelain buff**.

---

## Population and Balance Adjustments
- Adjusted global pop radicals/loyalists to work properly, allowing event removal for redundancy.
- Adjusted population working ratios for balance.
- Increased starting working adult ratio for certain cultures from **30% → 35-40%** for better early-game workforce.
- Sweden, Netherlands, and other low-pop nations now start with a more functional workforce, allowing for additional buildings and formations.

---

## Map and Building Adjustments
- Added small gold deposits to Europe based on research.
- Adjusted buildings in **Prussia, Poland, Serbia, Bosnia, Venice + subjects, and the Abbasids**.
- Adjusted Sweden and Finland’s buildings, moving some Swedish wood/iron buildings to Finland to allow more manufactories in the south.
- Added manufactories to **Bohemia, Netherlands, Saxony, and Flanders**.

---

## Fixes and Miscellaneous Updates
- **File and Formatting Fixes**:
  - Removed extra spacing from decentralized country files.
  - Fixed spacing errors in PMs.
  - Fixed PMs that lacked a main set, preventing random selections.
  - Fixed unfinished modifier in a journal entry.
  - Fixed incorrect setting for Cape Colony mine.

- **Localization and Naming**:
  - Renamed military bonus techs.
  - Added missing organic localization.

- **Miscellaneous**:
  - Removed accepted birth rate after testing showed no effect and errors.
  - Most world farms that started with **Soil Enrichment PM** were moved to the new lower-tier **'Organic Farming'** PM.
  - Adjusted Andalusian **religious tolerance** modifier.



### Update 124

# Patch Notes

## Economy and Trade
- **Demand Adjustments**:
  - Increased starting demand for sugar, spice, and everything nice.
  - More food industries starting with spiced food.
  - Added a tiny amount of sugar needed for spiced food.
- **Trade Improvements**:
  - Added more taxed goods to countries.
  - Added more import-export priorities to country files.
  - Added more trade routes.
  - Updated export priority for coffee and dyes for countries with large excesses.
- **Economic Modifiers**:
  - Gave Italian Stock Exchange a loan interest reduction modifier.
  - Gave Market Capital a small political strength bonus.
  - Increased tariff levels for Protectionism.
  - Put tariff modifiers on the Inward Perfection modifier.

---

## Military and Strategy
- **Army Adjustments**:
  - Increased army sizes for Mughals, Juan, Ming, Marathra, Korea, and Ming's vassals.
  - Increased max conscription centers in capitals, similar to barracks.
- **AI Strategy**:
  - Adjusted AI strategies for improved gameplay.

---

## Cultures and Populations
- **Population Needs**:
  - Added a tiny minimum population need for sugar and spice.
- **Culture Updates**:
  - Adjusted Arab pops, buildings, and trade.
  - Made all Turkic and Mongols have a horse obsession.
  - Renamed Mods Exarchate Bulgaria to Moesia and removed Bulgarian as a Primary Culture.
  - Removed Albanian as a Primary Culture for Dyrrachion.
  - Changed Afro-Dutch culture from German-speaking to Low Countries.
  - Renamed Afro-Arab to Zanji.
  - Added semi-generic flavor to Cahokia and Pueblo.
  - Added Saxon homelands to Silesia and Posen.
  - Added Frankish homelands to Saxony.
  - Removed Baltic homelands from Posen.
  - Added Kykladian as a new subculture of Elysian.
- **Missing Modifiers**:
  - Added missing culture modifiers.

---

## New Additions
- **Technology**:
  - Added sewage tech.
- **New Nations**:
  - Cahokia (new country).
  - Hyperborea (Varangian buffer state between Elysian and Vinland).
  - Kykladia (small island chain in modern-day Bahamas).
- **New Cultures**:
  - Cahokian.
- **New Gameplay Features**:
  - New journal for the West Indies.
  - New modifiers for controlling West Indies trade and piracy.
- **Characters**:
  - Added new characters for new Elysian tags.
- **Naming Options**:
  - Added a new naming decision for BR to change the name to Romania.

---

## Map and Territory Changes
- **Map Pass**:
  - Began a pass on the map data files.
  - Smoothed Japanese New World colony borders for a cleaner look.
  - Adjusted map data prime land to reflect differences.
  - Cleaned up owned provinces for consistent formatting.
- **Native American Nations**:
  - Added states, pops, buildings, and formations to optionally playable Native American nations.
  - Merged MSC into Creek to form a larger tribal nation.
- **West Indies Adjustments**:
  - Gave Dutch West Indies and Ostend Company small islands in the West Indies with:
    - One arable land for sugar plantations.
    - A small anchorage port.
    - ~5k pops each.
- **Protectorates**:
  - Apalesia and Aithaia made protectorates and changed from colonial to unrecognized.
  - Changed LAN to a colonial tag to function as a chartered company.
- **Renaming**:
  - Renamed various strategic regions.

---

## Gameplay Adjustments
- **Production Methods**:
  - Removed grain cost from base horse PM to align with the base sheep PM.
- **Fixes**:
  - Fixed issues where AI decisions would target the player if they subjugated the target.
  - Fixed states and pops.
- **File Organization**:
  - Renamed `01_global` to `01_global_states` for state effects.
  - Reorganized BR country definitions, moving files with `br_` to BR definitions.
  - Moved events from country files into a global file for easier management.

---

## Aesthetics and Flags
- **Flags**:
  - Scaled down flags to reduce in-game space usage.
  - Adjusted flag widths to prevent squashed appearances after scaling.
- **Coat of Arms**:
  - Updated Coat of Arms for Ven and Gen subjects.
  - Added new CoA for TWT and NAH monarchies.
  - Minor CoA changes.
- **Thumbnails**:
  - Updated thumbnails for consistency.


### Update 123 'Antipódeia pros Apalaísia'

##Clothing rework
- Reworked the vanilla portrait files to make the mod cultures make use of more diverse set clothing assets based on various dfferent factors.

##Unique flavor text and more objectives nations
-Added North Sea Empire and Aigyptios to the Economic Dominance Objectives selection screen.
-Added Tartaria and Al-Andalus to the Hegemony Objectives selection screen.
-Removed Elysium from the Egalitarian Society Objectives selection screen.
-Added New Angland, Antipódeia, and Anahuac to the Egalitarian Society Objectives selection screen.
-Added unique flavor text to the following nations; Mali, Elysium, New Angland, Aigyptios, North Sea Empire, Milan, Venice, HRE, Tartaria, Al-Andalus, Persia, and Australis.
-Added semi-generic custom flavor to; Parma, Lucca, Modena, Maya, Anahuac, and Tawantinsuyu.

## Area Ravamps

##Elysium and Vinland
#New Countries added
- Added Apaleisia Republic and Mount Aithaia as new Elysian Tags semi independent from game start.
- Added multiple new sub cultures for Elysian and Vinlander cultures.
- Renamed Neo Hellenic to Plethonist updated our lore document wth the details. 

#Tartaria
- Revamped the Tartars Eastern border all the way to china. Pops, buildings and formations updated for the region
- Edited Tartaria's western states provinces with russia giving a dozen or so more provinces to a few of the russian countries.
- Changed most of the Turkmen in Tartaria into Tatars for game performance

#Australis renamed to Antipódeia
- Tuned the borders of all the colonies to be more coastal less inland.
- Updated all the Hub names
- Updated the Antipódeia map data made the coastal provinces "prime land" so theres more arable land along the coast and less in the interior
- updated pops and buildings.
- Added New Holland as dutch Colony
- Added some more buildings in New Holland
- boosted New Hollands capital buildings and pops.
- Added few starting mines to North and West Antipódeia so their was an obvious reason for settling the area.
- Changed Antipódeia colonial law to frontier from resettlement and discovered it can now colonialize land not connected to capital previously could not.
- New Journal for Autralis and rewrote the Vinland/Elysium one all the same right now but can individualize later

##Scripted features
- Created a script for colonial nations that works similar to the slave trade one, that auto assimilates European descendent peasants into the colonial culture. I also created one so if a colonial culture pop moves back to Europe they ditch their colonial culture and go back to their mother culture. Added a bunch of safety rails that make it only effective in the colonial cultures primary region etc
- added/updated some scripted mass migration events
- created new settler events 
- Added Colonial Heritage for colonial cultures this is used in the assimilation script to not assimilate colonial cultures into other colonial cultures via the script normal methods still will assimilate colonial cultures into other colonal cultures.

##Modifiers
- Added modifiers for the following techs; Gunsmithing (+2 Army Offense), Sextant (+5% Convoy Defense), Careening (+3 Navy Defense), Field Guns (+2% Kill Rate), and Currency Standards (+10%  Building Cash Reserves, +5% Minting)
- Updated and added a few other modifiers 

##Decisions
- Updated all the annex decisions to require the subject not be a player.
- Added some more ai triggers to decisions
- Change Religion decisions changes

##Other Balance adjustments
- Switched the generic offensive and defensive national modifiers to unique techs but made them less powerful overall. removed the persian modifier from files and kept the other two in the files.
- gave officers and soldiers more base political strength.
- Genoa added as a releasable also ai decision to release it
- Gave Genoa and Venice a 48 month truce to give Venice and chance since they are usually already on the back foot against Milan.
- changed some migration laws doesn't affect mass migration.
- minor diplomacy tweaks
- Adjusted devastation to go up and down 1/3rd as fast.
- Added a little starting Devastation to India and China due to their ongoing major wars.
- lowered colonization speed modifer buffs, removed colonization from some countries starting laws but made sure their IGs have a bonus to passing it.
- added ranchng thoughput bonus to industry banned law.
- improved the autonomous march modifer
- removed colonial fever country modifier and replaced it with a better state modifier "colonial opportunity.
- added some debuffs to the Italian buff modifiers.
- added a tiny modifier to mercantilism tech
- lowered base bureaucracy for trade routes to 12 from vanilla cost of 20
- other tweaks to improve trade profitability 
- added more starting political movements to the ere.
- slowed down debt slavery as debt slavery is much more widespread in the mod at start and the colonies with slave trade import so many slaves so fast and it leave less jobs for other immigrants.
- Gave the more trade based power blocs start with Economic Imperialism principle. Gives the leader a manufacturing boost but decreases members.
- Updated the Church and state law to be similar to the latest pdx version to allow conversion to lowest acceptance 
- slightly lower pop growth
- slightly slowed war
- added many more secret goals to ai
- moved MAI to HER trib from KAB.
- Gave BUK couple more provinces that made sense
- Updated Political Movements.
- Updated some rulers Ideologies to make sure they start with the correct Movement.
- Updated the Immigrant script to not assimilate other Colonial cultures.
- Renamed Mande culture to Mandinka and made their color more gold.
- Further work on New world pops and buildings
- New Decision for ERE to give black sea colonies to taurica
- Secret goal adjusts
- Italian diplo adjusts


##Character Names
New Anglo-Saxon/New Anglander Names
For the Anglo-Saxon and New Anglander cultures;
-Added 86 Male names
-Added 69 Female names
-Added 24 Noble last names
-Added 26 Commoner last names
-Started condensing name lines

##Organization stuff
- moved NET and FLA from HRE diplomacy to a new Lowlands diplomacy file added DEI and br_new_holland.
-Continued compression of 00_cultures.txt, removed 2,579 lines.
- slight clean up of country files
- further country law tidying and balance pass
- Reorganized coat of arms files
- moved unused textured emblems to the unused folder.
- reorganized the defines files
- Fixed the Japanese assimilation script
- Made Afro cultures also Colonial cultures and made them not auto assimilate as they had already been auto assimilated.
- few coat of arms updated.
- moved more unused coat of arms to the unused folder
- hashed out the now defunct hre powerbloc identity.

##Bug Fixes
- removed the bugged HRE power bloc Identity moved them back to sovereign empire but created and gave them a new principle that does the things the identity did.
- figured out what folder to put the icon in for the forced trade access.
- expanded the immigrant script
- removed the left over historical UK characters.
- removed duplicate Godwinson in localization.
- fixed various  bugs and missing loc.
- Fixed 3 errors related to nations not being allowed to have Tribal Armies Law type
- adjusted pops in various areas to balance and fix bugs related to outdated amounts of certain pops since 1.7 ownership changes.



### Update 122 

##History/Map/Nation Balance
- Adjusted Majapajit
- Lots of adjustments in India added new trade ports Andalus, Oman and Dutch East Indies. Lot of new buildings owned by the foreign trade posts to represent their vast trade interests. Also good amount of pop changes.
- Similarly but less so in China, SE Asia, Afghanistan.
- Added 100s more starting trade routes.
- Created Custom Military formation for DEI.
- Adjusted Zanzibar borders
- Added grand port to Goa.
- buildings, state and pop adjustments
- buildings added and ownership adjustments
- some starting techs adjusted no more nations starting with general staff or percussion cap replaced with mandatory service/ military drill.
- New World South border tuning
- More trade routes
- Created Verona and Aquileia as Venice Subjects
- Some new interests so countries can have above trade routes.
- Added admin buildings to several countries that start with -100% bureaucracy. Should prevent early game bankruptcies by the AI
- Added claims in Algeria for all 3 Algerian minors, so any can easily form it.
- Added homelands for a few cultures in Iberia
- Added claims on those homelands in Iberia
- Broke off Spoleto as an Italian Subject
- Split up the Power bloc/Alliance and Economic Dynamic in Northern Italy. Milan and Florence are now their own power bloc, took some of the Italian minors and made them protectorates of Milan to connect their power bloc and make sure Milan can trade via the sea.
- Created 100s of new trade routes to facilitate their economies as well as the rebalance affecting the Venice/Genoa markets.
- Updated the Verona, Aquilenia, Spoleto and Benevento releasables.
- Moved a few buildings and pops around in Italy.

##Decisions/Events & Journals
- Fixed Tartaria reviving Khazer Khaganate decision will now given you Jewish Priesthood IG 'Kohen'.
- Fixed convert to Sunni decision will now rename IG.
- Fixed Tartaria Religious IG being called Sunni, will start as Tengri Priesthood.
- If you convert to Tengri will rename your Religion IG to Tengri Priesthood.
- Fixed Exarchate event for most situations
- new decision to go shitte
- three new decisions to expand ERE Vassals: ARM,MES, br_syria.
- some ere modifier adjustments
- some events/ decisions will have an ai and player version.
- Remove Latin Trade Privileges JE and decision will remove the Forced Trade Access for Venice and Genoa.
- Added generic JEs to some nations that made sense.
- Added a form Italy (north) JE

##Diplomatic Actions
- New Diplomatic Action 'forced trade access' works like a trade pact except it can't be canceled. Set up so certain nations can't embargo and have the keep their trade routes open despite terrible relations.
- Colony 25% from 50% and Chartered companies 10% from 50%. will provide less convoys to overlord. I want their ai to make their own trading empires and to be playable for players.
- Fixed EOCFM content not working for Basileia Romaion.

#Misc
- modifier adjustments
- new companies for OMA.JAP,TUS
- some IG modifiers adjusted
- lots of diplomacy adjustments
- benign error fixes, almost no fixable errors left.
- IG mod adjustments
- added Clothes, Luxury Clothes, Furniture, Luxury Furniture, and Porcelain goods modifiers
- Changed Japans modifier from Glassworks output to porcelain output
- Added Italian Craftsmanship to all Italian nations
- Added Fine China modifier to China and their Han Subjects.

#AI
- AI adjustments to goals, objectives etc.
- New AI only decisions/events
- Updated Italian AI goals and diplomatic relations
- Added AI triggers for north Italians to be more aggressive in forming Italy.

##GFX
- Coat of Arms for some Italian minors
- Known bug the new diplomatic action 'Forced Trade Access' has no icon. 


- Other Bug fixes



### 121

	- Adjusted majapajit
	- Fixed Tartaria reviving Khazer Khaganate decision will now given you Jewish Priesthood IG 'Kohen'.
	- Fixed convert to Sunni decision will now rename IG.
	- Fixed Tartaria Religious IG being called Sunni, will start as Tengri Priesthood.
	- If you convert to Tengri will rename your Religion IG to Tengri Priesthood.
	- Colony 25% from 50% and Chartered companies 10% from 50%. will provide less convoys to overlord. I want their ai to make their own trading empires and to be playable for players. 
	- Lots of adjustments in India added new trade ports Andalus, Oman and Dutch East Indies. Lot of new buildings owned by the foreign trade posts to represent their vast trade interests. Also good amount of pop changes.
	- Similarly but less so in China, SE Asia, Afghanistan. 
	- Added 100s more starting trade routes.
	- Created Custom Military formation for DEI.
	- Added generic JEs to some nations that made sense.
	- Adjusted Zanzibar borders
	- modifier adjustments
	- Added grand port to Goa.
	- Fixed Exarchate event for most situations
	- Improved Korea buildings
	- Gave Korea own market
	- added more trade routes
	- Added two new trade companies for Japan and Oman


### Update 120 'Christoúgenna' 12/25/24

	## Journal Entries & Modifiers
		- Added a JE for "Control over Baltic trade" includes a modifer active while you control the required states
		- Added a JE for "Control over the Strait of Hercules" includes a modifer active while you control the required states
		- Added a JE for "Control over Bosphorus Straits" includes a modifer active while you control the required states
		- Added a JE for "Control over the Klysma Canal" includes a modifer active while you control the required states
		- Added a JE for "Control over Persian straits" includes a modifer active while you control the required states
		- Added a JE for Papal States "Alms of St Peter" moved Papal Tithe modifer from country tab to JE.
		- Added a JE for Abbasids "Hajj" moved Hajj modifier from country tab to JE.
		- Improved the JE for "Control trade in the East Indies" includes a modifer active while you control the required states
		- Updated a few of the new JEs triggers, effects and modifiers

	## Miltary
	 - Added custom military formations for England, Ireland, Scotland, Wales, Finland, United Baltic Duchies and Pommeria. This will greatly improve their military and they should use conscripts now.

	##Map/history changes
		- Improved Persian borders at Dagastan and Southern Afganistan.
		- Adjusted diplomacy of a few nations
		- Improved Delhi's starting buildings
		- Gave West Indies and Andalus each a small Mid Atlantic Island 
		- Dutch East Indies have had their toe hold in Bengal returned. (1.8 I didn't quite finish the remap of India)
		- Andalus given a small treaty port in India.

	##Events
		- Improved the Frankish revolt event
		- Added a Bengal revolt event.
		- Added a Transylvania revolt event.

	##Decisions
		- Adjusted the requirements the Vineland Decision to annex the Norse New world Company

	##AI
		- Further work on the AI goals and objectives.
	##GUI
		- The Orthadox Gui will now full screen so lower resolution can see everything.

### Update 119 'Saturnalia' 12/24/24

## Journal Entries
	- Added a JE to help Elysium expand Westward.
	- Added a JE to help Vineland expand Westward.
	- Added a JE related to gaining independence available to all reorganized subject nations once nationalism is researched.
	- Added a JE for the east India trade companies to control the spice trade moved the modifier to the JE. This is available to any reorganized nation with an interest and foothold in one of the required spice states.
	- Added a JE for Tartara to expand Eastward into the Steppe/Siberia.
	- Added a JE for Japanese Shiberia to expand deeper into Siberia.
	- Added a JE for restoring Russia (Available to 'recognized' Russo-Ruthenian Countries)
	- Added a JE for Mughals to consolidate Northern India
	- Added a JE for Tartaria to Modernize and remove the Decentralized Khanate debuff.
	- Added a JE for Tartaria to stop Oppressing our Slavic and other minorities.
	- Added a JE for Persia to directly control Afganistan
	- Added a JE for Persia to directly control Central Asia
	- Added a Hungarian JE to annex Transylvania.
	- Added a JE for England to restore control over England if they gain independence.
	- Added a JE for HRE to conquer Aquitaine.
	- Added a JE for Armenia to restore its eastern borders.
	- Added a JE for Serbia to restore its borders.
	- Added a JE for Aegypt to control the Nile.
	- Added new modifiers to most of the new JEs
	- Added a JE for Colonial Subjects
	- Added a JE for New World Colonies
	- Added a JE for Africa Colonies
	- Added a JE for Merchant Republics
	- Added a JE for Colonial  Merchant Republics
	- Added a JE for Independent New World Countries
	- Added a JE dealing with Inward Perfection

	- Added AI triggers for aggression and state targeting towards the JE targets.

#Map/history changes
	- Created Kappadokía Pronoia (Is also ruled by Phokas and Mesopotamia will align itself with it)
	- Elysium has been struggling to attract migrants in 1.8 due to their starting religion. I switched their starting religion to Elysian Orthodox and switched the decision to go Hellenic to make it possible for them at the start of game this doesn't effect BR which doesn't get the decision until after the Olympics are founded.
	- Created a unique power bloc identity for the HRE.
	- Added a new Power bloc principle
	- Some subjects that don't have nationalism were given the independence JE at game start
#Other changes
	- Decreased the wage bonus primary culture received as it was bankrupting everyone.
	- Removed the mods 10% added liberty desire as the new JE has that on the modifier.
	- Removed the Rus buff from country modifiers its now tied to the JE.
	- Updated Eastern Orthodoxy Content to be in line with the current Greece, Byzantium and Balkan Flavor Mod
	- Added the new base game tax rate changes to the mod.
	- halved the cost of government admin building to be closer to recent change in vanilla
	- Some flavor text changes
	- Gave some countries Religious Schools 
	- Renamed the culture of Kōkaijin to Kaitakusha.
	- Added a bit more taxes to unincorporated states if you didn't know unincorporated states pay taxes in BR 0.15 in each source.
	- Plenty of other minor changes and fixes



### Patch 118 'Deutschland'

	##New Features
	-Added a germany major formable aswel as north and south german Confederations as normal formable
	-Added multiple journal entries around the german unification
		-Added a journal entry around liberating schleswig Holstein from the North Sea Empire
		-Added a journal entry around liberating pomerania from Sweden
		-Adapted multiple base game journals about the german unification into new ones for the mod
	-Added German unification Events
	-Added dynamic names for germany depending on who forms it
		-Deutschland (saxony + baltic states)
		-Germania (Bavaria)
		-Alemannia (Swabia)
		-Lotharingia (Franconia + Thuringia)
	-Added a Arlat Kingdom formable for Burgundy
	-Added a Switzerland formable called 'Confoederatio Helvetica' for all countries with the 'alemannic' culture

	##
	-Added variables to distinguish between north, south or a specific german culture
	-Added a modifier 'br_modifier_independent_german_state' for indepdent german states, which grants prestige
	-Added a on_active_yearly to add the modifier 'br_modifier_independent_german_state' if a new german state becomes indepdent
	-Added Talinn as a baltic homeland
	-Added a coa_trigger file in scripted_triggers
	-Added a culture_trigger file in scripted_triggers
	-Added new german modifier
	-Added a north german content overview


### 1.8/PoE Alpha future Patch 117 these notes are rough and not complete

	##New Features
	- Integrated Eastern Orthodoxy Content from Greece, Byzantium and Balkan Flavor Mod: https://steamcommunity.com/sharedfiles/filedetails/?id=3051891793

	## Made mod compatible with 1.8
        # New content related to Patch 1.8
		- Completely redone map of the Indian Subcontinent with a new balance of power and sprinkled with flavored characters, modifiers, laws and more.
		- Redid all the mods companies all are tied to a location on the map and own buildings throughout the map. The Mods Trade Companies have lots of oversea plantations and rare resource buildings taking the profits of which to their mother country.
		- Added some unique starting political movements
		- Added new Cultural and Religion discrimination traits added for the new discrimination system in order to try and customize which cultures are at what acceptence level on game start.
		- re-code of many modifiers, did a balance pass while at it. Many of the modifier types on the 1.7 version were removed by pdx without a replacement yet those are currently without replacement.
		- Adjusted modifiers to make use of the new effect types
		- buildings and production methods to 1.8 standards
		- recoded the subject types and make use of the new types added in 1.8
		- adjusted ai to make use of new code
		- Consolidated all our edited base game cultures into the OG files only so its easier to reconcile each pdx patch in the future.

	## Other changes for update 117
	#History/Map changes outside of India
		- Gave Andalus Legacy Slavery and added some slaves to their barbary coast colonies
		- Added some Latvian and German Slave pops to West Indies and Gambia to represent failed Courland
		- Updated Subsahara Map, adding new countries, pops etc especially Nigeria area.
		- Fix a military formation error
		- Fixed Japanese Shiberia they now start with claims on all the coast and starting colonization
		- Temp removed the game rule that made certain african tribals playable. Currently Only African countries outside of the settler countries I would recommend would be Mali or Abyssinia and even those would be dark souls level challenge. 
	
	#Fixes
		- Fixed missing state from Transcaucasia Formable 
		- Added a debug_silencer for variable and event orphan errors in br_code_on_actions this greatly reduces the errors when running debug_mode that were caused by base game events, variables etc not used by the mod. Thank you 1230 James explaining the concept and Smekens for coding it into the mod.
		- Renamed some variable to indicate better that they are from the mod and are variables
		- fixed some other general errors
		- Fixed bugs related to mods character ideologies
		- Fixed bugs related to the new Indian Farm mesh not loading the spice plantation correctly
		- fixed various code on actions not being coded correctly for 1.8.
		- Added missing background for the Embassy building
		- Added missing trigger for a EOCFM Event.
		- Removed references to British yearly dictates
		- Updated EOC decree scope
		- Removed Syrian Exarchate event as Syria is no longer active nation in the mod.
		- Removed 00_community_gui.gui it was clogging the error log. It improves the Eastern Orthodoxy gui but doesn't seem to be mandatory to function. It is included in the community mod so can load that to get the improved gui.
		- Fixed romanization decree
		- Removed references to previous game rules not currently in the mod.
		- Added in all base game dynamic country map colors that make sense in the mod.
		- Added in all base game formables that make sense in the mod.
		- Added in some new character ideology triggers
		- Fixed PLC journal
		- Removed some secession defines that are no longer used in 1.8
		- Some game rule fixes
		- fixed a FLA decision that would bug out if either DEI or EOC stopped existing.
		- Fixed errors related to adding building to states without the goods required for them to be there.
		- Removed dead trade routes
		- adjusted some subjects so they are not released on day one.
		- adjusted some interests for countries that were above their cap
		- Re-activated harvest conditions do not appear to be causing a crash after todays patch.
		- Few small history bug fixes
		- Further work fine tuning the AI.
		- Rebalanced the new Colony speed mechanics made it more equal less massive differences. Will greatly improve Elysium's colonization speed for example and slightly lower Vinelands.
		- Removed Japans Teraykota journal as replacing the modifier proved ineffective.
		- nerfs to birth rate bonus from early laws
		- Replaced soldiers nerf guns with pellet guns increasing causality rates slightly still less than vanilla though BR wars last a bit longer.

-

	##Localization
		- Moved a couple localization files that were replacing base game names into the replace folder.


### Patch 116

	- Added Benevento as a new Southern Italian country starting as a vassal of the Papacy.
	- Added three new releasables in central italy.
	- Added Hmong as a new decentralized tag in Yunnan.
	- szekely culture added into the mod. The Dracula event should now function let me know if you come across any bugs with it.
	- New option in game rules to create the Bulgarian Empire at game start.
	- Split off some of the Debuffs from the Curruption modifier Basileia Romaion starts with to a new one called Fallen Eagle its tied to the Renaissance Journal Entry.
	- Rebalance to laws especially affect officer/soldiers political strength. 
	- few late game production methods tweaked.
	- Fixed a couple releasables that had wrong states
	- couple scananavian strait traits improved.
	- Adjustments to a few techs
	- Updated and streamlined the history files to a unified standard to be in line with current PDX standard. This may potentially increase performance and decrease errors
	- Lots more Bug fixes

### Patch 115 'Guldensporenslag'
	## Feature
		# Flanders content
			- New journal entries around expanding in the lowlands and breaking free form the HRE
			- New modifiers for Flanders
			- Flanders renamed to Vlaanderen-Brabant
			- New colonial nation the 'Ostend Company' a Dominion of Flanders
			- New decisions and events around merging the 'Ostend Company' and 'Dutch East Indies' if they are both your subject
			- Added Belgium, as a formable for Flanders
			- Added new custom military/navy for Vlaanderen-Brabant
			- Adjusted Vlaanderen-Brabant starting laws

	## Other Balnce changes & Bug Fixes
		- Added missing localization to Zorosatrian priest 
		- Made internal Trade available to all Power Bloc types.
		- draft_exemption_tax renamed from its turkish name to a more generic name of "Military Exemption Tax"
		- Fixed a bug that caused Katepaníkion Italías to be renamed to Sicily if it takes back the rest of the Island from Andalusia. 
		- Changed the HRE revolution to happen after 50 years instead of 75 roughly translating to the irl french revolution date.
		- Added a decision to br_remove_insufficient_infrastructure_decision trait from any country with that trait.
		- Lots of misc bug fixes and missing localizations added.
		

#Hotfix 114
	- adds the missing localization to the opening HRE event.

### Update 113 'Charlemagne's Legacy'

	## Feature
		# Initial HRE Expansion including but not limited to the following --- Special Thanks to Smekens for doing most of the work.
			- New Journals for HRE including multiple paths for your nation and culture
			- New Events for HRE
			- New modifiers for HRE
			- Multiple new Flags for each Government Type
			- New Decisions
			- Added Lotharingia as a releasable 
			- Added a scripted revolt to HRE to happen under certain conditions
			- Updated HRE soldier uniforms Black shirt red trousers and Yellow hat instead of a solid yellow jumpsuit.
			- Added new Power Bloc principle group "Autonomous Subjects". Made it pretty common at start of game the Cohesion bonus should stop weaker power blocks from collapsing right away.
			- Improved HRE AI to make it more of a challenging rival.


	## Other Added Decisions --- Created by @Smekens
		- Accept Baltic German decision for anyone who owns a Baltic State homeland
		- Accept Anglo-Dane for North Sea Empire 

	## GFX --- Commissioned by @Jozue 
		- Added New IG Icons for some of the custom ideologies.

	#History - Pops
		- Finished Setting up Aegyptian pops.

	## Balance & Fixes
		- Changed Siam and Java's Subjects from Dominions to Tributaries
		- Updated laws to empower pops instead of Interest Groups directly. 
		- Removed the option to order your subjects to annex other nations. You can still order them to conquer a state.
		- Changed Aegpyt, Kyrencia and Afrika starting rulers to Romaioi culture (Not their nations cultures)
		- Changed starting colonial institutions to level one for the new world nations that did not have the tech for level 2.
		- Adjusted French political parties to be available to any nation with French or Frankish Culture and not be limited to FRA tag.
		- Added a 64 month truce for AGY-ARA at start of game to stop ARA from spoiling scripted protectorate play. 
		- Changed successions cooldown to 8 years from 5 so they will happen less often.

		- Tech Cost Adjustments (Keep in mind the mod is less sandboxy then vanilla playing nations with low Literacy will be very hard)
			- era 1 lowered to 8500 from 10000
			- era 2 unchanged at 12000
			- era 3 lowered to 15000 from 18000
			- era 4 lowered to 20000 from 26000
			- era 5 lowered to 30000 from 40000
			- era 6 lowered to 45000 from 60000

	##Localization
		- Updated the non English languages to be caught up to the English.
		- Renamed some modifiers 
		- Renamed some more States @Jozue 
		- Added missing Localization for Caribbean Islands and Yemeni Coffee

	###
		-


#Update 112

	#Exarchate of Afrika
		- reAdded Afrikanós culture as the primary settler culture of Afrika.

	#Katepaníkion of Italias 
		- Catholic primary relgion I never intended to make it orthodox.
		- Sikelianoi (Sicilian in greek) split off from South Italian. Primarily greek speaking though has italian trait as well and are orthodox though 10-25% start as catholic and some of the ones in andalus controlled start as sunni. 

	#South Africa
		- Seperated Afrikaans from Colonial Dutch for South Africa.

	#Religion

	#Balance
		- Lowered conquer state to 10% higher than base game down from 20% higher
		- Lowered Annex country to 15% higher than base game down from 50% higher.
		- Lowered the liberty desire modifiers from -0.25 and -0.15 to flat -0.10

	#Modifiers
		- adjusted various modifiers replacing many of the ones that had unit_supply_consumption_mult trait as it did not do what i thought it did. (It only affects goods shipped via sea route). 
		- added the provinces lost trait to a few of the defensive modifiers. 
		- Added some new modifiers to the Rus nations
		- Improved the Swedish military buff.
		- Added toll modifiers for revenue the swedes and danes get for controlling baltic trade.

	#Interest Groups
		- Added new a few new leader ideologies
			- These will populate randomly based on factors but also applied them to some of the mods custom characters.
		- Added new IG traits to interest groups in Ming China, Japan, Basileia Romaion, Tartaria and nations with semi_nomadic rural folk Ideology. 

	#AI
		- fine tuned the main nations ai to be more focused and less random
		- Updated Baselia Romaion ai to be slightly more progressive in passing laws. 

	#Pops
		-adjusted pops in a few states.

	#Diplomacy
		- adjusted Bohemia to has less friendly relations with their neighbors

	#Fixes
		- Various minor bugs fixed
		- added silesian as a cultural homeland to silesia at game start removed baltic and polish. 
		- fixed some releasables and other country defines.
		- fixed some countries missing certain techs they need for their starting laws.
		- increased the hidden amount of infamy that was decreased from 50 to 75 Latin intervention event chain.


		
###Update 111

	#Naval rework
		- Added three new naval units, adjusted costs for all units. Coal required for steam ships and oil for end game ships.
		- Caravel is the tier one light ship just below Frigate, Screw Frigate is tier 3 light ship just after frigate and Carrack is the tier 1 capital ship.
		- Most non-western navies start with Caravels/Carracks instead of Frigates/Manowars.

	#Population growth
		- added state_mortality_wealth_mult bonus to three techs in the society tree.
		- tweaked native modifier to disable population growth/decline (This only affects decentralized nations) if the modifier is on a playable nation let me know.
		- Other slight tweaks to population growth. May be slightly lower at the start but techs and healthcare and other laws can increase it more as well as relgious traits.

	# Africa
		- Changed Ashanti, Dahomey, Sokoto, Kongo & Zulu Decentralized by default and added a option to change them to Unrecognized in game rules.

	#Balance
		- adjusted the native conscription military buffs from general offensive/defensive to homeland only and added it so less provinces are lost per defeat.
		- Adjusted Genoa, Venice and Romaioi trade companies to also boost financial centers.

	#Culture
		- Irish names re-done thanks to Highfive. 

	#Fixes
		- Fixed the GBR formable being called "England" will now correctly be called "Britain"
		- Various minor bugs fixed


		

###Update 110

	- added localization to the objectives. Nation descriptions are generic for now but its something. 
	- halfed the goods cost of embassies and staff size by 1/3rd lowered influence added by half but kept infamy reduction the same.
	- Changed some minor countries to Unrecognized.
	- Fixed English and Kurdish adjectives

	ai
		- Tribal society will build less cannons more Calvary.
		- increased Mandate of heaven ai constuction sector desire from the base games 0.1 to 0.25
	- renamed colonial-chinese to Huáqiáo suggestion by freeloquots
	- renamed Colonial Japanese to Kōkaijin thanks to hydropawah for suggestion 
	- renamed Irish hubs under Irish ownership to Gaelic names thanks to highfive for the names.
	- Renamed Nea Attiki to Nea Ipeiros suggested by fillipostrains

###Update 109

	#Events and Journals
		- Added new event chain to start a war over Syria between Aegypt and Basileia Romaion
		- Added a dozen new Separatist events tied to the Suppress Separatism Journal entry for the ERE(BR). These are more random then the current Dynatoi revolts tied to reforms.
		- Updated all the BR Reform Journals related to subjects and owning territory. Worked in Liberty desire and type of subject as a factor.
		- I made it so you require 12 out of the currently 16 possible reforms to win the reforms journal you have 100 years.
		- added dozen or so mass migration events

	#Pop changes
		- Confucianism made the majority religion for Han 60%ish and about 40% for Korean.
		- Lots of changes to the British Isles
		- Two New Cultures Anglo-Dane and Norse-Gaels
		- Religion changed Scottish, Welsh and English are Catholic by deafult. Though the population is split much higher protestant for pops under direct NSE and much higher Catholic under the native tags. The ai of the tags should all work together to try and gain their independence.
		- More Anglo-Saxons added to New Angland.
		- New Anglanders also made Catholic.
		- Removed Anglophone trait on scottish/welsh added celtic to scottish
		- Czech and Silesians made majority Protestant (Hussite Legacy)

	#Balance, fixes & Misc

		- Added a buildable "Embassy" that increases influence and infamy decay. 
		- Added more Arts academies to Italy, Andalusia and ERE. 
		- Added a couple more Paper factories in BR.
		- Added services as an input goods for Constantinople monuments as well as the generic Palace Complex.
		- Split off Thuringia from Franconia as a new HRE subject. 
		- Australis re made a protectorate of Aegypt.
		- Gave Elysium and event that happens if they go Elysian Orthodox to become a BR protectorate. (AI will not choose to stay independent).
		- Few Character changes in BR and Inca.
		- Adjusted ownership in favor of NSE. giving them a portion of "home counties" including "London" and "Midlands" coast. 
		- Added new various timed modifiers to certain states at games start to encourage immigration to those states.
		- updated countries
		- updated ai strategies
		- added new game rules
		- adjusted br hardwood
		- adjusted starting relations
		- created Genoa power bloc
		- adjusted other Italian power blocs
		- adjusted revolts
		- Decreased the progressiveness of some Italian starting laws to decrease their attraction to migrants. 
		- Decreased power of some modifiers
		- Gave BR a couple extra mil techs to help the ai struggling to win wars and decrease the chance of them going into downward spiral. 
		- Fixed the a modifier error on the Exarchate events which was causing the modifier to be added to the wrong overlord instead of the vassal.
		- turned a couple of the br subjects into puppets instead of dominions
		- updated to-do list
		- Merged Ardalan into the "Kurdistan" tag formally called Arbil.
		- Updated the mods unique companies
		- Moved Nassios and Vidin, from Bulgaria dominions to Serbian tributaries.
		- huge amount of law changes
		- removed freedom of movement from power blocs at start.
		- some formation fixes
		

	#AI
		- Revamped starting strategies so must nations will pick logical choices
		- adjusted conscript ratios for br, hre and colonies.

	#Localization
		- Created two new Dynamic country names
		- Kurdistan if I Persian subject will be known as Kurdish principalities
		- England if a NSE subject will be known as English Lords.
		- renamed Irish hubs under Irish ownership to Gaelic names
		- I incorrectly named the other languages localization so they were not functioning. I have fixed this.
		- renamed bulgarian_revolts to br_balkan_revolt and anatolian_revolts to br_anatolian_revolts
	
 


###Update 108
	- Many states renamed in the New World and Oceania. Thanks to @Jozue
	- Slightly buffed the PLC starting modifiers.
	- Made Vinland, New Angland & Elysium fully independent at game start. 
	- Elysium switched from colonial to recognized so can now form power blocs.
	- Gave Elysium the unique BR tech 'Greek-Fire'
	- Reverted Japanese Shogunate to their default dynamic color. 
	- Made a new modifier for the above nation 'Independent New World Colony' which is a slighly better than 'New World Colony' modifier. Hopefully they gave enough mass migration to make up for the loss of market migration which was why I kept them connected to a larger market previously dispite it not making sense lore wise. Gameplay is always priority. Give feedback will revert if they just don't have the same umpf as their neighbors which have overlords market migration.
	- Added new game rules for regarding Size of Abbasid Caliphate.
		- Abbasid Caliphate Small:
			- Abbasid Caliphate starts off pushed into the Arabian desert with only Mecca and a few small vassals/tributaries
		- Abbasid Caliphate Large:
			- Abbasid Caliphate is resurgent, having just recently restored control of Mesopotamia,Egypt & Syria.
	- Replaced the default nation selection in the objectives with BR nations I'd recomend. Localization not yet set.
	- Updated the Exarchate events to also convert a portion of the Exarchates population to Orthodox if you force them back to Orthadoxy.
	- Updated the force your culture on subject to no longer also give them your state religion. (Not thoughly tested)
	- Added a force your state religion on your subject diplmatic action. (Not thoughly tested)
	- Made it so tags that are "Colonial" can form power blocs. They require at least 15% the prestige of the highest prestige great power so if they have 1000 prestige you need 150 prestige to form the power bloc.
	- Added new Power bloc for Abyssinia
	- Maratha dynasty changed to Bhonsle.
	- Improved the Papal power bloc
	- Improved diplomacy including adjusting all subjects starting liberty desire.
	- Canals can now be nationalized 
	- ERE rename decisions are hidden added a decision to show/hide them.
	- Improved the Persian borders in the Caucasus.
	- Fixed some missing modifier localizations.
	- Added missing culture and religion standard of living modifier.
	- Fixed errors related to 1.7.4 law changes
	- Fixed errors related to 1.7.4 subsistance farms changes
	- Fixed errors with Saxony formations
	- Fixed error in Wallachia Lobbies
	- Fixed errors with countires having relationships with invalid countires
	- fixed trade route errors
	- Updated the production methods and laws to match the changes in 1.7.5.
	- Changed the way the mod handles dynamic names and colors so I won't need to keep as many redundent files. Nothing should change other than the obvious above Japan color change but if any countries have weird colors or names let me know.
	- fixed missing ai evalution for protectorate, personal union, subject attack, force culture, force religion. 
	- added New Religion 'Elysian Orthodox' and decision for Elysium to return to it. Years of religious conflict within Elysium between the Neo Hellenes and Elysian Orthdox similar to the 30 years war in our timeline have rocked the colony since its independence.
	- Due to many requests the Mod has the English available in every language Paradox supports so you can play in your local language with the Mods content in English. I am seeking folks to help me translate the mod properly in every language.

###Update 104
	- Assaigned coat of arms to all starting power blocs
	- Updated the rules to create a power bloc by making it no longer nesssary to be a Major Power and just requiring 10% as much prestige as the highest Great Power. 
	- Removed/No longer need the timed modifier Power Bloc leader that gave 100 prestige for a month previously needed it so most of my power blocs would not disband on games utilization.
	- Updated starting lobbies
	- Adjusted many country and state modifiers to be 50-100 years instead of permanent (Many of the debuff ones are removable by decision or other method but now waiting them out is just another method).
	- Adjusted some ai to start out wanting to befriend the members they are in a power bloc with so their power bloc doesn't fall apart as random ai makes them rivals etc.
	- 




###Update 103
	- Bug Fixes
		- Fixed missing diplmatic plays.
		- Fixed missing Mapi from trains.

	- Features, adjustments & Balance changes
		- added three new "Exarchate" events/journals and revamped the previous three.
		- added new rules that prevent increase/decrease autonomy for colonies and certain other subjects until civilizing mission researched (Nationalism for some).
		- some culture/ethnicity adjustments.
		- toned down a few modifiers
		- added new modificers
		- started changing some permanent modifiers to 50 or 100 years. Ongoing process.
		- Adjusted the AI so militarized nations keep more consripts.
		- removed Hans opium addiction. Mughals are zonked though.
		- Added a player only decision to add a temporary modifier for for Yuan to make it easier to win the war against ming. AI will not use it.
		- Improved the Romanization Decree.
		- Localisation imoprovements


### Update 102
	- Balance changes
		- Added a homeland defensive buff to the PLC and Abyssinia 
		- Moved the Iberians to HRE Sphere
		- Removed nearly all the games starting wars, vassal gameplay is a fun addition of 1.7 so more vassals to exploit now I mean peacfully guide. 
		- Slightly tuned down the liberty desire modifiers I added.
		- New unique BR tech "Greekfire"
		- Two new mobilization options; Horse Transportation and Greekfire. (Previous iteration was just renamed flamethrower tech/mobilization option this is seperate unique now)
		- Added +1 interest group to the Moscow Patriachate modifier to make it easier for them to get diplomatic help against their overlord.
		- Fixed the Bulgarian revolt event was sucession dp which did not annex at the end. Changed to Annex subject dp which actually functions right. (The rally around the Basileus events subtracts the amount of infamy gained)

	-Bug Fixes
		- Fixed some AI strategy bugs
		- Fixed some localization bugs
		- Added missing COA to Vidin Nassios and Jamland.
		- 


###################
##### Update 98 1.7 Mega Update.
###################

### Power Blocs
	- Created 14 Power Blocs

### Map changes
	- Added dozens of new nations. Some are indepdent most are new subjects.
	- New and Renamed states/hubs.
	- Adjusted the borders of many previous nations/states.
	- Adjusted starting arable land/resources to many states.
	- Adjusted strategic regions

### Countries
	- New countries on the map as well as new releasables/formables.
	- changed colors and flags for some nations.

### Characters
	- Many characters have been adjusted
	- Clothing Adjustments

### Buildings
	- Re-balanced entire maps starting buildings/production methods.
	- Added building ownership to every building in the game.
	- Re-balanced buildings
	- Re-balanced production methods
	- Fixed various UI and other bugs related to buildings and monuments. 

### Military
	- Added/adjusted military formations in particular the new new nations and states.
	- Removed Skirmish infantry from game at start.
	- Increased size of some countries starting militaries.
	- Added Manowars to some nations starting fleets. 
	- Changed how Calvary works its no longer possible to upgrade Cavalry this was done because they AI just upgrades everything to Lancers and ruins immersion so if you want higher quality cavalry you'll need to disband the lower quality ones sorry.

### Technology
	- Rebalanced many of the new techs and some old ones.
	- Changed starting techs for many nations.
	- Fixed bugs with many techs.

### AI
	- Changed many nations strategies and secret goals.
	- North Sea Empire, Swedan, Hordes, Tribals will keep substanially larger armies.
	- Netherlands and other Trade nations will keep much larger navies.

### Liberty Desire changes
	#- Lowered economic dependence effect on liberty desire to 25% of base game levels. Not in this update
	- Added Modifiers to further slow down 	

### Laws
	- Adjusted many laws

### Diplomacy
	- Created Power Blocs
	- Changed some subjects to either be a different type or no longer a subject but instead a member of the powerbloc.
	- Re-Balanced subject types
	- Added new diplomatic options to some nations. (Markets, Tribute etc)
	- Changed some diplomatic types
	- Removed some starting wars or added new ones.

### Goods
	- Adjusted BR goods
	- Services and Services/Transportation still market wide but made untradable. 

### Modifiers 
	- Re-balanced all modifiers 
	- Re-balanced all state traits
		- Example: All rivers have at least a 5% bonus too MAPI and agriculture thoughtput.
	- Added Autocephalous Patriarchate Modifiers 

### Map
	- Turned Hudson bay into "Ocean" from impassible "lake" created exit routes for the ports in Ontario and Manatobia to exit into it. 

### Populations
	- Adjusted various states starting populations.
	- Adjusted religions of many pops on the map.

### Cultures
	- added, re-added, removed some cultures from the map.
	- Added Afro cultures to the new world those forcibily imported will convert to the new cultures.

### Markets
	- Some subjects now start with their own markets affecting the overall supply of goods in some previous markets

### Trade Routes
	- Adjusted and added/removed many trade routes based on the supply/economic changes caused by all of the above changes.

### Stripted Trigger
	- Added a scripted trigger that Lord R made so that when you play Baselia Romaion with Morgenröte the later knows BR is active and runs a compatible version of the mod.

### Clothing
	- adjusted clothing / uniforms to many nations.

### Bugs and Internal stuff
	- Internally reformated all the mods tags to prevent conflicts with PDX nations.
	- Cleared out unused Tags.
	- fixed 1000s of errors related to new systems 

	
- Lots of stuff I lost track of also done please play and give feedback on discord.



Update 95 (Tech Tree Update)

# Technology
- Since the mod spans an additional 100 years compared to the base game, the tech tree has also be expanded to reflect this.
- Adjusted the eras of techs so that era 5 becomes era 6, era 4 becomes era 5, etc
- Added a new era 1, which contains the very basic production, military and society techs
- Added 13 new production techs
	- Moved some of the laws/buildings to said new techs
- Added 15 new society techs
	- Moved some of the laws/buildings to said new techs
- Added 13 new military techs
	- Moved some of the buildings/military units to said new techs


- Laws have are unlocked at new techs.
- Buildings are unlocked at new techs.

# Future work
- Add distinct icons for each of the new techs
- Add PMs to reflect artisans manufacturing better.
- Continue to Balance the new and old techs.

# Other additions

-  Testing out making Services/Transportation market wide goods since they are already limited by MAPI. I like the results but please give me your feedback.

- Laws
	- re-balanced many laws modifiers and other effects.

- Balance
	- Re-balanced nations starting tech.
	- Re-balanced nations starting laws.
	- re-balanced some modifiers.

- Combat units
	- Adjusted techs to unlock units.
	- adjusted goods required for units. added clothing or fabric for their uniforms.

- Hub names
	- Jozue has partially completed renaming Elysium hubs as well as some PLC ones.

- Bug fixes
	- Fixed looping error with the annex decisions.
	- fixed 100s of errors related to nations starting with laws they technically did not have the prerequisites for.










	
Update 94

- hotfix for metadata error

Update 93 

- state-based silk road:
 	- The silk road is now based on the states going from China to Northern Africa/Eastern Europe, instead of being just passive country-wide modifiers.

- Increased max infamy to 9999.

- Tech into Modifiers
	- New World Colony Buff
	- Africa Colony Buff
	- Colonial Merchant Republic
	- Mediterranean Merchant Republic
	- Silk Road
	- Defensive Bonus
	- Elysium
   
	# Horde
	- Slavic Oppression
	- Legacy of the Khan
	- Khanate
	- Reactionary Social Policies
	- Army Prowess
   
	# Italy
	- Aggressive Foreign Policy
	- Italian Academia
	- Accessible Stock Exchanges
	- Colonial Dividends
	- Gunboat Diplomacy

New Tech
	- New tech for colonial nations to allow them to colonize hostile climate early without a malus. Previously these were tied to the invisible techs that were replaced by modifiers.

- Balance
	- Gave Muscovy Claims on perm.
	- Gave PLC Claims on its eastern frontier.
	- Gave Bohemia claim on Silesia.
	- Increased max Infamy to 9999 after watching Nikoli easily reach the previous cap of 1000 in his Basleia Romaion run. I want to see who can get their infamy the highest possible :D
	- Adjusted modifiers
	- Split and moved modifiers around
	- Created a few new ones not listed above
	- Changed some modifiers to be 99 years instead of permanent.
	- Adjusted laws 
	- Adjusted land_reform laws serfdom and tenant farming now decrease peasant education access 10 and 5%
	- Added -10% base peasant education access.
	- Removed homesteading from tribal nations. I may create a Tribal farmland or something special for them later.
	- Gave China Academia and a couple Universities
	- Removed the education reduction from all country modifiers as the peasant changes accomplish the goal cleaner.
	- Added a +25 max barracks in capitol states.
	- Added a +10 Max Naval bases to your Market Capitol.

	- Lowered base MAPI TO 65%
		- Added 5% MAPI increase to railroads and ports.
		- Added 5% MAPI to Canal
		- Added 5% Mapi to Capitol and previously added 5% to Market Capitol as well.
		- 5% Mapi is also added to Coastal and river states. 
		- There is Laws and techs that also increase max Mapi.

-Fixes
	- Gave Persia the correct devout IG name.
	- Only Tataria can create Khazer Khaganate now, to prevent yuan from going Tengri then Jewish and reviving it and removing Mongol as their primary culture.
	- Fixed typos in nation localization
	- Fixed errors with Canal toll localization Klysma Canal
	- Fixed errors related to South American character templates.
	- Fixed arable land errors
	- Fixed a looping error related to BR reforms searching for law serfdom instead of the law law_serfdom
	- Fixed Localizations errors
	- Fixed Inappropriate building errors. 
	- fix: remove references to vanilla countries and events
	- Improved the back-end code, reduced the number of errors and made the code easier to work with.

@everyone Update 92 'Epithetikós' is now live on Steam and Github. This update includes many changes and adjustments to balance and litterally 100s of fixes.

- Various nations have had their invisible buffs turned into national modifiers
	- Inca
	- Aztec
	- Andalusia
	- Japan


- Baselia Romaion
	- Re balanced starting trade routes, building production methods, taxes so they start with a healthy financial surplus AI can ruin it but player should be good.
	- Tagmata military formations now start off mobilized and on the appropriate front lines.
	- Removed the last invisible buff/debuff and turned into modifiers with associated decisions. 

- China
	- Added decisions to remove Peasant and Corruption debuff

- AI
	- Our AI should be twice as aggressive as the base game due to the previous changes and the new changes.
	- Increased boldness (AI's willingness to fight enemies of similar strength.)
	- Gave Baselia Romaion more aggressive behavior towards its lost territories. 
	- Other tweaks

- More Balance
	- Adjusted cultural community formation so your primary culture is more likely be spawn as a new cultural community especially if you have greener grass campaign active.
	- Increased Pop Services demand
	- Decreased Base Horse production
	- Increased Spice demand.
	- Adjusted many nations trade routes.
	- Adjusted buildings throughout the map a bit.
	- adjusted education, citizenship laws removing restrictions for some as well.

- Fixes
	- Skjargh has fixed 100s of errors caused by 1.5 south american content not being in the mod but the game checking for it.
	- Fixed none Basleia Romaion nations getting an event for a rebellion in Pontos or Anatolia when reforming Themata. 
	- Added missing localization.
	- Much more

	https://steamcommunity.com/sharedfiles/filedetails/?id=2880120246

	https://github.com/AndHope/Basileia-Romaion



Update 91 Kosmikós

- State renames
	- 100s of states renamed including Elysium!
		- Jozue has been helping to rename states that still had their base game names where it did not make sense. 

- Ming Empire
	- Split off 4 new subjects 
	- Some formation changes
	- some AI changes.

- Abbasids
	- split off two new puppet subjects, Haasa and Yemen.

- Saxony
	- Ruler dynasty changed to Ottonian/Liudolfing
	- New flag based on the CK3 flag

- Great Yuan
	- Added decision to claim Mandate of Heaven if you win the civil war.

- Elysium
	- renamed political parties and Interest Groups.
	- Added Legacy Slavery

- Vinland
	- Added Legacy slavery

- Modifiers
	- adjusted various modifiers and added new ones

- Buildings
	- added various historic monuments based on EU4
		- Venice, Paris, Mecca, Jerusalem

- Ai
	- added new variables for the ai to make use of recent changes.
	- Ming ai should consolidate southern vassals and other behavior changes.


- Many militeristic tribes were given debt slavery to represent military raiding captured slaves. many minorities turned into slaves.

- Baselia Romaion
	- Added Legacy Slavery to BR and all BR minors. I am quite aware slavery was banned in the eastern roman empire a very long time ago but that doesn't mean it couldn't of been reintroduced during the era of weak central authority.

- File Organization
	- cleaned up the localization files a little bit.
	- internally reorganized most files to follow the br_ standard.
	- skjargh has been conforming all the localization files to yaml standard.

- Bug fixes
	- Republic government titles fixed.
	- skjargh has continued fixing errors and getting that error log down.


Update 90

- Modifiers
	- Some of the previously hidden buffs/debuffs certain nations have are being converted into flavored modifiers for those nations. So far China, Japan, Persia and the Norse Countries. thanks skjargh for this continued effort
	- Adjusted some modifiers slightly. 
	- These will continue to be balanced and some will eventually be connected to JE, Decisions or events but currently most are not.

- decisions 
	-  Adds in more options to remove the Thematic deterioration and get Themata/Tagmata reforms for Basileia Romaion. There is events that can fire during land reform upon completing Military reform and via decisions.

- pops
	- Have added in minorities in colonial nations usually a small amount of their overlords culture or other cultures to encourage intra-market migration to those areas.
	- (1.6 known PDX bug not mod related internal migration does not always work PDX is working on it.)

- Map_Data revamp
	- added in all the state traits included in base 1.5-1.6 courtesy of twilight

- State traits
	- Did a pass on the base games state traits adjusted a few here and there.

- Laws
	- Some laws that previously did not affect authority like militarized police now give an authority boost.

- Country descriptions 
	- skjargh has started work updating country descriptions on the nation select screen. JAP, CHI, DEN so far

- Buildings
	- Increased Administration buildings in br_jamland_harjedalen. Should no longer start with 100% tax waste :S
	- New gold mines to represent the large amount of gold and silver japan possessed during this era. 

- Formations
	- Added new formations to Japan

-Journals
	- Increased PLC journal time limit.

- bug fixes
	- fixed broken subject attack function thanks simas for reporting, pinpointing and fixing the issue. Also included one new event for BR
	- Fixed various map errors 
	- skjargh has been hard at work fixing dozens-hundreds of other errors as well and continues to tackle the error log.


- This update has been in the works for awhile and may contain other changes and tweaks not mentioned above.


Greetings @everyone Update 87 'Erythrokyanós' now on steam/pdx. Continuing on my current focus of improving the core BR/RE/ERE Experiance. 

- Basileia Romaion
	-Uniforms
		- New different purple character and pop uniforms for Ruler, Admirals, Generals, Officers and Soldiers.

	- Events, Decisions. Journal Entries
		- Localization rewrites for events, modifiers decisions so they read better and make more sense.
		- Added tool-tips to let you know certain choices for decisions, journal entries and events may cause a revolt.
		- Removed the -infamy from journal entries as the Purple born trait has a 25% infamy reduction. 
		- Adjusted all the ERE revolts.
		- Revolt events should no longer cause infamy. 
		- Added a couple decisions to latinize the country name.

	- Characters.
		- Adjusted the appearance of various characters
		- New character traits Purple Born, Bulgar-Slayer, Imperial Family, Exarchate, Corrupt Official.

	-Buildings 
		- Adjusted the Monuments.
	
	
- Bug fixes/ other changes.
	- Removed releasable nations that are for cultures not in the mod that I missed previously. 
	- Fixed broken "new homelands events not happening"
	- some adjustments to spices
	- Other fixes and tweaks.

Update 86 'Exousía'

- Basileia Romaion
	- Journal Entries
		- Added two new Palaiologos Reforms journal entries based off earlier decisions. (The old decisions can reappear if you fail to do the journal entries giving you a second chance to remove debuffs.)
		- Requires completing 10 reforms from 8.
		- Fixed a few events related to journal entries.
	- Events
		- Added new events related to reintroduction of Themata when enacting land reform.
		- Updated localization for some previous law enactment events.
	- Ideologies
		- Replaces Paternalistic with "SPQR" for Dynatoi
		- Replaces Jingoist with "Tagmata" for Stratiótikoi
		- Adjusts all other IG ideologies
	- Formations
		- Fixed couple of the Themata formations not having their intended generals.

	-Law changes
		- Oligarchy
		- Serfdom from Tenant Farming.
		- Back to land based taxation. (given max gold reserves at game start to compensate. should give you the wiggle room to crush the rebellions increasing your tax base.)
		(These are because Powerful Dynatoi have eroded the previous Macedonian Land reforms)
	- Characters.
		- Dynatoi IG leader now a Palaiologos (Rulers Uncle) The Doukas family rules over large porions of the Balkans and are responible for revolts.
		- Stratiótikoi IG leader also now a Palaiologos (Rulers younger Brother) The Komnenos Family rule Aegypt at game start.
		(I eventually want to make an heir related event where you choose your heir. Maybe start a House of Dragonesc Civil War.)
	-Modifiers
		- Created multiple new modifiers and adjusted some previous ones. 
	-Military Units
		- Military units on the map will now have Purple shirt, black pants and gold helmets uniforms instead of Solid Purple jump suits.

- Japan
	- Fixed restoring Meji causing a negative age Emperor to take the helm he will now be 35 no matter the year.

-PLC
	- Adjusted modifiers

-Balance
	- Removed the tool cost from horse drawn transport/automation just horses

Update 85 'Aloga' is here with lots of work into formations along with tinkering, tweaking, bug fixes and small QOL features. 

- Features
	- Calvary no longer counts as "support" so you can have up to 100% Calvary formations without penalty.
	- Overlords primary culture will no longer be discriminated against no matter their subjects primary culture and citizenship law.
	- Added small amount of Horse production to Subsistence Pastures

- Starting Laws
	- revamping starting laws across the board.

- Building Adjustments
	- Added a few more ranches to PLC and the New World including tribal nations.
	- Switched much of Subsistence Farms in the Tribal areas of the new world, Africa and steppe to Pastures.

- AI
	- Basileia Romaion AI will no longer use Greek fire as they are too retarded and get stuck in a loop of switching production methods due to low sulfur supply. (The Player is smart enough to use it on their strongest armies only until they build up a larger sulfur supply)

-New Custom Formations (By tag not name)
	- IRO
	- CHE
	- CTF
	- br_giamaica
	- br_atlantica
	- br_giamaica
	- br_dutch_west_indies
	- br_antarctique
	- br_louisiane
	- br_vinland
	- br_chinese_new_world
	- br_japanese_new_world

- Adjusted formations for all previous nations.
		- Baselia Romaion
		- HRE
		- PLC
		- Aztec
		- Hungary
		- Bulgaria
		- Illyrikon
		- Wallachia
		- Moldova
		- Tranysalvania
		- Serbia
		- Epirios
		- Morea
		- Armenia
		- Georgia
		- Syria
		- Aegypt
		- Afrika
		- Kyrencia
		- Mesopotamia
		- Arabia
		- Persia
		- Tataria
		- Italia
		- Savoy
		- Tuscany
		- Lucca
		- Modena
		- Parma
		- Papacy
		- Venice
		- Genoa
		- Lombardia
		- North Sea Empire
		- Sweden
		- Holland
		- Andalusia
		- Asturias
		- Navarra
		- Aragon
		- Morocco
		- Algeria
		- Assyria
		- Avevelyn
		- Arbil
		- Ardalan
		- Kharwarazm
		- Khorasan
		- Kabulstan
		- Muscovy
		- Novgorod
		- Pskov
		- Galich
		- Smolesk
		- Ryazan
		- Tver
		- Perm
		- Nizhny Novgorod
		- Galacia-Volyynia
		- Circassia
		- Dagastan
		- Chechnya
		- Damascus
		- Oman
		- Zanzibar
		- Adal
		- Abyssinia
		- Makuria
		- Alodia
		- Aquitaine
		- Provence
		- Brittany
		- Burgundy
		- Franconia
		- Bavaria
		- Swabia
		- Bohemia
		- Saxony
		- Croatia
		- Prussia
		- Silesia
		- Elysium
		- Mughals
		- Ming
		- Yuan
		- Manchuria
		- Outer Mongolia
		- Inner Mongolia
		- Dzungaria
		- Uyghuirstan
		- Qinghai
	- Did I miss anything? 

- Balance
	- Pops can now eat horses if hungry enough
	- removed quinine tech from colonial nations increased their primary culture birthrate to compensate 
	- adjusted which states are unincorporated and unincorporated for various larger nations.

- Decisions
	- Adjusted the remove Cossack Autonomy decision. 

- Defines (One of my design pillars of the mod is making the game more brutal and challenging than vanilla, in that thought I have adjusted some defines to reflect this.)
	- Slightly increased likelihood of succession revolts made primary culture slightly more loyal to compensate. 
	- Slightly increased the length or wars but drastically lowered casualties.

- Bugs
	- Fixed a bug where nations with tribal society law would destroy all their conscripts and not make more.

- HELP WANTED:
	- looking for formation name suggestions for any that still have generic or uninspired names.
	- Looking for further help developing content for the mod. If there is a nation or region you want to make content for particularly events,decisions,journal entries etc message me.
	
- The Separate music mod has been updated and now includes 41 Eastern Roman inspired tracks from previous PDX games and other sources.

Update 84 Sarmatian Update is here full notes below. Special thank you to Jozue Valirija and BadDLC for helping with writing lore and ideas here https://discord.com/channels/851541285051695144/1193271400291639376 

- Commonwealth (PLC)
	- Journal Entries
		- First New JE regards centralizing power and removing debuffs with two possible paths to completing the entry each outcome gives a different buff at the end.
		- Second JE regards the unrest among the Ruthenian subjects.
	- Events
		- Six new events tied to the journal entries.
	- Interest Groups
		- Renamed 
			- Boyors to Szlachta
			- Merchant Guilds to Mieszczanie
			- Rural Folk to Soltys
	- Laws
		- Landed Voting from Wealth voting
		- Mercantilism from Protectionism 
		- National Supremacy from Cultural Exclusion (Polonization)
	- Ideologies
		- Sarmatism replaces Paternalistic for the Szlachta
		- Polonization ideology also added to the Szlachta
		- Cossacks replace Isolationist for Soltys
		- Polish Patriotism replaces Patriotism for Mieszczanie
		- Polish Enlightened Despotism replaces Reactionary for Mieszczanie
	- Modifiers
		- Liberum Veto and Piotrkow Statutes replaces Boyars.
		- Cossack country modifier removed.
	-State modifiers
		- Cossacks are now a state based modifier.
		- Defensive Preparations is now a state based modifier.
	- Adjusted which states were incorporated at game start


- Tartaria (Golden Horde)
	- Laws
		- Tribal Society changed from Professional Army.
		- Industry banned from Traditionalism. 
	- Interest Groups
		- Renamed 
			- Landowners to Kurultai
			- Armed Forces to Great Khan Restorationists
			- Rural Folk to Steppe Nomads
			- Intelligentsia to Constitutionalists
			- Merchant Guilds to Sedentarists 
			- Industrialists to Modernists 
	- Ideologies
		- Mongol Jingoist replaces Jingoist for the Khan Restorationists
		- Irredentist replaces patriotic for Khan Restorationists
		- Semi Nomadic replaces agarian for the Stepp Nomads
		- Basqaq replaces particularist for the Stepp Nomads
	

- AI strategies
	- New Political Strategies added
		- Merchant Agenda (Merchant Republics)
		- Anti-Shogunate Movement (Japan)
		- Meiji Restoration (Japan)
		- Meiji Renewal (Japan)
		- Romaion Expansion (Should focus more on restoring the Exarchates. 

	- New Diplomatic Strategies
		- Romaíon Expansionism (Basileia Romaion)
		- Aggressive Trade (Merchant Republics)

	- New Economic Strategies
		- Colonial Plantations (Colonial Subjects)
		- Colonial Resource Industries (Colonial Subjects)


- Decesions
	- Embrace Baltic Religion (Baltic Cultures can embrace their ancient traditional religion)
	- Embrace Slavic Religion (Slavic Cultures can embrace their ancient traditional religion)
	- Embrace Tengri Religion (Tatar/Mongol/Turkic Cultures can embrace their ancient traditional religion)
	- Remove Cossack Autonomy 

- Laws
	- Added a Tribal Society Law this law replaces peasent levies for Tribal nations but is more than strictly military it replaces the previous tribal techs. 

- Trade Goods
	- Added in horses as a trade good. 
		- Horses are produced in ranches
		- Horses are required for Calvary units and various production methods.

- Balance
	- Removed tribal techs (These were used as invisible buffs/debuffs for tribal nations)
	- Incorporated a modified version of War is Politics Mod.
	- Increased the cost for diplomatic plays against your subjects from 0.25% to 0.50%
	- Changed Defensive Preparations to a state modifier instead of country modifier. 
	- Changed various starting AI strategies to make use of the new ones.


Hotfix 83

- Reverted the experimental tributary changes due to the system breaking down. Will revisit later. 
- Moved the Russian Minors back to Muscovy due to the above change. 
- Secret weapon less secret. (More obvious and accessible)
- Adjusted Baselia Romaion Starting buildings and Trade Routes.

Update 82

- Balance
	- Removed the starting Ming Military bonus to make their situation slightly more of a challenge and give Yuan a chance.
	- Changed Japanese Siberian and Pacific Colonies to have Colonial Exploitation instead of Frontier Expansion as the later did not function on discontinuous land.
	- Australis switched to Colonial Resettlement from Frontier Expansion so they can also colonize the eastern islands (Modern New Zealand)
	- Zulu given Frontier Expansion (I may change this area of Africa in the near future)
	- 

- Culture
	- Taino added as the proper native culture of the Caribbean area. 

- Subject Types
	- Tributary
		- Lowered tribute to 0.25% of their income down from 0.35%.
		- Tributaries are no longer defended by their overlord by default. (Experiment to make the relationship more different than protectorate.)
		- Moved the Russian Minors from Muscovy to being Golden Horde Tributaries was set up the way it was previously primarily so Muscovy could annex them without Tatar interference which is still possible. 

- Music
	- Main theme changed back to previous main theme song	
	- You can continue to listen to PDX Christmas Carol via this mod https://steamcommunity.com/sharedfiles/filedetails/?id=2898101313
	
Previous update not mentioned on discord

Update 81/80

- Flags
	- New flag for South Africa
	- New Flag for Alodia

- Secret Weapon
	- One very special nation has access to a special offensive weapon though it requires a resource they do not start with but if they gain access to that resource in meaningful quantities it can greatly enhance their mid game offensive. 

- New Custom Formations
	- Inca

- Other small fixes and tweaks.

- Fixes partially void Johore State
- Adds some restrictions to command Subject to fight Diplo-Play will continue to balance this

Update 79

- Clothing Changes
	- Characters/Pops in Aegpyt, Cyrenaica, Afrika, Syria and Mesopotamia will wear a mix of European and Middle Eastern Clothing
	- Russian and Varangian Characters will make use of the "Russian Empire" Clothing assets.
	- Andalusian Characters/Pops will use European and Middle Eastern Clothing.
	- Tatar Characters/pops will use European and Central Asian clothing.
	- Nubian characters will wear Ethiopian clothing.
	- Fixed Colonial Japanese Characters/pops not having any clothes on.

- New Custom Formations
	- Mughals
	- Ming
	- Yuan
	- Manchuria
	- Outer Mongolia
	- Inner Mongolia
	- Dzungaria
	- Uyghuirstan
	- Qinghai

- Formation Adjustments
	- Khorasan
	- Zanzibar

- New Flag for Great Yuan - suggested by BadDLC.

- New Subject interactions. 
	- Force subject to declare war.
	- Force subject to your primary culture. (Requires nationalism researched)

- New event to expand your cultural homeland in states where your primary culture is at least 40% and theres at least 100,000 pops in the state. 

- Political changes
	- Maratha and Chola made independent at game start.

- Map Changes
	- Mareshia changes.

- Influence Modifiers
	- Changed the 100 year influence Modifiers that various countries political parties start with to be decaying modifiers.

- Renamed Napoleonic Warfare to Mobile Artillery.

- Balance changes
	- Changed Japan from Public Schools to Private schools so their literacy is not so high at game start.

- Many Bug Fixes


0.41 Update primarily focused on further fleshing out formations with a couple few minor map and AI changes.

- New Custom Formations
	- Muscovy
	- Novgorod
	- Pskov
	- Galich
	- Smolesk
	- Ryazan
	- Tver
	- Perm
	- Nizhny Novgorod
	- Galacia-Volyynia
	- Circassia
	- Dagastan
	- Chechnya
	- Damascus
	- Oman
	- Zanzibar
	- Adal
	- Abyssinia
	- Makuria
	- Alodia
	- Aquitaine
	- Provence
	- Brittany
	- Burgundy
	- Franconia
	- Bavaria
	- Swabia
	- Bohemia
	- Saxony
	- Croatia
	- Prussia
	- Silesia
	- Elysium
	

- Adjusted a few previous formations.
- Further AI adjustments

- Set-Up & Balance
	- Oman moved from puppet to Dominion
	- Zanzibar moved from Abbasid tributary to Oman Personal Union.
	- Ache given North Sumartia and western Malay
	- Johore given Prk and made a vassal of Ache

- Building changes.
	- Artillery foundries added to:
		- Bohemia
		- Silesia
		- Tataria
		- Holland
		- Sweden


******
0.40 Saturnalia released for the Holiday Season. 

- Music
	- Changed the opening Music to Songs of Yuletide a PDX Christmas Carol and added the song to the music player.

- New Custom Formations
	- North Sea Empire
	- Sweden
	- Holland
	- Andalusia
	- Asturias
	- Navarra
	- Aragon
	- Morocco
	- Algeria
	- Assyria
	- Avevelyn
	- Arbil
	- Ardalan
	- Kharwarazm
	- Khorasan
	- Kabulstan
	

- AI changes
	- AI will once again make use of the higher infamy threshold, should lead to more aggressive ai expansion. 
	- Merchant Republics will aim for larger navies.

- Balance
	- Disabled the Carolingion journal entries from the HRE. Will be reworked later.
	- Adjusted colonial claims in Africa.

- Bug fixes
	- Algeria now should correctly annex their rebels in the starting war
	- Algeria has Frontier Colonization, incorrectly gave it to their rebel vassal by mistake.
	- Removed the Algeria journal entries and events used from voice of the people.
	- Many other fixes

0.39.2 for 1.5.9

- Decisions
	- New Decisions
		- Remove Boyars. Any nation with this modifier can remove it once they pass certain laws.
		- Remove Cossacks. Any nation with this modifier can remove it once they pass certain laws.
	- Edited Decisions
		- Remove Excessive Noble privileges. Added more law requirements to make it similar to Boyars.
		- Open up for Ming. This decision was basicly free to the player, I added law requirements.

- New Custom formations
	- Italia
	- Savoy
	- Tuscany
	- Lucca
	- Modena
	- Parma
	- Papacy
	- Venice
	- Genoa
	- Lombardia
	

- Gave Inca command economy at game start. 
- Removed my population growth adjustments that were nesisary during the beta. 

0.39.1 for 1.5.9

- Formations
	- Basileia Romaion now has the intended sized formations
	- New Custom Formations for:
		- HRE
		- PLC
		- Aztec
		- Hungary
		- Bulgaria
		- Illyrikon
		- Wallachia
		- Moldova
		- Tranysalvania
		- Serbia
		- Epirios
		- Morea
		- Armenia
		- Georgia
		- Syria
		- Aegypt
		- Afrika
		- Kyrencia
		- Mesopotamia
		- Arabia
		- Persia
		- Tataria
		

	- Journal Entries
		- Modified the new PLC JE to only require 5 Ruthenian states instead of 7.
	- Events
		- Modifired Greater PLC event to include Ruthenian and Lithuanan.

0.39 for 1.5.8

- Further refinement on Basileia Romaion military formations. (Further work still needed formations larger than intended for some reason)
- Added Market price impact modifiers to various state traits and modifiers. 

- Bug fixes
	- Fixed Chinese colony being named Cornwall
	- Fixed Pentarchy event spam.
	- Fix for Moldova event
	- Various other fixes


@everyone
0.38
for 1.5.7

- Military formations for Basileia Romaion. Rest of the great powers still being worked on.
- New Game options - These options can be turned on before starting a new game
	- By default Ming, Japan and Mughals start off as reconized powers but this can be turned off in the options
	- There is also a option to turn some of the North American tribal nations into unreconized from decentralised. 
- Merged and reworked the Exarchate journal entries and events into the Palaiologos Reforms.
- New and reworked/reblanced events
	- Improved the Chariot racing events.
	- Improved the Pentiachy events.
	- Improved the Exarchate events.
	- Other Misc events tweaked/added
- New and reworked/rebalanced decisions
- Doubled the minium birthrate from the very low 1.5 standard. 
- New and reworked/rebalced Buildings, Momuments, Production methods etc.
- New State traits
- New Resources
- New Companies for Basileia Romaion, Venice, Genoa, Aegypt and more.
- New Politcal Parties for Romaíoi culture nations.
- Reworked History
	- Changes thoughout the World map.
	- Adjusted starting buildings, pops, trade routes
	- further decreased population in some areas. 
- Infamy changes
	- Higher thesshold before negative effects but lower decay.
- Map Graphics
	- Slightly adjusted the Map to be a bit less white and darker.
	- Gave Decentralized nations a cleaner darker look.
 -New Flags and Country names for Basileia Romaion depending on Government form.
- New countries and formables

- This has been WIP since start of 1.5 beta and includes many tweaks and bug fixes not mentioned above. 

Removed from the beta version to be worked on later - Now Integrated Archaeology, Astronomy & Expeditions from the amazing Morgenröte mod!


0.36 Change notes.
- New Nations added
	- Aniu Mosir, Ryukyu Kingdom, Buryats, Uyghuirstan, Manchuria, Outer Mongolia, Inner Mongolia, Qinghai, Dzungaria, Kham, Jianzhou, Warka, Haixi, Xibo, Nanai, Orochoni, Solon, Nivkh, Khorchin, Chukchi, Kamchatka, Evenks,
- New Modifiers
	- War for China, Righteous Cuase, Inward Perfection
- New Religions
	- Confucian, Taoist, Shenist
- New Celestial Empire Government form.
- New Decree Romanization. 
- Few Decentralized nations in Africa moved to Unrecognized.
- HRE/France
	- Removed the Revolution decision 
	- Reworked the DLC monarchy event so if you get Napoleon as your ruler your laws, government and name should change at the same time.
- China revamp.
	- Yuan broken up into many vassals.
	- Ming Starts off in a revolutionary war against Yuan.
	- Ming has new temporary modifiers to make them able to defeat Yuan (Observe games has Ming win about 70% of the time so its a close war)
	- Outer Manchuria is mostly tribal with small amounts of Japanese colonial control. 
- ERE
	- New journal entries related to centralizing the Balkans and Anatolia.
	- New ERE event to happen when passing any form of economy changes away from traditionalism. 
- Italy
	- Venice puppet Dalmatia
	- Genoa Puppet Pisa
- Sakhalin/Outer Manchurian Hubs given their Japanese names.
- Laws/Politics changed in various countries. 
	- Agarininism changed to traditionalism as starting default agraininism leads the ai to passing Homesteading and never aspiring for Interventenalism.
- Added Mughals, Tatars and Persians to Japanese, Han and Mongol of cultures that will not join customs unions.

- Looking for help coming up with Latin/Greek themed names for the hubs/states in Elysium and Australis. Elysium more Latin themed and Australis bit more Greek themed but with some overlap as both are settled by a mix of Greek and Italians.

0.35

- Added a new Ideology called Frontier Expansionist. Which is in favor of colonial exploitation and added it too dozens of nations Landowners and Merchant guilds to encourage them to pass that law.
- Added Colonial Fervor modifier to most colonial nation to it gives 25% Colonial Growth Speed and 25% Migration attraction for 10 years.
- Colonial Subsidies now only gives slight income.
- DEI and EET are now Chartered Companies.
- Venice and Genoa will annex their African colonies if they pass any form of colonialism.
- Re-added Italy as a formable nation.
- Add Journal Entries and events related to Vlachian unification and a path to do it peacefully for Wallachia and militarily for Moldova.
- Landowners renamed to Boyars from Commonwealth, Moldova, Wallachia
- New Modifiers added thoughout the game some have decesions related to their removal.
- New Modifiers
	- Jihad, Cossack's, Tribal Warriors, Shah of Shahs, Satraps.
- Map changes
	- Adjusted Navara/Asturias Borders
	- Changed Florida making an independent Seminole tribe and giving the North to Louisiana.
	- Suakin split from Red Sea dessert
	- South Africa adjusted
	- Cyrenaica added as a puppet of Aegpyt.
- Decreased the amount of infamy reduction from Palaiologos Reforms.
- Culture/Religion
	- Misri and Berber changed to majority Shiite as they were part of the Fatimid Empire before their reconquest.
- Fixed negative aged Napoleon taking over the HRE and other negative aged characters related to the DLC.
- Removed the requirement for the AI nation to have a navy of at least 25 Navy to pursue colonialism
- Lowered the annex subject decision to require +75 relations from +150 as max relations are only 100 not 200 like I thought.
- Fixed the Suez canel journal entry
- New DNA for Aurelia Palaiologos
- New characters for Cyrenaica, Aegpyt, Africa.
- More First/Last name for Romaioi culture. 
- Other changes I probably am forgetting to mention

0.34.1

- Fixes the society tech tree being misplaced. 
- Added a Boyars Modifier to the Commonwealth.
- Added Tithe Modifier to Papal States

0.34 "Break the Yoke"
Continuing the work of 0.10 "Under the Tatar Yoke" to further enhance the Russo-Tatar region.

- Map changes
	- Ruthenia starts of split between Commonwealth and Ryazan.
	- Perm has been expanded along the Novgorod border.
	- Tver, Galich, Nizhny Novgorod, Transylvania, Galacia-Volyynia and Ardalen added to the map.
- Diplomacy changes
	- protectorates now pay 0.20% of their income to their overlord up from zero. tributaries now pay 0.35% up from 0.20%.
	- Novgorod moved from Golden Horde tributary to Sweden protectorate.
	- Serbia, Wallachia and Moldova start off as protectorate of Hungary
	- Most of the other minor Russian princes now pay their tribute to Muscovy on behalf of the Khan in the Golden Horde.
- Pop changes
	-Ruthenian pops are much more rebellious as they stive for their own country fighting Pole, Russian, Magyar and Tatar.
- Decisions
	- New Decision for Muscovy. 
- Modifiers
	- Changed the HRE modifer and moved some effects to a new modifer called Noble Privileges.
- Releasable nations
	- The various ERE themes are able to be released
- Many European Autocraticies changed into Oligarchies to (Feudal).
- Other laws changes thoughout the game mostly some serfdom changed to either tenant farming or homestead law.
- Other changes and Bug fixes

0.33 The Spice Must flow

- New Good "Spices"
	- Produced by new building type spice plantation which by default produces 15 spice per level.
	- Is a luxury food wealth 20-99 but also used in Food Industries.
	- Food Industries produce more groceries than before but require 5 spice per level.
- Levant.
	- Syria created from ERE/Aegypt levant. Made them another rebellious Exarchate.
	- Palaiologos Reform to retake Syria adjusted to Include Antiochia but removed Damascus and Transjordon from the requirement.
- Ming, Yuan and Japan will no longer join custom unions idea from "China Refuses Customs Unions" Mod as well as from feedback here. 
- New State Traits.
	- Added Anatolian Plateau, Pannonian Plains & Cold Water Port State traits idea from "More State Traits" Mod and "Cold Water Harbours" Mod.
- Added in Kuwait and Arbil as a new Persian Subjects.
- Latinoi added as a primary culture of EET.
- Added new Modifiers
	- Spice Trade profits modifier to EET,DEI,OMEN,Java and Ceylon.
	- EET Dividends to Genoa and Venice as they are investors in the EET.
	- Removed the hidden Abbasid buffs (was an invisable tech called arab_mod) They have been replaced with 3 new National Modifiers Caliphate, Hajj and Holy Warriors.
- Economy pass
	- Decreased the large amount of unprofitable iron,coal,lead and sulfur mines in Western Europe.
	- Adjusted starting trade routes removing unprofitable ones and added new ones as needed. Venice and Genoa now start off much stronger economically. 
	- New Trade routes to get Spice from Java, India, Dutch East Indies to Europe and Asia.
- Balance adjustments
	- Decreased Service Production to make it more profitable.
	- Added very slight innovation to Arts Academies and slight education access to universities similar to Arts Academies Produce A Little Innovation Mod though my values are a bit lower.
	- Private construction can now only build in incorporated states though government can build in unincorporated.
- Map
	- Integrated More Rivers Mod.
- Localisation
	- Nahuatl & Quechua now use their proper native names instead of the base games spanish thanks to Kuorio Paradinight.
- Fixes
	- Fixed not working Palaiologos Reform events that were supposed to happen while passing laws not happening should now currently happen while passing more progressive laws.
	- Fixed the HRE french monarchism journal entry not working since last 1.3.6 
- Many more small tweaks/fixes.

0.32 for 1.3.4 / 1.3.5

- ERE
	- Rewrote the Palaiologos Reform opening event and changed the graphic for it and the associated Journal entry.
	- Exarchates of Illyrikon and Bulgaria starts out in revolt. Rumor has it Venice is behind this rebellion.
	- Adjusted the border between ERE, Serbia and Hungary.
	- Re-added "Treaty Ports" within the ERE for Genoa and Venice. 
	- Renamed various cities in Serbia/Bosnia to Greek names.
	- Added a few Themata subjects Epirus, Trebizond and Morea.

- Hungary
	- Serbia used the turmoil within the ERE to fully break off from Konstantinoples authority, though without the protection of the ERE there is little chance they can hold back the Hungarians.
	- Hungary starts off with a war to subjugate Serbia.
	- Greatly Improved Hungary they are now a major power and a strong opponent for the ERE. Will need to compete to dominate the Balkans.

- New World North
	- New Flag for Elysium
	- Lowered Arable land a tad bit in some locations.
	- Gave Elysium a tiny foothold in West Virginia so they have a permanent interest in Mid West. This will fix them not colonizing the mid west. (Note they still have truces stopping them from colonizing certain areas until the truces expire).
	- Gave Louisiana a tiny foothold in Arkansas for similar reasons.

- Aegypt and North Africa
	- Added in the Klysma (Suez) Canal into the game at start. In order to make trade correctly flow though the red sea towards Aegypt instead of going all the way around Afrika. Think of it as the more modern version of Pharaohs Canal or even just the basic trade unloading in Pelosion then travelling by road and reloading in Klysma. Did some other canal changes based on the various canal mods to make it profitable.
	- EET - Emporía Erythrás Thálassas (Red Sea Company in greek) Owns the Canal and its profits.
	- Renamed all of Aegypt and most of North Africa & the Levant to their Greco-Roman names.
	- Adjusted Siwa, Mut, Farafra's borders.
	- Increased the territories EET controls in Madagascar.
	- Also increased Dutch East Indies Holdings in this region and gave Zanzibar and small foot hold.
	- Increased Zanzibar up the Kenyan Coast.
	- Broke Algeria up into 3 main Berber Emirates and other smaller decentralized tribes.

- Added New independent (In Aegypts Custom Union so their trade flows back towards the red sea) colonial Nation in Oceania with the new culture Apoikoi (Settler or Colonist in Greek)
	- Settlers throughout the ERE and Italy looking for a new home are getting on ships in the Aegyptos port of Klysma sailing though the red sea into the vast Indian ocean and making land fall in hostile but unspoiled new lands.

- HRE changes
	- New vassals Burgundy, Flanders, Franconia and Swabia. Their AI will work to consolidate by annexing these vassals then move on to further subjugate their surroundings but this makes them a tad weaker early on but still a big blue blob end game boss to overcome if your playing one of their neighbors. 
	- Adjusted the borders of Franconia and Saxony.
	- Burgundy starts off in rebellion.
	- re-added Flemish back in for the primary culture of Flanders.

- Italy
	- Milan has been given the eastern most of Piedmont. 
	- Savoy-Piedmont renamed to just Savoy.
	- Renamed some Venice controlled cities from Croatian to Italian names.

- Diplomacy/Relation changes
	- Added colonial and other expansion wars at game start.
	- DEI, EET, Oman and Lan are all rivals with each other at game start as their battle it out for trade in the Indian ocean and beyond.

- Graphics
	- New flags for Elysium, Austalis and Savoy-Piedmont.
	- Changed new World city graphics, European south american colonies will now use generic European city graphics instead of the "Latin" ones as they are reserved for Mediterranean and Elysium.

- Other Balance Changes
	- removed the eastern_german culture that I put in the game and replaced the scattered German pops in eastern lands to Saxons.
	- Lowered Elysiums SOL buff to lower immigration attraction a slight bit.
	- Certain nations can bypass Hostile terrain colonization speed debuff without the mission to civilize tech.
	- Various bug fixes

0.31.0
- Adjusted releasable nations. 
- Increased the amount of radicals within the HRE at game start.
- Added Silestia and Prussia as Commonwealth Duchies.
- Changed renamed cultures to brand new cultures in the backend.
- Added new East German Culture for Germans in Silestia, Commonwealth, Hungary.
- Added infamy reduction to each Palaiologos Reform Journal entry to help with infamy gained from the various revolts that happen during the reform progress along with a big one at the end.
- Intrergrated the Italian Beauty mod https://steamcommunity.com/sharedfiles/filedetails/?id=2985958302 Give his content a like and favorite. He also has a Italian Beauty Ultimate https://steamcommunity.com/sharedfiles/filedetails/?id=2988185092 if you subsribe to it just put it under BR in the load order. I personally recomend playing with Miniature World and Miniature Roads mods as well.

0.30.2

- Voice of the People content
	- Added in the new French monarchy journal entry to the HRE
	- Added in the new conquest of Algeria journal entry to Andalusia. 
	- Frances new characters/events added to HRE
	- Fixed HRE flag should only switch to France flag is goes Republic or liberal Monarchy.
- Lowered Constuction cost by about 33%


0.30.1

- Fixed a interest group bug that caused "Barricades" to be placed all over the map.
- Adjusted the HRE/Italian border regions states/pops/buildings added Provence and increasing Milan, Venice and Savoy-Piedmonts borders further into the Alps.
- Minor Adjustments in North Africa.
- Other 1.3 related bug fixes.

0.30

- Updated every thing touched by the 1.3 update to be compatible.
- Bug fixes to the Palaiologos Reforms.
- Created many new decentralized nations in north africa and adjusted the borders of many more.
- Decided to continue with what I had done previously in the New World by making all decentralized nations of the same culture the same color.
- Testing out a few new flags

0.29.1

- Fixed ERE loading Sickman journal entries instead of Palaiologos Reforms.
- Renamed Adana to Cilicia

0.29 'Heirs of Hardrada'.

- Reverted the mods tech tree from to 0.25 back to later version as it did not fix the lens CTD.
- Reverted innovation and constuction to back to base game levels and instead progressively increased the cost of tech and increased the amount of construction buildings cost. 
- Toned down the factors that made immigrants flood into elysium and italy. 
- I am getting closer to isolating/fixing the lens CTD, believe its related to the States and or a file dependant on the states file. 
	- Currently is mostly only affects europe and more so at start of game. Current Workaround is to avoid the building construction lens especially zooming in and out while on the lens and building via other paths until a year into the game then the lens system should function fine.
- Reworked the startscreen and removed the loadscreens for now as they are WIP if you want them back there is a sunmod available on steam that includes them.
- Don't think Thumbnail properly updated last upload should now be changed.
- Few other bug fixes.
- Reverted Africa's state borders to how they were in 0.25 let me know if it fixes the CTD.

0.28 'Heirs of Hardrada' Should fix the lens CTD. Fingers crossed and or Prayers.

- Reverted the mods tech tree to 0.25 to fix the lens CTD.
- Adjusted Romaioi and Elysian culture decsions to fix non ERE countries causing revolts within the ERE for taking decesions. Now ERE's decesions are seperate from a more generic version of other nations in the Romaioi/Elysian cultures. 
- slightly lowered all souces of innovation as it was quite possible to max tech by the early 1800s.
- slightly lowered all sources of Construction this should help with game slowing down as the world fills with buildings.
- Continued renaming various colonies this includes all of Japans colonies, Vineland and New Angland as well as some North Sea Empire holdings. thanks to Valksend.
- Updated Thumbnail and screenshots

0.27.3 'Heirs of Hardrada' Another small update to try and address CTD. Fingers crossed and or Prayers.

- Discovered a significant error max colonial growth was set to a lower level than minimum colonial.
- Removed German and Italian nation formation as possible cause of a crash.
- Renamed States and Hubs in Vineland and missed ones in New Angland. Thanks to Valksend.

0.27.2 'Heirs of Hardrada'

- American Colonies renamed to New Angland
- Colonial British renamed New Anglander.
- New Angland states and cities renamed to Anglo Saxon names thanks to Valksend.
- New Ruler for New Angland, changed from Republican government to Monarchy and new flag based on the Medieval English Flag.
- Starts off as a Protectorate of North Sea Empire. They are very unloyal and should revolt once they are strong enough this is to encourage migration from England.
- Continued renaming the british isles to a mix of Norse or Anglo Saxon names.
- Vinland and Elysium given total seperation law for church in state this allows migration to flow to them within any market they are part of.
- Elysium starts off in the ERE Market. This is also to encourage migration. ERE AI is supposed to try and fully subjugate them and they will try and breakway further once they are more populated.


0.27.1 'Heirs of Hardrada'

- Renamed some states in Britan with Norse/Anglo-Saxon. thanks to Valksend.
- Renamed English to Anglo-Saxon
- Added new decisions to intergrete Personal Unions and certain other subjects peacefully if certain criteria is met. 
	- North Sea Empire can integrate Norway.
	- Swedan can intergrate Finland and Baltic Duchies.
	- Abbasid can integrate Tribal Bedouins.
	- ERE can integrate Etaireía Indía.
	- Dutch can integrate Dutch East Indies and Dutch West Indies.
	- Japan can integrate Shiberia and Pashifikku
- Adjusted some borders in Scananavia
- Adjusted some Borders in Indonesia/Oceania

- In additon streamlined some AI processes possibly fixing potential errors. 

0.27 'Heirs of Hardrada'

- New Countries England, Wales, Scotland, Ireland & North Sea Empire.
- North Sea Empire
	- Replaces Great Briton as the dominate power in the british isles created from the Denmark tag.
	- Starts off with an English rebellion.
	- Scotland, Wales, Ireland are disloyal protectorates. 
	- Danish culture renamed to Dane.
	- Rulers dynasty is Sigurdsson 
	- New generals, admrirals and other characters.
	- New religion decesion that allows you to convert to the norse faith
	- Decesion to accept English as a primary culture after the rebellion is crushed.

- Golden Horde/Tartaria/Khazar Khaganate
	- Khazer Khanate renamed to Khazar Khaganate	
	- AI change to take the decesion to go Jewish and Sunni were both 5% previous update were 0% jewish 5% jewish seeing the Khazar Khaganate form is fun but its happening to often. I changed the change to go sunni to 10% keeping the jewish at 5% to make it happen about half as often.
	- added relation buff/debuff depending on what religion is taken going Sunni will improve relations with other Sunnis but upset the Yuan. Going Jewish will upset Yuan less upset Sunni nations and make ERE ai like you more. As they were often allied against the Caliphate historically.
	
- Japan changes
	- Market Changed to Kanto
	- Changed ai to focus on nationalism 
	- Renamed IGs
	- Added new modifiers to IGs and national
	- Changed Shogunate map color from green to deafult red.
	- Removed quinine technology at start as I did not intend for them to go on colonization blitz.

- Adjusted trade routes, removing unprofitable ones etc.
- Changed the Caspin Sea modifier
- Added relation debuff to other change religion decisions.

- Crash caused by zooming in and out while on the building lens should be fixed. Believe it was caused by one of the below changes.
	- Reverted the fishing buildings I added to the Caspin Sea last update.
	- Reverted Formosa border/object changes for now.

- Fixed bugs related to achievements. All base game achievements are possible even if the base game nation related to the achievement doesn't exist. When the nation doesn't exist I made the nation that is in the location able to earn the achievement. Achievment descriptions has not yet been updated though.
- Many more bugs fixed and other changes.


0.26

- Added the Academia technology to Golden Horde & Mughalstan
- Added starting a university to Astakhan & Delhi
- Made it so Arts Academies can only be built in incorporated states. 
- Adjusted innovation from universities from 2/3/4 to 1/2/3.
- Northern Italians given dialectics technology allowing them to use Philosophy Department and keep that Renaissance vibe going. 
- Further colonization speed adjustments
- Minimum colonization speed increased from 0.05 to 0.2 progress a month. Maximum Speed lowered from 2.0 to 0.35 a month. It is possible to get above the "maximum" with modifers.
- May seem low but with a few more nations starting the game with colonization active it is still possible for the worlds "open space" to get colonized earlier than historically in most areas.
- Added the form Germany and Form Italy mechanics back into the mod.
- Forming Germany only possible if the French HRE doesn't exist anymore or has become France and lost the frankish territory.
- Forming Italy only includes the Northern Italian states. 
- Many improvements to the AI, lots more objectives behind the scenes pushing nations to wage war and persue realistic goals.
- Added 5 new state traits Caspin Sea, Pontic Forests, Hyrcanian Forests, Ispahan Mines, Mesopotamian Floodplain.
- Added decision for Persia to switch relgion to Zorosatrian for real this time.
- Quite a  few Map/state adjustments Africa and Asia/Pacific.
- Japan given a couple new colonial subjects as well as new leaders/flags for all subjects.
- Genonese Africa Company added a new Chartered Company along the African coast.
- Al-Andalus given some strips of land along the coast.
- Dutch East indies given some islands in eastern Indonesia and outpost on Australia, Formosia and Madagascar.
- Romaioi India Company (br_romaioi_india_company) given a outpost on Madagascar
- Formosa split between Ming/DEI and indigenous peoples on the eastern side.
- lots more work planned for Africa.


0.25

-Reorganized all new world native tribes.
	-Created dozens of new tags in South America breaking up the huge tribal kingdoms.
	-All tribes that are related by culture currently share a common map culure. (Orginally I haden't created colors for south america yet but felt it was such a clean look I extended it to north america.)
- New Mughal Culture they are a iranian/central asian culture that rules over their indian empire. Currently make up less than a percent of Mughalstan but control 75% of the power. 
- Adjusted colonization speed. This adjustment lowers the max speed without touching the minimum speed. So shoulden't affect small nations under 5million population but will slow down huge nations with millions of pops from colonizing so fast.
- Some further tweaks to the Great Palace and Palace Complex. Now require appointed or elected burecrats to change to burecratic prodution method.
	- Andalusians indian ocean territory has been given to the remade tag of dutch east indies to tone down their economic power a bit as they are a bit too strong right now.
- Made dozens of new rulers for nations that currently had random rulers which could lead to the ruler not being the main culture or religion of their kingdom tribe etc if it had multiple cultures.
- Fixed a crash caused by the HRE forming Germnay. Forming Germany/Italy is currently disabled, will look at restoring later under more unique parameters.

0.24

- New Colonial Cultures: Colonial French, Colonial Italian, Colonial German, Colonial Dutch, Colonial British, Colonial Andalusian, Colonial Japanese & Colonial Chinese
- Renamed Chinese, Japanese and Italian new world Colonies Hubs/States.
- Moved the new monuments from infastucture to government.
- Added new production methods to Great Palace and Palace Complex allowing the player to nerf the power of the Aristrocrats well strengthing the Bureaucrats.
- Map adjustments in the New World, Africa and Arabia.
	- Few new tribal nations in North America and adjusted a few others.
	- New Dutch Atlantic Company Colonial Tag.
	- Adjusted to Nedj tribes borders
	- Slighly Adjusted Exarchate of Africa's borders to be smoother and nicer looking.
- Adjusted new world and african colonial nations starting politics.
- Some fixes for the Default AI.
- New Monarchy flags for Mali, Milan, Hungary, Bavaria
- Merged Bambara culture into Mande. 

0.23

- Fixed a broken HRE decision that caused a crash.
- Map adjustments
	- Moldova given most of Besserabia.
	- New Vassal of Mughals between them and Tibet.
	- Adjustments in Central Asia, Bukhara expanded, Kokand removed, Persia expanded along the Baluchi coast and now control Herat in western most Afganistan. Pashtunstan given back to Mughals from Afganistan.



0.22

- New Thumbnail Image
- Set up 10-20 year truces between certain colonial tags and decentralized tribal nations to prevent colonizing certain areas too quickly.
- Added thoughput bonus to literacy. This was a feature in Victoria 1 and 2 left out of Vicky 3 some reason. 50% Literacy would equal about 10% thoughput bonus.
- Slightly lowered literacy for tribal nations
- Slight literacy bonus on capital.
- Removed the great city stait trait as I now have a local state modifier for that effect.
- Adjusted arable land so it similar to 1.2 base with some slight adjustments.


0.21 'Steam Renaissance'
https://en.wikipedia.org/wiki/Aeolipile

- Added new Characters and adjusted the politics of the Northern Italian Countries, Iberia, Russia, ERE and thoughout the world to fit in more with their national flavor. 
- Lombardy, Florence, Modena and Parma are now ruled by enlightened constitual Monarchs based on famous Renaissance Dynasties
- New Flag for Florence.

- Balance/map changes
	- Added logging buildings especially states that have a bonus to production to south east asia, southern india, south america, central amercia, europe and a few in africa to help boost the worlds supply.



0.20

- New "Monument"
	- Great Port is a special building I have been toying with since version 0.1 but instead just increased starting ports in the states I had been trying it. Well in 1.2 the AI is now obsessed with downsizing ports in their capitals and dispite weeks of trying to prevent it I coulden't get the ai to stop which caused issues with immersion with these great ports turning into minor anchorages. So I introduced new Momument "Great Port" in Genoa, Venice and Konstantinople it is equivilent to a level 5 port with some extra bonuses. 

- Balance
	- Adjusted trade routes thoughout the game removing unprofitable ones and creating new more profitable ones.
	- Improved starting economies thoughout the game making sure nations started with most profitable production methods and removing/adding buildings where it made sense.
	- Adjusted starting relations to be less extreme example -150 in 0.19 will be -90 etc. 
	- Removed the more aggressive ai modifications I believe 1.2 is more agressive as is.
	- Did a balance pass at the mods unique techs and modifiers making use of new 1.2 mechanics.

- Fixed errors and bugs from the error/debug logs.

- Map changes
	- Antarctique control extended along the coast at game start.



0.19

- Map adjustments
	- Increased Danish control of all coastal land near the danish straits
	- Andalus now has control of Zaragoza.
	- Croatia has been given some of Bosnia
	- Andalusian adjustments in east africa.
	- Two new decentralized bedouin nations in the arabian dessert to repisent land not controled by any central government. Only Abbasids are allowed to colonize it. 
	- Emirate of Damascus and Oman new subjects of Abbasids
	- Kashmir, Bengal, Ladakah, Sindh, Rajputana, Indore, Orissa, Manipur and Gujarat new subjects of Mughals.
	- Many changes in Indian ocean. Islands split between Oman, Al-Andalus, Dutch and 'Etaireía Indías' a new Colonial Company which is a subject of Aegypt controling the Red Sea trade and a small outpost on India.

- Balance
	- Elysium has had its starting economy improved.	

- Diplomacy
	- Bosnia and Montenagro start as protectorates of Serbia.	

- Localisation
	- Colonial nations will now be called Colonial Administration or Chartered Company.

1.2.2 Bug fixes
	- Fixes a endless looping error related to the British India Company in 1.2.2	

0.18

- Modifier adjustments:
	- New state modifiers Magnificent City, Grand City & City of Worlds Desire added.
	- The Pentarchy modifiers are now tied to their specfic states instead of showing up on the country modifiers..
- Asia
	- Ming Emperor's Surname changed to the historical Surname of the Ming Emperors "Zhu".
	- Ming now start with Claims on all Yuans provinces with Han primary culture.
	- Ming and Yuan now start as rivals
	- Yunnan starts as a substate of Yuan and Han is now a primary culture.
	- Adjusted Javan Empires Borders.
- Tartaria/Russia
	- Adjusted Perms Borders and switched them from a Vassal to a tributary.
	- Novgorods borders expanded given naval access.
	- Adjusted starting buildings and pops in many states thoughout the region.
	- Circassia and Dagastan added as tributaries of the Golden Horde.
- Euope	
	- Increased the Papal States borders south a wee bit to match their Medieval borders.
- Africa.
	- Zanzibars has at its borders extended south down the Africa coast including a few small islands off of Madagascar.
	- Adal and Abyssinia's borders have been adjusted.
	- Madagascar broken up into 5 decentralized nations.
	- New flags for Alodia and Makuria
- New World
	- Adjusted many tribal nations though-out the new world
	- Added claims to colonial nations to make use of the new 1.2 feature that blocks nations from colonizing states that are already claimed. Should lead create less border gore!	
- New state traits to make it harder and slower to colonize the Sahara, Western Australia, Siberia and Northern Canada similar to how malaria works in function once you have the tech can colonize full speed.
- Consolidated the unique agressive expansion ai back into base game territorial expansion now that 1.2 ai is more aggressive.
- Consolidated the less attrition modifications now that 1.2 has less attrition.
- Consolidated the unique ERE subject types. They may be brought back later for now they are handled via the unique governments of EREs subjects. Greater Principality or Kingdom will be a Exarchate and City State or Principaility will be a Themata. All subjects are now Puppet or Protectorates.



0.17

- Fixes the missing base values for pop investment for 1.2
- Fixes broken diplomatic plays for 1.2
- Revolt events now tied to decisions and won't happen seemingly at random.
- Started work on redrawing the borders of Africa so far have complted egypt and the sudan.
- Ming China properly named.
- Adjusting starting set up for balance. Goal is for more indepdent nations less subjects at the start.
	- ERE changes:
		- Vlach principalities now indepdent at start. Romaíon, Hungary, Golden Horde and Commonwealth all have the goal to subjugate them.
		- Serbian principalities also start off indepdent.
	- Persia changes:
		- The central asian khanates start off independent.
		- No longer starts with a war to annex Afganistan but has claims to do so.
		- Dagastan switched to a tributary of the Golden Horde.
	- Abbasids vassals switched to tributaries.
	- Abbasids no longer start with a Jihad to take Syria but instead start with it.
		- Removed their starting Jihad Buff.
		- Plan is to refine arabia with it staying mostly Abbasid but with some tribal areas. 
	- HRE changes:
		- Annexed Swabia and Franconia.
		- Frankish is an accepted culture.
		- Puppets changed into Protectorates
		- Dutch borders altered but they start off indepdent.
		- Aquiteine adjusted.

0.16

- Compatible with 1.1 and 1.2 Beta
- Re did all of the boundries in the new world creating mulyiple new colonial tags and 100s of new decentralized tribals.
- Re activated native uprisings.
- Lowered attrition by 75% from base levels.
- More Aggressive AI.
- Added Malaria to the Amazon rainforest to make it less colonizible early on.
- Updates and localisation fixes for the Palaiologos reforms.
	- Must complete the Syria conquest before you can do the other conquest journal entries.
	- Added a Naval reforms.
	- Added new modifiers for completing the reforms.
- Added a start up event with the games lore.
- Tweaks to India 
- Bug Fixes
	- Fixes various coat of arms having hot pink eyes
	- Changes all the uprisings/revolts to subject annexation wars from native uprisings due to native uprising wars no longer a annex war in 1.2
	- lots more 


0.15.1

- Added three new Palaiologos reforms related to reconquest 
- Added required Palaiologos reforms from 4 to 6.
- Mali has annexed Sussa and now have acess to the world market!
- Ming China now properly ruled by the Ming Dynasty!
- Elections Fixed the half dozen nations who were not set to have elections until the 1830s to now have their elections in the 1730s.
- Fixed the final referance to the Tanzimat reforms.
- Fixed the Yuan's Mongol provinces starting as unincoperated.

- Earlier hotpatch removed Vlach rebellion events which are not finished will be in next big update.

0.15 'Palaiologos Renaissance'

- Basileía Romaíon Update:
	- Added 10 new Journal entires similar to the base games Ottoman Sick Man and Tanzimat reforms.
	- Dozens of new events related the these reforms. 
	- Basileía Romaíon has now starts with Hereditary Bureaucrats and Peasant Levies as they start with the Themata system. They now need pass Appointed Bureaucrats and Professionak Army to get the Tagmata Decision.
	- Basileía Romaíon now needs to pass the laws Inteventionism and Protectionism before ending Latin Trade rights.
	- Basileía Romaíon's scripted rebellions now only happen if you take take certain decision. (The rebellions are hidden so you don't know which decision will give you what rebellion but they generally happen a week or two after taking a decision)
	- Fixed the Exarchate of Africa Journal entry and event, fixed various typos from these events.
	- Replaced North Italian pops in the ERE with Latínoi. Latínoi are a new culture made to reprisent all catholic latin speakers in the ERE italian french etc whom primarily live work in the major port cities.

- Asia:
	- China split between Mongol Yuan Dynasty in the north and Ming Chinese in the south.
	- Ming China starts with Mandate of Heaven Modifier.
	- Great Yuan starts with decentralized Khanate Modifier.
	- Majapahit (Java Empire) replaces dutch east indies.

- HRE
	- HRE Can turn into Revolutionary France if they turn into a republic (Their is a decision if the player wants to speed this along)

- Further adjustments related to the earlier time-line
	- Lowered worlds population by around 15%
	- Changed the Swedish rulers Surname as the napoleonic wars have not happened (yet)
	- Further adjustments to starting laws, tech and literacy.
	- Dutch own South Africa.

- Balance/ Other Chnages
	- Changed Northern Italian republics and the papal states now start with poor laws and Garunteed Liberties. Have also made other adjustments to make them more econimically and politcally stable.
	- More National modifiers added/adjusted. Including making more unique images for the ones in current use.
	- Rebalanced Secessionist revolts by lowering required turmoil to 35% from 50% increased base chance when at the turmoil from 0.0001 t0 0.0005, changed limit from once every 5 years to once every 10 years.
	- Changed Golden Hordes Vassals into tributaries, moved Novgorod from Swedish protectorate to Golden Horde tributary
	- Fixed bug that caused Abyssinia and Nubia to revert back to their base game names Ethiopia and Sudan.
	- Added a decision for the player to switch state religion to Zorosatrian as Persia.
	- Gave the Golden Horde a 5% chance of changing their state Religion to Jewish and restoring the Khazer Khanate
	
- Many more minor tweaks / changes	

0.14 'Rebellion'

- Adds dozens of new events some tied to decisions that deal with adding regional, noble, cultural and military revolts to ERE and HRE that should fire over your campaign. It woulden't really be a ERE mod without General/Nobles revolting and possibly making a claim for the purple themselves would it?
- Adds many new releasable countries and adjusts many others some of these new countries may be ones that revolt.
- Many new national modifiers and adjustments to nearly all others.
- Adjusted the Great Palace, Hippodrome and St Sophia modifiers.
- Lots more steamlining in the way the mod loads.
- Adjustments to literacy and research speed making it slightly faster than before.
	- Removed all Public and Religious schools at game start the later just because it led to starting literacy higher than I intended now Private schools much more prevelant at start.
- Undid my earlier change that made all subject types able to engage in diplomacy that is an Exarchate unique feature.
- Fixed dozens of localization bugs
- Fixed the final remaining provinces that did not have the correct starting population
- Japan once again starts as still being Shogunate.
- New coat of arms for a few nations.
- Exarchates now always use their own flag.
- Improved Cultural Migration hopefully Elysium start recieving much needed Immigrants earlier. Game tip would be to join the ERE or HRE market as that will get you a ton of pops migrating over.
- and much more. Also set up the Mod on Github so feel free to follow the mod over there where you can see all the changes or download directly. https://github.com/AndHope/Basileia-Romaion

0.13.1 (VER27 on PDX)

- Small update primarily focused on fixing the Bulgarian Rebellion bug. (There was a line of code that made it fire any time there was a Bulgarian Secession movement this caused a endless loop once turmoil hit a certain level.)
- I rewrote the event from scratch it now has options to deal with the revolt.
- Other tweaks to HRE pops
- Next Update will focus on revolts in all the major empires.

0.13 Saracen Update

"By the 12th century, "Saracen" had become synonymous with "Muslim" in Medieval Latin literature. Such an expansion in the meaning of the term had begun centuries earlier in the Basileía Romaíon, as evidenced in documents from the 8th century. Before the 16th century, "Saracen" was commonly used in Western languages to refer to Arab Muslims, and the terms "Muslim" and "Islam" were generally not used, with a few isolated exceptions."

- Update rebalances technology, literacy and greatly improves Al-Andalus and Persia's economies and AI.

- Lowered starting literacy & technology for most nations.
- Improved Al-Andalus's starting production methods/trade routes.
- Adjusted Italy & the HRE's starting buildings.
- Improved starting trade routes for Mughalstan and Japan.
- Adjusted starting regions of interest for many nations.
- Improved Persia's starting buildings and trade routes.
- Re-did all the screenshots on steam/PDX

0.12.0 Antea Saeculum Update (A Century Earlier)

- Game start date rolled back to 1736
 - All characters birthdate rolled back 100 years so every one is same age as before
- All Subject types can now engage in diplomacy 
- More HRE changes
 - New HRE Subjects Aquiteine & Brittany other subjects changed to puppet from Dominion as puppets can now engage in their own wars alliances etc.
- German culture revamp
 - Replaced Wallonian, Flemish North/South German with Frankish, Bavarian, Saxon & Baltic. 
- Improvements to Denmark and Sweden: Buildings and Starting trade routes so their economy should start off functional.  
- Elysium improvements: more european minorities communities and higher literacy
- Fixes various missing pops and other bugs.



0.11.2

- Removed a outdated work-in-progress folder as it turns out the unfished events within were firing.
 - This fixes the Bulgarian rebellion loop. This event should only happen once now. 
- Turned Saxony's New World colony into a new colonial tag Klein-Venedig. https://en.wikipedia.org/wiki/Klein-Venedig
 - Eventually will turn all the New World coastal areas into new Colonial tags 
- Adjusted HRE, Al-Andalus, Venice and Genoa tech.
- New world colonial tags have national miltia instead of professional army.
- Golden Horde and Abbasid bumped down to unreconized. Golden Horde player can easily smash their way to get reconized. Abbasids should be able to.

0.11.1

- Adds missing pops from Venetian Croatia
- Fixes Veiled Exarchate Journal Entries
- Changes the Abbasid Jihad to only take Jordan and Damascus

0.11.0 HRE III & Mughal Empire update

- Rearchitextured the way the mod loads. The game will no longer load the tens of thousands of history files twice base game and mod and instead only load them from the mod leading to a much faster start up, less bugs and faster run times.
- Adjusted all modifiers and buffs as well as added new ones to certain nations.
- New HRE setup inspired by the Carolingian HRE. 
- HRE Dominion subjects include Swabia, Savoy, Bavaria, Franconia.
- HRE starts off in a war to subjugate the Dutch.
- HRE turns into france if it's government changes from monarchy
- HRE ai should try and subjugate up to it's fullest traditional borders.
- Basileía Romaíon and HRE are rivals. Actually Basileía Romaíon has few friends so good luck.
- Further improvements to Italy In my scenario Italy is where the industrial revelution starts. 
- Mughal Empire is now the dominant power in India
- Lowered Golden Horde literacy and gave them a new trait that has some buffs/debuffs to make them feel more unique.
- Moved the hidden buffs that Venice/Genoa had to trade to a modifier so you can tell they are a unique experiance to play.
- Continue to adjust starting trade routes as the map changes so every one starts with a functional stable economy.
- Japan starts with the "Meiji Restoration" started but not complete. They are also start with a good army/navy and industrial base so that they may rise to a GP.
- Commonwealth, Hungary and Bohemia start in a Customs Union and Defensive Pact and good relations with the HRE.
- Saxony is friendly with Denmark but hates the HRE.
- Franconia has claims to saxony.
- Hungary has claims to the parts of Croatia it doesn't start with as well as Bosnia
- Australia has been decentralized

0.10.2

Government legitimacy Hotfix for today patch.
I was halfway though the new HRE Changes but decided to patch before I was fully ready because today's patch broke the game.
Anyway please test and enjoy every thing should work but I be aware I am not done in the HRE.

Discuss this update in the discussions section.
0.10.1 Hotfix
- Fixes HRE flag
- HRE should not absorb the Commonwealth or united Baltic Duchies on formation
- Adjusted Russian subjects of the Golden Horde to now all be Dominions of the Golden Horde and all have a Defensive Pact with each other.


0.10 "Under the Tatar Yoke"
This update is inspired by a period of russian history termed "Under the Tatar Yoke"
"Having joined Central Asia, China, Khoresm and Transcaucasia to his empire, Genghis Khan aimed for Russian lands. In 1223 the armies of Genghis Khan defeated Russians on the River Kalka. After the battle Tatars devastated the towns in the outskirts of Chernigov but soon retreated to the Volga steppes. In the late 1237 the union of Mongolian tribes, the Golden Horde, headed by Batu (1208 – 1255), the grandson of Genghis Khan, invaded Ryazan. Afterwards Mongols conquered Moscow and moved to Vladimir. In February 1238 Vladimir was besieged and taken by storm. Novgorod was left unprotected. But Tatars were exhausted and they returned to the steppe. In autumn 1239 Batu resumed his attacks. Now his aim was to conquer southern principalities. The first to fall was Chernigov. In a year’s time Batu’s armies approached Kiev’s walls. After lasting siege and fierce fight Kiev was taken. That period marked the beginning of Tatar Yoke. Russian lands were devastated. The citizens were annihilated or enslaved. Most of the ruined cities never rose again. Russian knayzes accepted the superior power of the Khan and agreed to pay tribute (yasak) to the conquerors. They also had to ask for new Russian rulers appointment approval. Russian knyazes strove to get rid of vassal dependence on the Golden Horde. However, they were not strong enough to fight."

- Adds missing characters to Mesopotamia Phokas
- New Nations:
 - United Baltic Duchies Dominion under Sweden
 - Pommeria Dominion under Sweden
 - Novgorod Dominion of Sweden
 - Pskov Dominion of Sweden
 - Commonwealth aka Polish-Lithuanan Commonwealth
 - Tartaria aka Golden Horde 
  - Muscovy - Dominion of Golden Horde (Rebellious)
   - Smolesk Dominion of Muscovey
   - Ryzan Dominion of Muscovy
  - Ruthenia Dominion of Golden Horde (Rebellious)
  - Perm Dominion of Golden Horde
 - Siberia and Yakut are new decentralized nations
- New Dynamic names for a couple nations 
- Base name of Arabia reverted back to Arabia from Abbasid Caliphate. Instead I set up a dynamic name to Abbasid Caliphate as long as its a monarchy or Theocracy.
- Tartaria named Golden Horde as long as its a Monarchy and Mongol is a primary culture.
- Tartaria can be have it's name changed to Khazer Khanate via decision.
- New Religion Tengri added. 
- Tartaria starts with state Religion as Tengri but a decision to change religion to Sunni or Jewish or of course continue to follow the great Sky Father.
- Changing religion to Jewish restores the Khazer Khanate. 
- Switched Tatar/Mongol states to use asian city graphics instead of some using european and others using arabic. 
- Improvements to the Italian states starting buildings
- Improvements to the Italian starting trade routes/supply chains.
- Starting literacy lowered globally 


0.9 Legacy of the Seljuks.
- Seljuk dynasty is now the rulers of Persia.
- New Flag for Seljuk Persia.
- Persia and Abbasid have been switched from unreconized to Reconized.
- added Mespotamia as a subject of Basileía Romaíon
- added Assyria as a subject of Persia.
- further adjusted pops in Persia and their neighbors 
- Persia and Abbasids now start with line infantry and cannons.
- Abbasids start with a "Jihad" Buff that lasts a few years.
- Abbasid can annex both Africa and Aegypt Exarchates during the first war.
- New Bulgarian Revolt event for Basileía Romaíon
- New decision to add Armenian as an accepted culture for Basileía Romaíon
- New decision to add Azerbaijani as accepted culture in Persia
- Bosnia and Montengro have been made to be subjects of Serbia. 
- Armenia and Georigia start off in a Defensive pact
- Wallachia and Moldova start off in a Defensive pact
- Subject changes are to make it harder to annex them, as well as increase likelyhood of an indepdence play. 
- Removed invisible minting buff from Inca, Aztec and Mali. I instead added more gold fields to the map in those countries. 
- In addition to the countries above added some gold fields to Nubia and Gold mines to Macedonia, Southern Serbia and Sardinia. These are areas which historically had gold mines.
- Added unique religion icons for totemism, inti, nahuatl and Mayan.
- Mexico City renamed to Tenochtitlan
- Natives less likely to rise in rebellion (This is to slow down colonization)
- Fixes various bugs

***Conlidated some cultures and religions.
 - Apostolic, Iconoclast & Nestorian consolidated back into Oriential Orthadoxy
 - Pontic, Anatolian, Cappadocian, African, Aegyptian consolidated back into Romaioi.
 - Yemenite, Mashriqi & Bedouin consolidated into Arabic
Mod already has less overall pops than the base game due to the Americas starting with 1/20th the population of base game but by consolidating these similar cultures it will greatly improve late game performance further. May split them off again later on.


Scramble for the New World - Ver.0.8
0.8 New World Update.
- Completely revamps the new world based on the alternative history world this mod takes place in.
	- This includes many new indgenious nations, including two large empires based on the Aztec and Inca Empires. (Note I have tried to use the names the orginal inhabitants called themselves whenever possible) If I have any native tribs in the incorrect location etc please let me know on discord forums or on here and I will try to correct it.
	- New World Religions including Totemism, Nahuatl, Inti and Mesoamerican.
	- New World Colonial cultures.
	- Romaíoi settlers founded Elysium in the new world though as a consequence of being separated and often blockaded by the various latin powers in control of the straits of Heracles Elysium has really gone it's own way. Finding similarities between the local deities and Hellenic Deities of the past the Elysians have mostly embraced the old Hellenic ways and integrated with the local natives really creating a very unique culture.
	- Vinland was founded by Norse settlers whom rejected the Abrahamic God instead holding true to the Gods of their ancestors.
	- New Decisions, Elysium can decide to convert back to Orthadoxy and or then switch back to Hellenic (This event causing most people of the relgion your switching from to become radical and the religion your switching to become loyalist.) and other large temporary maluses. A new hidden decision available to Basileía Romaíon.
	- Fixed it so all new Government and Ruler title are working as intended. Thanks to https://steamcommunity.com/sharedfiles/filedetails/?id=2895012465
	- Many fixes and tweaks.

0.7 Update. Mali Empire update.
- Adds a new diplomatic AI. Aggressive expanion, This AI is over twice as aggressive as Territorial Expansion. Persia and Abbasid start with it and nations have a chance to get it thoughout the game based on similar factors as Territorial expansion.
- Further further restirctions on Italy forming. Increased the tech required for the journal entry to Mass_Propaganda, made it so you can only absorb puppets not custom union members and forming Italy only absorbs North Italians not South Italians.
- Adds the Mali Empire.
- Adds the Adal Sultanate
- Improved Abbasid starting buildings and trade they now have access to guns and cannons and Hedjez has Line Infantry and Cannons. Every where else still irregular infantry no cannons you'll need to import more weapons to switch all over. Should make the starting war easier though.
- Splits off Zanzibar from Abbasid they are a vassal of Abbasid ruled over by a upper class of Arabs.
- Removes Andalusian Control of Mozambique and Angola and gave control to local decentralized nations.
- Improved Persian starting trade.
- Improved Basileía Romaíon starting Trade.
- Added new "Silk Road" invisable buff to br_aegypt,ZAN ARA and PER. This gives them a small discount to trade cost. Merchant Republics also have a similar but better buff to trade.
- Persia has less infamy from it's war to annex Afganistan.
- Did not like how the western Persian/Arevelyan border looked so started Arevelyan off in a rebellion giving persia the chance to annex them at the start.
- Fixes bug that prevented you from returning to Themata primacy if you switched to Tagmata Primacy.


0.6 update Abbasid Caliphate.
- Arabia has recently reunited under a new ambitious Abbasid Caliph in Mecca detirmined to reclaim the rightful lands of the Caliph from the infidel. Abbasids should be a fun nation to play as or against.
- Adds Themata and Tagmata primacy modifiers and decisions to switch between the two.
- Adds an Eastern Armenian nation named Arevelyan as a vassal of Persia. (Name means Eastern in Armenian). Might nativize more names in the future.
- Adjusted the borders of Armenia and Persia. Might tweak more in the future.
- Renamed all the IGs of Basileía Romaíon to better reflect their historical names and adjusted their politics.
- Further restictions on Italy forming.
- Pontikoí renamed to Pontíoi. Turns out that Pontikoí means "little mice" in Greek whoops! :S
- Anatolikós renamed to Kappadokikí.
- Illyrian renamed to Albanoí. This is what the Romaíoi called the native inhabitants of that region during the 1000s.
- Bulgarian renamed to Boulgaroí. Once again this is based on the name the Romaíoi used.
- Increased the amount of Arable land and base infastucture in North Italy, Mespotamia and Aegpyt.
- Balanced the resources and discoverable resources within South Europe, Middle East and North Africa based on Paradox's 1.1 rebalance. 


Latest Version Update 0.5 Al-Andalus II & HRE II.
- New Modifiers & Decisions for Basileía Romaíon, Al-Andalus, Aegypt & North Africa.
- Tons of small pop adjustments.
- Hungary and Galicia are now Personal unions under Austria. (This creates prettier borders when Austria forms HRE)
- Austria is now more likely to annex Prussia when forming HRE.
- Austria and HRE have claims to Northern Italy, Belgium, Holstein and Alsace Loraine.
- Venice and Genoa now use their CK3 colors.
- Atlantide no longer a Subject of Venice, it didn't make sense with Al-Andalus controlling both sides of the straits.
- Atlantide starts off in a war of Survival against Al-Andalus. During my observe games Atlantide wins the war against the Andalusian AI about 50% of the time though I imagine an Andalusian player would win easily.

Update 0.4 Al-Andalus Update.
- Added new nations in Iberia with new flags, cultures, characters and more including Al-Andalus, Asturias, Aragon and Navara.
- Started work on the new world by adding New Granada as a colonial subject of Al-Andalus and Atlantide as a colonial subject of Venice. Many other temporary changes, next update will be a major overhaul of south america.
- Lot's of ai adjustments to new and old nations.
- Tons of small tweaks throughout the world.

- If the update broke your save game you can revert to an older version of the mod at the Paradox Mod site https://mods.paradoxplaza.com/mods/51849/Any Theres a menu to select version of the mod to play.

Version alpha 0.3.0 HRE & Merchant Republic Update

- Can now centralize the HRE into a singular nation (This replaces the form Germany).
- Renamed two sicilies to Katepaníkion Italías, they are ruled by a Katepanō. This is not a subject nation but a nation that is influenced culturally by Basileía Romaíon.
- Basileía Romaíon Ruler now properly displays the title of Basileus or Basilissa.
- Merchant Republics now have the correct name for their Government which is "Merchant Republic" and ruled by a Doge.
- Subjects of Basileía Romaíon now properly have the government form Exarchate and are ruled by a Exarchos
- Basileía Romaíon now has a custom ruler which I made by just blindly meshing random genes together but I like how it turned out Long Live Basileus Augustinos Palaiologos our Roman SteamPunk Emperor!
- Fixed dozens of bugs and other random stuff.

Current version Phase three Alpha 0.2.2 ( Holy Roman & Merchant Republic Update)

Added in the Holy Roman Empire. This is only my first pass on the region I wanted something that was functional and Fun in the future will spend more time creating a more unique HRE set up.
Fixed the unique Romaíoi monuments to correctly be government buildings so they won'y go out of business if they don'y make a profit.
Further fixes and tweaks to Italy and the Merchant Republics.
Fixed Exarchate subjects so they are now available for annexation via diplomatic plays.
Fixed a bunch of other stuff I lost track of
Enjoy :)

Improved italian AI to focus more on trade and economic dominance.

Updated meta data to display the proper game name and version in the mod selection in game.

Current version Phase three Alpha 0.2.1 ( Merchant Republic Update)

Small fix to Genoa and Venice Ai and starting relations with their trade partners so they ai doesn't cancel all their trade routes.

Current version Phase three Alpha 0.2.0 ( Merchant Republic Update)
- Latest update adds in the small but very wealthy Merchant Republics of Venice and Genoa.

Current version Phase two Alpha 0.1.2

- Added new decentralized nations in North Africa. Ai Aegypt and North Africa Excachates will Colonize within 20-30 years
- Tweaked Persia a bit
- Bunch of other bug fixes and tweaks.
- New Screenshots

Current version Phase two Alpha 0.1.1 (Veiled Exachate Update)

- Added the Chi Rho to the doubled headed eagle :)
- Bunch more tweaks, balance changes and bug fixes.
- Updated description and screenshots

Translation Sub-Mods (Not maintained by me, message authors for more information)
<a class="bb_link" href="steam://openurl/https://steamcommunity.com/sharedfiles/filedetails/?id=2886387759">Chinese translation</a>
<a class="bb_link" href="steam://openurl/https://steamcommunity.com/sharedfiles/filedetails/?id=2885193735">Korean translation</a>