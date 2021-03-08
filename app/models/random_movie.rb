class RandomMovie < ApplicationRecord
  enum country: { ja: "JP", ko: "KR", en: "US", zh: "CH" }

end
