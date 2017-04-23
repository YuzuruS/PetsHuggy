class Listing < ActiveRecord::Base
  belongs_to :user

  HOME_TYPE_OPTION = {
    "一軒家" => "一軒家",
    "マンション" => "マンション",
    "アパート" => "アパート"
  }

  PET_TYPE_OPTION = {
    "犬" => "犬",
    "猫" => "猫",
    "鳥類" => "鳥類",
    "爬虫類" => "爬虫類",
    "魚類" => "魚類",
    "両生類" => "両生類",
    "その他" => "その他",
  }

  BREEDING_YEARS_OPTION = {
    1 => "1年",
    2 => "2年",
    3 => "3年",
    4 => "4年",
    5 => "5年",
    6 => "6年以上",
  }

  PET_SIZE_OPTION = {
    "小型" => "小型",
    "中型" => "中型",
    "大型" => "大型",
    "超大型" => "超大型"
  }


  validates :home_type, presence: true
  validates :pet_type, presence: true
  validates :pet_size, presence: true
  validates :breeding_year, presence: true
end
