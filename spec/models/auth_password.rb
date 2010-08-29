module AuthPassword
  def password
    p = read_attribute(:password)
    p =~ /^Encrypted/ ? "Is "+p : p
  end

  def password=(p)
    write_attribute(:password, "Encrypted: "+p)
  end
end
