#topics ----
#factors, env, import/export. package install
#rep, recode, split, partition, subset, loops, cast & melt
#missing values. duplicates, apply
#graphs - bar, multiple line, pie, box, corrgram

head(women)
dim(women)
fit = lm(weight ~ height,data = women)
summary(fit)
range(women$height)               #existing range
(ndata = data.frame(height = c(60.5, 71.5)))         #prediction can only be for those in the existing range
(predictedwt = predict(fit, newdata = ndata))
cbind(ndata, predictedwt)

resid(fit)
fitted(fit)
cbind(women, fitted(fit), resid(fit))

#assumptions
plot(fit)

