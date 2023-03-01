clear
set seed 111617

global data "\AnalyticFiles"
global tables "\Tables\To Download"

use "$data\Analytic Dataset.dta" , clear

table1 , ///
vars(  ///
age_at_dx contn \ ///
male cat \ ///
maritalstatus_cat cat \ ///
race_msbkm cat \ ///
va_ethnicity cat \ ///
priority_enr cat \ ///
everdied cat \ ///
timetodeathfromindexdate conts \ ///
any_pcvisit cat \ ///
numpcvisits conts \ ///
any_vamhvisit cat \ ///
numvamhvisits conts \ ///
any_preed cat \ ///
numedvisits_pre conts \ ///
any_inpt_predx cat \ ///
num_inpt_predx conts \ ///
max_dx_mi bin \ ///
max_dx_neoplasm  bin \ ///
max_dx_diabetes  bin \ ///
max_dx_headache  bin \ ///
max_dx_hearing  bin \ ///
max_dx_homeless  bin \ ///
max_dx_hyperlipidemia bin \ ///
 max_dx_htn  bin \ ///
max_dx_obesity  bin \ ///
max_dx_spinalcord  bin \ ///
max_dx_visionloss bin ) ///
format(%9.3f)  saving("$tables\Table1A.xls", replace)

sum numphysicalcomorb
bysort any_mh_smi: sum numphysicalcomorb

table1 , ///
vars(  ///
age_at_dx contn \ ///
male cat \ ///
maritalstatus_cat cat \ ///
race_msbkm cat \ ///
va_ethnicity cat \ ///
priority_enr cat \ ///
everdied cat \ ///
timetodeathfromindexdate conts \ ///
any_pcvisit cat \ ///
numpcvisits conts \ ///
any_vamhvisit cat \ ///
numvamhvisits conts \ ///
any_preed cat \ ///
numedvisits_pre conts \ ///
any_inpt_predx cat \ ///
num_inpt_predx conts \ ///
numphysicalcomorb conts \ ///
max_dx_mi bin \ ///
max_dx_neoplasm  bin \ ///
max_dx_diabetes  bin \ ///
max_dx_headache  bin \ ///
max_dx_hearing  bin \ ///
max_dx_homeless  bin \ ///
max_dx_hyperlipidemia bin \ ///
 max_dx_htn  bin \ ///
max_dx_obesity  bin \ ///
max_dx_spinalcord  bin \ ///
max_dx_visionloss bin ) ///
 by(any_mh_smi) test format(%9.3f)  saving("$tables\Table1A_Part2.xls", replace)

table1 if any_mdd==1, ///
vars(  ///
age_at_dx contn \ ///
male cat \ ///
maritalstatus_cat cat \ ///
race_msbkm cat \ ///
va_ethnicity cat \ ///
priority_enr cat \ ///
everdied cat \ ///
timetodeathfromindexdate conts \ ///
any_pcvisit cat \ ///
numpcvisits conts \ ///
any_vamhvisit cat \ ///
numvamhvisits conts \ ///
any_preed cat \ ///
numedvisits_pre conts \ ///
any_inpt_predx cat \ ///
num_inpt_predx conts \ ///
numphysicalcomorb conts \ ///
max_dx_mi bin \ ///
max_dx_neoplasm  bin \ ///
max_dx_diabetes  bin \ ///
max_dx_headache  bin \ ///
max_dx_hearing  bin \ ///
max_dx_homeless  bin \ ///
max_dx_hyperlipidemia bin \ ///
 max_dx_htn  bin \ ///
max_dx_obesity  bin \ ///
max_dx_spinalcord  bin \ ///
max_dx_visionloss bin ) ///
 format(%9.3f)   saving("$tables\Table2_mdd.xls", replace)

table1 if any_smi==1, ///
vars(  ///
age_at_dx contn \ ///
male cat \ ///
maritalstatus_cat cat \ ///
race_msbkm cat \ ///
va_ethnicity cat \ ///
priority_enr cat \ ///
everdied cat \ ///
timetodeathfromindexdate conts \ ///
any_pcvisit cat \ ///
numpcvisits conts \ ///
any_vamhvisit cat \ ///
numvamhvisits conts \ ///
any_preed cat \ ///
numedvisits_pre conts \ ///
any_inpt_predx cat \ ///
num_inpt_predx conts \ ///
numphysicalcomorb conts \ ///
max_dx_mi bin \ ///
max_dx_neoplasm  bin \ ///
max_dx_diabetes  bin \ ///
max_dx_headache  bin \ ///
max_dx_hearing  bin \ ///
max_dx_homeless  bin \ ///
max_dx_hyperlipidemia bin \ ///
 max_dx_htn  bin \ ///
max_dx_obesity  bin \ ///
max_dx_spinalcord  bin \ ///
max_dx_visionloss bin ) ///
 format(%9.3f)   saving("$tables\Table2_AnySMI.xls", replace)

table1 if any_ptsd==1, ///
vars(  ///
age_at_dx contn \ ///
male cat \ ///
maritalstatus_cat cat \ ///
race_msbkm cat \ ///
va_ethnicity cat \ ///
priority_enr cat \ ///
everdied cat \ ///
timetodeathfromindexdate conts \ ///
any_pcvisit cat \ ///
numpcvisits conts \ ///
any_vamhvisit cat \ ///
numvamhvisits conts \ ///
any_preed cat \ ///
numedvisits_pre conts \ ///
any_inpt_predx cat \ ///
num_inpt_predx conts \ ///
numphysicalcomorb conts \ ///
max_dx_mi bin \ ///
max_dx_neoplasm  bin \ ///
max_dx_diabetes  bin \ ///
max_dx_headache  bin \ ///
max_dx_hearing  bin \ ///
max_dx_homeless  bin \ ///
max_dx_hyperlipidemia bin \ ///
 max_dx_htn  bin \ ///
max_dx_obesity  bin \ ///
max_dx_spinalcord  bin \ ///
max_dx_visionloss bin ) ///
 format(%9.3f)  saving("$tables\Table2_ptsd.xls", replace)
 
table1 if any_gad==1, ///
vars(  ///
age_at_dx contn \ ///
male cat \ ///
maritalstatus_cat cat \ ///
race_msbkm cat \ ///
va_ethnicity cat \ ///
priority_enr cat \ ///
everdied cat \ ///
timetodeathfromindexdate conts \ ///
any_pcvisit cat \ ///
numpcvisits conts \ ///
any_vamhvisit cat \ ///
numvamhvisits conts \ ///
any_preed cat \ ///
numedvisits_pre conts \ ///
any_inpt_predx cat \ ///
num_inpt_predx conts \ ///
numphysicalcomorb conts \ ///
max_dx_mi bin \ ///
max_dx_neoplasm  bin \ ///
max_dx_diabetes  bin \ ///
max_dx_headache  bin \ ///
max_dx_hearing  bin \ ///
max_dx_homeless  bin \ ///
max_dx_hyperlipidemia bin \ ///
 max_dx_htn  bin \ ///
max_dx_obesity  bin \ ///
max_dx_spinalcord  bin \ ///
max_dx_visionloss bin ) ///
 format(%9.3f) saving("$tables\Table2_gad.xls", replace)
 
sum numphysicalcomorb if any_mdd == 1
sum numphysicalcomorb if any_ptsd == 1
sum numphysicalcomorb if any_gad == 1

table1 , ///
vars(  ///
any_posted bin \ ///
numedvisits_post conts \ ///
any_inpt_postdx bin \ ///
num_inpt_postdx conts \ ///
readmit bin \ ///
readmit_subsample bin) ///
format(%9.3f)  saving("$tables\Table3.xls", replace)

table1 , ///
vars(  ///
any_posted bin \ ///
numedvisits_post conts \ ///
any_inpt_postdx bin \ ///
num_inpt_postdx conts \ ///
readmit bin \ ///
readmit_subsample bin) ///
by(any_mh_smi) test format(%9.3f)  saving("$tables\Table3_AnySMI.xls", replace)
 
table1 if any_mdd == 1, ///
vars(  ///
any_posted bin \ ///
numedvisits_post conts \ ///
any_inpt_postdx bin \ ///
num_inpt_postdx conts \ ///
readmit bin \ ///
readmit_subsample bin) ///
format(%9.3f)  saving("$tables\Table3_MDD.xls", replace)

table1 if any_ptsd == 1, ///
vars(  ///
any_posted bin \ ///
numedvisits_post conts \ ///
any_inpt_postdx bin \ ///
num_inpt_postdx conts \ ///
readmit bin \ ///
readmit_subsample bin) ///
format(%9.3f)  saving("$tables\Table3_PTSD.xls", replace)

table1 if any_gad == 1, ///
vars(  ///
any_posted bin \ ///
numedvisits_post conts \ ///
any_inpt_postdx bin \ ///
num_inpt_postdx conts \ ///
readmit bin \ ///
readmit_subsample bin ) ///
format(%9.3f)  saving("$tables\Table3_GAD.xls", replace)

table1 if any_smi == 1, ///
vars(  ///
any_posted bin \ ///
numedvisits_post conts \ ///
any_inpt_postdx bin \ ///
num_inpt_postdx conts \ ///
readmit bin \ ///
readmit_subsample bin) ///
format(%9.3f)  saving("$tables\Table3_SMIOnly.xls", replace)
 
log using "$tables\Manuscript output Primary Analysis.log", replace 	
global x "c.age_at_dx i.male  i.marstat_tomodel i.race_tomodel i.ethnicity_tomodel c.numpcvisits i.max_dx_mi i.max_dx_neoplasm i.max_dx_diabetes i.max_dx_headache i.max_dx_hearing i.max_dx_hyperlipidemia i.max_dx_htn i.max_dx_obesity"

logit any_posted i.mi_smi##(c.priortyenr_tomodel)$x c.age_at_dx#c.age_at_dx , or
	margins, at(mi_smi = (0 1 3))
	margins, dydx(mi_smi)

logit any_inpt_postdx i.mi_smi##c.priortyenr_tomodel $x c.age_at_dx#c.age_at_dx , or
	margins, at(mi_smi = (0 1 3))
	margins, dydx(mi_smi)

logit readmit i.mi_smi##c.priortyenr_tomodel $x c.numpcvisits#c.numpcvisits  if any_inpt_postdx == 1 , or
	margins, at(mi_smi = (0 1 3))
	margins, dydx(mi_smi)
log close

tab treatment, m

log using "$tables\Manuscript output Secondary Analysis.log", replace 	

global x2 "c.age_at_dx i.male i.marstat_tomodel i.race_tomodel i.ethnicity_tomodel  c.numpcvisits i.max_dx_mi i.max_dx_neoplasm  i.max_dx_headache i.max_dx_hearing i.max_dx_hyperlipidemia i.max_dx_htn i.max_dx_obesity "

logit any_posted i.treatment##c.priortyenr_tomodel $x2 c.age_at_dx#c.age_at_dx , or
	margins, at(treatment = (0 1 2))
	margins, dydx(treatment)

logit any_inpt_postdx i.treatment##c.priortyenr_tomodel $x2 c.age_at_dx#c.age_at_dx, or
	margins, at(treatment = (0 1 2))
	margins, dydx(treatment)

logit readmit i.treatment##c.priortyenr_tomodel $x2 c.age_at_dx#c.age_at_dx if any_inpt_postdx == 1 , or
	margins, at(treatment = (0 1 2))
	margins, dydx(treatment)
	
log close

//Sensitivity Analysis Descriptive Statistics
drop if treatment == .
table1 , ///
vars(  ///
age_at_dx contn \ ///
male cat \ ///
maritalstatus_cat cat \ ///
race_msbkm cat \ ///
va_ethnicity cat \ ///
priority_enr cat \ ///
everdied cat \ ///
timetodeathfromindexdate conts \ ///
any_pcvisit cat \ ///
numpcvisits conts \ ///
any_vamhvisit cat \ ///
numvamhvisits conts \ ///
any_preed cat \ ///
numedvisits_pre conts \ ///
any_inpt_predx cat \ ///
num_inpt_predx conts \ ///
numphysicalcomorb conts \ ///
max_dx_mi bin \ ///
max_dx_neoplasm  bin \ ///
max_dx_diabetes  bin \ ///
max_dx_headache  bin \ ///
max_dx_hearing  bin \ ///
max_dx_homeless  bin \ ///
max_dx_hyperlipidemia bin \ ///
 max_dx_htn  bin \ ///
max_dx_obesity  bin \ ///
max_dx_spinalcord  bin \ ///
max_dx_visionloss bin ) ///
 by(treatment) test format(%9.3f)  saving("$tables\Table1_SA.xls", replace)
 
bysort treatment: sum numphysicalcomorb 
