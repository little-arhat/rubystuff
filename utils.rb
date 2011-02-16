module TUtils
  def pdir(cls)
    cls.methods - Object.methods
  end

  def dir(cls)
    print (pdir cls)
  end
end
