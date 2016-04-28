clear 
set more off


*/ 	The World Bank
	Education Global Practice - LAC
	Haiti
	
	Description:
	The purpose of this file is to load and clean the 2013-14 Census data 
	initiall;y received in SPSS format from consultants in Port-au_Prince.
	
	Created on:
	October 2015
	Created by: 
	Andres Felipe Perez - Consultant - WBG
	
	
	
*/

//Needs to install usespss in order to load the data//
net from http://radyakin.org/transfer/usespss/beta
net install usespss
help usespss

*just testing

global path = "C:\Users\wb480551\Box Sync\School Census\2013-14 Census\Further Cleaning Work Oct 2015 -AFP\Raw Data"
cd `$path'
usespss "Base finale fusionne.sav", clear
save "$path\raw_BaseFusion_oct2015.dta", replace
usespss "$path\Base Ecole.sav", clear
save "$path\raw_BaseEcole_oct2015.dta", replace
