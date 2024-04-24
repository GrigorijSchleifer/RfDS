# cave dupS not dup (plural)
dups_dir <- paste0(c("D:", "~"), "/DataUseProjects")

# concatenate both together
dup_id <- "DUP_Test"
dup_name <- paste(dup_id, "DUPNAME", sep = "_")

# this will be the path to the specific DUP directory
dup_dir <- file.path(dups_dir, dup_name)

# FINALLY
dump_dir <- file.path(dup_dir, paste("export", dup_name, date(), sep = "_"))

dup_dir <- dirname(dump_dir)
