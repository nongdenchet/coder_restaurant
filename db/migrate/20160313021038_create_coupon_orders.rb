class CreateCouponOrders < ActiveRecord::Migration
  def change
    create_table :coupon_orders do |t|
      t.references :coupon, index: true, foreign_key: true
      t.references :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
