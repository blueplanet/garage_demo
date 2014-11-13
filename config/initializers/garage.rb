Garage.configure {}
Garage::TokenScope.configure do
  register :public, desc: 'users' do
    access :read, User
  end
end

Doorkeeper.configure do
  orm :active_record
  default_scopes :public

  resource_owner_from_credentials do |routes|
    User.find_by(email: params[:username])
  end
end
