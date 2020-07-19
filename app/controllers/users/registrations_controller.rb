class RegistrationsController

  def new
    raise
    build_resource({})
    self.resource.company = Company.new
    respond_with self.resource
  end

  def create # the wrong one
    raise
    super
  end

end
