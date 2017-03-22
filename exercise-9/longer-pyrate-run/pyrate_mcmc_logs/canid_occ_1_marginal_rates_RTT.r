# 1 files combined:
# 	/home/eeb177-student/Desktop/eeb-177/lab-work/exercise-9/longer-pyrate-run/pyrate_mcmc_logs/canid_occ_1_marginal_rates.log

# 95% HPDs calculated using code from Biopy (https://www.cs.auckland.ac.nz/~yhel002/biopy/)

pdf(file='/home/eeb177-student/Desktop/eeb-177/lab-work/exercise-9/longer-pyrate-run/pyrate_mcmc_logs/canid_occ_1_marginal_rates_RTT.pdf',width=0.6*9, height=16.8)
par(mfrow=c(4,1))
library(scales)
L_hpd_m95=c(0.205989592696, 0.205989592696,0.197845080573,0.20433113335,0.197845080573,0.0702410163852,0.0409303064617,0.0453929977733,0.0483370110454,0.0483370110454,0.0483370110454,0.0483370110454,0.0484069030943,0.0453929977733,0.0484069030943,0.0502066667933,0.0517388518257,0.0517388518257,0.0517904942753,0.0541649882775,0.0803681489861,0.0890507755542,0.0890507755542,0.0898132244356,0.0898132244356,0.0898132244356,0.0905742764619,0.0905742764619,0.0900200909132,0.0890507755542,0.0890507755542,0.11359082698,0.134668052351,0.134668052351,0.153213914128,0.159696345533,0.149036378069,0.150544940227,0.143059990176,0.141104593595,0.135141258417,0.125512740595,0.114577181408,0.114148292089,0.110397206152,0.0985979924097,0.0929131018118,0.0929131018118,0.0929131018118)
L_hpd_M95=c(0.359767122446, 0.359767122446,0.352202779167,0.360248163075,0.360248163075,0.343884962417,0.23189792592,0.122856145551,0.124351586147,0.124072620149,0.124072620149,0.124253215234,0.124816261077,0.123085650383,0.130249627908,0.136010958661,0.142975090649,0.14962424164,0.156966837677,0.177968002432,0.200923314936,0.200031285186,0.199024203171,0.199024203171,0.198578692909,0.199024203171,0.200923314936,0.201203433381,0.201063425104,0.21369733311,0.322826201072,0.430115536813,0.440038385861,0.44384275154,0.462092351964,0.462961565672,0.449478851087,0.446374525775,0.445064776348,0.44384275154,0.449478851087,0.44372408418,0.436438018777,0.44384275154,0.446813485379,0.444871644114,0.446813485379,0.452155975355,0.459558414818)
M_hpd_m95=c(0.829952662476, 0.829952662476,0.0847457670498,0.0847457670498,0.0847457670498,0.0861421264724,0.0861955780268,0.0861421264724,0.0847457670498,0.0847457670498,0.0865804969263,0.0848700255837,0.0825177189541,0.0824545358968,0.0825006815567,0.0825006815567,0.080189926699,0.0805524735164,0.0805524735164,0.080189926699,0.0793522801682,0.0795555823196,0.0795555823196,0.0798922134607,0.0740645765922,0.0626278585602,0.0608911745378,0.0596943307365,0.0566161856403,0.0565063263969,0.0561610654234,0.0561610654234,0.055024155345,0.0543076280157,0.0451176385258,0.0376563028828,0.0306737844692,0.0278997655251,0.0217414015376,0.0207555501989,0.0211898092085,0.0126561661062,0.0145978570708,0.0129204905185,0.0129204905185,0.0129204905185,0.0129204905185,0.0129204905185,0.0129204905185)
M_hpd_M95=c(1.46161795355, 1.46161795355,0.159414384361,0.159414384361,0.159414384361,0.159223076071,0.152229752373,0.148256872413,0.145702800603,0.144991409574,0.144345265489,0.140893103351,0.135360493224,0.133802269427,0.132663264795,0.131725862709,0.129277386411,0.129819582187,0.129819582187,0.129735857969,0.128892452888,0.128892452888,0.129735857969,0.132040201778,0.131892176685,0.127507712043,0.127209362705,0.127209362705,0.124609204726,0.124609204726,0.124609204726,0.124609204726,0.124051905446,0.127587313314,0.127587313314,0.128571918534,0.128822801096,0.129807173518,0.128822801096,0.137325170367,0.144991409574,0.147073536958,0.155446777048,0.155446777048,0.155446777048,0.155446777048,0.155446777048,0.155446777048,0.155446777048)
R_hpd_m95=c(-1.20620273501, -1.20620273501,0.0733637598691,0.0717221163994,0.0632256651795,-0.0419394214566,-0.110514032981,-0.0838855659592,-0.0838855659592,-0.0813854600502,-0.0802096718078,-0.0803460452387,-0.0754630921375,-0.0678578248599,-0.0676413552206,-0.065566449451,-0.0666653676016,-0.065393614305,-0.0617157137176,-0.0599943728612,-0.0249456199712,-0.0190723346569,-0.0189576235957,-0.0188691567399,-0.0190723346569,-0.0190723346569,-0.0190723346569,-0.0188691567399,-0.0190723346569,-0.0203707746241,-0.0225114404951,0.0080829487899,0.0287209017604,0.0381754014041,0.0526474368043,0.0520620663228,0.0535401410996,0.0386637732227,0.031854607815,0.0410104612466,0.0266347452646,0.0287209017604,0.00999657070788,-0.00168081107247,-0.00642441596994,-0.00736225155747,-0.010715366661,-0.0252186559493,-0.0211318717671)
R_hpd_M95=c(-0.557573180562, -0.557573180562,0.258899539795,0.258286639063,0.260003031368,0.242036137226,0.121703260552,0.0266347452646,0.0209368846102,0.0212490186908,0.0199000982345,0.0186167524241,0.0209368846102,0.0279539058372,0.028766747474,0.0335699184358,0.0395994286306,0.0474497838039,0.0603717264384,0.0764467509138,0.10309392293,0.102071802724,0.102089340725,0.103323898491,0.10493215547,0.109056601551,0.110594898915,0.111797194317,0.112276605792,0.127299339758,0.231649871014,0.335262740226,0.342561492216,0.354004544968,0.377358296582,0.370754952487,0.370992664201,0.356290293627,0.355890477306,0.377358296582,0.374174793151,0.38820610325,0.379432581912,0.381100734824,0.384117973212,0.393896939556,0.401483799527,0.393390388483,0.40618914643)
L_mean=c(0.275601719307, 0.275601719307,0.275682199708,0.275664551647,0.27446784628,0.255050164335,0.0925881120405,0.0816722876903,0.0810188557921,0.080713588355,0.0806714732288,0.0807281405794,0.0809342786374,0.0814803942672,0.083853627338,0.0856052305291,0.0888060297097,0.0927353404687,0.0983907710467,0.114332674504,0.14143364491,0.14467634224,0.145074697397,0.145506339118,0.145571968542,0.145645724422,0.145700833755,0.145595045684,0.145633248884,0.149252043041,0.173017210084,0.269103777509,0.29643347771,0.3073251769,0.314052919866,0.313499519609,0.309043036414,0.305359876238,0.304069543441,0.300795509296,0.298556624557,0.295623999917,0.294721535523,0.29352736433,0.292550275861,0.291281839044,0.291744534268,0.291942616086,0.29377607959)
M_mean=c(1.15130794797, 1.15130794797,0.116289740039,0.11628971984,0.116276521805,0.11586478509,0.114064673267,0.112577670074,0.112210308113,0.112060414448,0.111101844076,0.109934885064,0.109119679791,0.108288461416,0.107066625157,0.106185948378,0.105774588027,0.105587334937,0.105576005873,0.10550249859,0.105445181812,0.105362662647,0.105113505497,0.104695246366,0.102936777057,0.100956888927,0.100489857814,0.0999202419853,0.0996171791372,0.0993674530213,0.0991652375225,0.0991203891099,0.0988292477626,0.098648287484,0.0959784431227,0.094354995349,0.0931312769727,0.0927002533195,0.0930741877439,0.0939353970737,0.0947688342783,0.0961051525923,0.0967254721967,0.0971106541553,0.0971106541553,0.0971106541553,0.0971106541553,0.0971106541553,0.0971106541553)
R_mean=c(-0.87570622866, -0.87570622866,0.159392459669,0.159374831807,0.158191324475,0.139185379245,-0.0214765612265,-0.0309053823841,-0.0311914523205,-0.031346826093,-0.0304303708477,-0.0292067444842,-0.0281854011539,-0.0268080671484,-0.0232129978195,-0.0205807178494,-0.0169685583177,-0.0128519944687,-0.00718523482645,0.00883017591375,0.0359884630989,0.0393136795926,0.0399611919001,0.0408110927515,0.042635191485,0.0446888354951,0.0452109759406,0.0456748036985,0.0460160697468,0.0498845900193,0.0738519725613,0.1699833884,0.197604229948,0.208676889416,0.218074476744,0.21914452426,0.215911759441,0.212659622919,0.210995355697,0.206860112222,0.203787790279,0.199518847324,0.197996063326,0.196416710175,0.195439621706,0.194171184889,0.194633880113,0.194831961931,0.196665425435)
trans=0.5
age=(0:(49-1))* -1
plot(age,age,type = 'n', ylim = c(0, 0.509257722239), xlim = c(-51.45,2.45), ylab = 'Speciation rate', xlab = 'Ma',main='canid' )
polygon(c(age, rev(age)), c(L_hpd_M95, rev(L_hpd_m95)), col = alpha("#4c4cec",trans), border = NA)
lines(rev(age), rev(L_mean), col = "#4c4cec", lwd=3)
plot(age,age,type = 'n', ylim = c(0, 1.60777974891), xlim = c(-51.45,2.45), ylab = 'Extinction rate', xlab = 'Ma' )
polygon(c(age, rev(age)), c(M_hpd_M95, rev(M_hpd_m95)), col = alpha("#e34a33",trans), border = NA)
lines(rev(age), rev(M_mean), col = "#e34a33", lwd=3)
plot(age,age,type = 'n', ylim = c(-1.32682300851, 0.446808061073), xlim = c(-51.45,2.45), ylab = 'Net diversification rate', xlab = 'Ma' )
abline(h=0,lty=2,col="darkred")
polygon(c(age, rev(age)), c(R_hpd_M95, rev(R_hpd_m95)), col = alpha("#504A4B",trans), border = NA)
lines(rev(age), rev(R_mean), col = "#504A4B", lwd=3)
plot(age,age,type = 'n', ylim = c(0, max(1/M_mean)), xlim = c(-51.45,2.45), ylab = 'Longevity (Myr)', xlab = 'Ma' )
lines(rev(age), rev(1/M_mean), col = "#504A4B", lwd=3)
n <- dev.off()