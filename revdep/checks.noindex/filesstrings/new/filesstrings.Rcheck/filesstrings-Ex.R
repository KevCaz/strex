pkgname <- "filesstrings"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('filesstrings')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
base::assign(".old_wd", base::getwd(), pos = 'CheckExEnv')
cleanEx()
nameEx("all_equal")
### * all_equal

flush(stderr()); flush(stdout())

### Name: all_equal
### Title: A more flexible version of all.equal for vectors.
### Aliases: all_equal

### ** Examples

all_equal(1, rep(1, 3))
all_equal(2, 1:3)
all_equal(1:4, 1:4)
all_equal(1:4, c(1, 2, 3, 3))
all_equal(rep(1, 10))
all_equal(c(1, 88))
all_equal(1:2)
all_equal(list(1:2))
all_equal(1:4, matrix(1:4, nrow = 2))  # note that this gives TRUE



cleanEx()
nameEx("create_dir")
### * create_dir

flush(stderr()); flush(stdout())

### Name: create_dir
### Title: Create directories if they don't already exist
### Aliases: create_dir

### ** Examples

## Not run: 
##D create_dir(c("mydir", "yourdir"))
##D remove_dir(c("mydir", "yourdir"))
## End(Not run)



cleanEx()
nameEx("extend_char_vec")
### * extend_char_vec

flush(stderr()); flush(stdout())

### Name: extend_char_vec
### Title: Pad a character vector with empty strings.
### Aliases: extend_char_vec

### ** Examples

extend_char_vec(1:5, extend_by = 2)
extend_char_vec(c("a", "b"), length_out = 10)



cleanEx()
nameEx("group_close")
### * group_close

flush(stderr()); flush(stdout())

### Name: group_close
### Title: Group together close adjacent elements of a vector.
### Aliases: group_close

### ** Examples

group_close(1:10, 1)
group_close(1:10, 0.5)
group_close(c(1, 2, 4, 10, 11, 14, 20, 25, 27), 3)



cleanEx()
nameEx("move_files")
### * move_files

flush(stderr()); flush(stdout())

### Name: move_files
### Title: Move files around.
### Aliases: move_files file.move

### ** Examples

## Not run: 
##D dir.create("dir")
##D files <- c("1litres_1.txt", "1litres_30.txt", "3litres_5.txt")
##D file.create(files)
##D file.move(files, "dir")
## End(Not run)



cleanEx()
nameEx("nice_file_nums")
### * nice_file_nums

flush(stderr()); flush(stdout())

### Name: nice_file_nums
### Title: Make file numbers comply with alphabetical order
### Aliases: nice_file_nums

### ** Examples

## Not run: 
##D dir.create("NiceFileNums_test")
##D setwd("NiceFileNums_test")
##D files <- c("1litres_1.txt", "1litres_30.txt", "3litres_5.txt")
##D file.create(files)
##D nice_file_nums()
##D nice_file_nums(pattern = "\\.txt$")
##D setwd("..")
##D dir.remove("NiceFileNums_test")
## End(Not run)



cleanEx()
nameEx("nth_number_before_mth")
### * nth_number_before_mth

flush(stderr()); flush(stdout())

### Name: nth_number_before_mth
### Title: Find the nth number before the mth occurrence of a pattern.
### Aliases: nth_number_before_mth nth_number_before_first
###   nth_number_before_last first_number_before_mth last_number_before_mth
###   first_number_before_first first_number_before_last
###   last_number_before_first last_number_before_last

### ** Examples

string <- c("abc1abc2abc3abc4def5abc6abc7abc8abc9",
            "abc1def2ghi3abc4def5ghi6abc7def8ghi9")
nth_number_before_mth(string, "def", 1, 1)
nth_number_before_mth(string, "abc", 2, 3)
nth_number_before_first(string, "def", 2)
nth_number_before_last(string, "def", -1)
first_number_before_mth(string, "abc", 2)
last_number_before_mth(string, "def", 1)
first_number_before_first(string, "def")
first_number_before_last(string, "def")
last_number_before_first(string, "def")
last_number_before_last(string, "def")



cleanEx()
nameEx("put_in_pos")
### * put_in_pos

flush(stderr()); flush(stdout())

### Name: put_in_pos
### Title: Put specified strings in specified positions in an otherwise
###   empty character vector.
### Aliases: put_in_pos

### ** Examples

put_in_pos(1:3, c(1, 8, 9))
put_in_pos(c("Apple", "Orange", "County"), c(5, 7, 8))
put_in_pos(1:2, 5)



cleanEx()
nameEx("remove_dir")
### * remove_dir

flush(stderr()); flush(stdout())

### Name: remove_dir
### Title: Remove directories
### Aliases: remove_dir dir.remove

### ** Examples

## Not run: 
##D sapply(c("mydir1", "mydir2"), dir.create)
##D remove_dir(c("mydir1", "mydir2"))
## End(Not run)



cleanEx()
nameEx("remove_filename_spaces")
### * remove_filename_spaces

flush(stderr()); flush(stdout())

### Name: remove_filename_spaces
### Title: Remove spaces in file names
### Aliases: remove_filename_spaces

### ** Examples

## Not run: 
##D dir.create("RemoveFileNameSpaces_test")
##D setwd("RemoveFileNameSpaces_test")
##D files <- c("1litres 1.txt", "1litres 30.txt", "3litres 5.txt")
##D file.create(files)
##D remove_filename_spaces()
##D list.files()
##D setwd("..")
##D dir.remove("RemoveFileNameSpaces_test")
## End(Not run)



cleanEx()
nameEx("rename_with_nums")
### * rename_with_nums

flush(stderr()); flush(stdout())

### Name: rename_with_nums
### Title: Replace file names with numbers
### Aliases: rename_with_nums

### ** Examples

## Not run: 
##D dir.create("RenameWithNums_test")
##D setwd("RenameWithNums_test")
##D files <- c("1litres 1.txt", "1litres 30.txt", "3litres 5.txt")
##D file.create(files)
##D rename_with_nums()
##D list.files()
##D setwd("..")
##D dir.remove("RenameWithNums_test")
## End(Not run)



cleanEx()
nameEx("unitize_dirs")
### * unitize_dirs

flush(stderr()); flush(stdout())

### Name: unitize_dirs
### Title: Put files with the same unit measurements into directories
### Aliases: unitize_dirs

### ** Examples

## Not run: 
##D dir.create("UnitDirs_test")
##D setwd("UnitDirs_test")
##D files <- c("1litres_1.txt", "1litres_3.txt", "3litres.txt", "5litres_1.txt")
##D file.create(files)
##D unitize_dirs("litres", "\\.txt")
##D setwd("..")
##D dir.remove("UnitDirs_test")
## End(Not run)



### * <FOOTER>
###
cleanEx()
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
