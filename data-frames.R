name <- c("VolkswagenTouareg ", "CitroenC3", "AudiA3", "ToyotaYaris", "KiaForte", "DaciaLogan", "NissanPajero")
year <- c(2, 3, 4, 5, 8, 9, 8)
size <- c("medium", "small", "medium", "small", "small", "medium", "extra large")
mpg <- c(25, 47, 27, 36, 31, 2, 36)
geerbox <- c("manual", "manual", "auto", "auto", "manual", "manual", "auto")


cars <- data.frame(year, size, mpg, geerbox)
names(cars) <- c("Year", "Size", "MPG", "Geerbox")
rownames(cars) <- name


# alternative naming


cars <- data.frame(row.names = name, "Year" = year, "Size" = size, "MPG" = mpg, "Geerbox" = geerbox)


levels(cars[, "Geerbox"]) <- c("auto", "manual")
cars


#Volkswagen Touareg       
#BMWM2         
#AudiA3         
#ToyotaYaris         
#KiaForte        
#DaciaLogan         
#NissanPajero 
