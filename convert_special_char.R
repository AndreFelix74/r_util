
convert_special_char <- function(x)
{
  lstSpecialChar <- list(c('[aàáâäãåæ]', 'a'),
                         c('[eèéêë]', 'e'),
                         c('[iìíîï]', 'i'),
                         c('[oòóôöõø]', 'o'),
                         c('[uùúûü]', 'u'),
                         c('[ñ]', 'n'),
                         c('[ç]', 'c')
  )
  x <- tolower(x)
  for (i in 1:length(lstSpecialChar)) {
    x <- gsub(unlist(lstSpecialChar[i])[1], unlist(lstSpecialChar[i])[2], x)
  }
  x
}