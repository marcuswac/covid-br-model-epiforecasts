require(stringr)
require(magrittr)
require(future)
require(furrr)
require(purrr)

#posts <- c("_posts/global" , list.dirs("_posts/national", recursive = FALSE))
argv <- commandArgs(TRUE)

posts <- if (length(argv) >= 1) argv[1] else list.dirs("_posts/national", recursive = FALSE)
print(posts)

#future::plan("multisession")
future::plan("sequential")

safe_render <- purrr::safely(rmarkdown::render)

rendered_output <- furrr::future_map(posts, 
            function(post) {
              post_name <- stringr::str_split(post, "/")[[1]] %>% 
                dplyr::last()
              file.copy("library.bib", file.path(post), overwrite = TRUE)
              
              safe_render(file.path(post, paste0(post_name, ".Rmd")), quiet = FALSE)
            }, .progress = TRUE)
print(rendered_output)
