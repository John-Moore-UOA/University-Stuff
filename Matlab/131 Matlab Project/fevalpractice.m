function addfrom = fevalpractice(addfrom, addto)


if addfrom < addto
    addfrom = addfrom + fevalpractice(addfrom+1, addto);
end

end