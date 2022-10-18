# Function to test for overdispersion in glmer models
## Created by Ben Bolker
### Available in: https://bbolker.github.io/mixedmodels-misc/glmmFAQ.html#overdispersion
overdisp_fun <- function(model) {
    rdf <- df.residual(model)
    rp <- residuals(model, type = "pearson")
    Pearson.chisq <- sum(rp^2)
    prat <- Pearson.chisq / rdf
    pval <- pchisq(Pearson.chisq, df = rdf, lower.tail = FALSE)
    c(chisq = Pearson.chisq, ratio = prat, rdf = rdf, p = pval)
}
