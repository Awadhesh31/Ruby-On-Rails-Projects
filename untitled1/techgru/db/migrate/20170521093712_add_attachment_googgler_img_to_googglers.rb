class AddAttachmentGoogglerImgToGoogglers < ActiveRecord::Migration
  def self.up
    change_table :googglers do |t|
      t.attachment :googgler_img
    end
  end

  def self.down
    remove_attachment :googglers, :googgler_img
  end
end
