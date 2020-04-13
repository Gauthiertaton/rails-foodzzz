class AddOtpSecretKeyToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :otp_secret_key, :string
  end
end
