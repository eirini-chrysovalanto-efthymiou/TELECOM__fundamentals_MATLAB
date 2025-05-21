
function myrand2 = myrand2(b)
  myrand2 = 1 + rand(b,2) * 9;  # Don’t forget the semicolon (;) to avoid printing two outputs to the screen
endfunction


# What does this mean in practice?

# You can close the function file after you save it.

# It is enough to be in the correct folder or have configured MATLAB to "see" the folder containing the file.

# From the Command Window or another script, you can call the function normally.
