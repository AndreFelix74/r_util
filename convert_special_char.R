
convert_special_char <- function(x)
{
  lstSpecialChar <- list(c('[a�������]', 'a'),
                         c('[e����]', 'e'),
                         c('[i����]', 'i'),
                         c('[o������]', 'o'),
                         c('[u����]', 'u'),
                         c('[�]', 'n'),
                         c('[�]', 'c')
  )
  x <- tolower(x)
  for (i in 1:length(lstSpecialChar)) {
    x <- gsub(unlist(lstSpecialChar[i])[1], unlist(lstSpecialChar[i])[2], x)
  }
  x
}