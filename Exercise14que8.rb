def print_self
  target= open($PROGRAM_NAME)
   print target.read

end
print_self
