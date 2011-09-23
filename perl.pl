# Chained hash derefs don't need arrows, only the first does.
# It would be nice to have all the derefs be implicit

my $outer = {
  foo => "bar",
  inner => {
    baz => "biz",
  },
}

            #/ This bugs me...
            #|
            #V
print $outer->{inner}{baz}; #prints "biz"
                  #  ^ We don't need it here to deref the 'inner' hashref...  