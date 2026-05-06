source("R/domain_review.R")

item <- list(signal=67, slack=43, drag=12, confidence=70)
stopifnot(domain_review_score(item) == 211)
stopifnot(domain_review_lane(item) == "ship")
