def rspecskipper(instance,columns)
  model = instance.capitalize
  i = 0
  while i < columns.length do
    ellorColumn = columns[i]

    puts 'describe #{model} dodescribe \'#create\' do
      it \'is invalid without a #{ellorColumn} \' do#{instance} = build(:#{instance}, #{ellorColumn}: nil)#{instance}.valid?expect(#{instance}.errors[:#{ellorColumn}]).to include()
    end
  end
end'
    i += 1
  end
end

#↓の配列の中にカラム名を入れる
productColumns = ['price','size','statusstring','delivery_datestring','name','descriptiontext','first_category_id','bland_id','buyer_id','saler_id']

def openArray(array)
  newArray = [] 
  array.each do |a|
    newA = '#{a}              {\'abe\'}\n'
    newArray << newA
  end
  t = newArray.join('')
end
classMessage = openArray(productColumns)
puts 'FactoryBot.define do

  factory :user do\n
    #{classMessage}

  end

end'

#↓テスト文を生成する第一引数はモデル名(先頭の文字は小文字にすること)、第二引数はカラムの配列
rspecskipper('product',productColumns)