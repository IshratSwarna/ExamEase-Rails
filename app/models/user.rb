class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: { super_admin: 0, admin: 1, examiner: 2, examinee: 3}

  after_initialize do
    self.role ||= :examinee if new_record?
  end

  validates :role, presence: true
end
