class Fixnum
  define_method(:counter) do
    coins = {"quarters" => 0, "dimes" => 0, "nickels" => 0, "pennies" => 0}

    me = self.to_i
    until me.==0

    if me >= 25
      q = me/25
      me = me%25
      coins["quarters"] = q

    elsif me >= 10
        d = me/10
        me = me%10
        coins["dimes"] = d

      elsif me >= 5
          n = me/5
          me = me%5
          coins["nickels"] = n

        else me < 5
            coins["pennies"] = me
            me = 0
      end
    end
    coins

  end
end
