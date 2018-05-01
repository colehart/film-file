RSpec.describe Film do
  describe 'validations' do
    describe 'required fields' do
      it 'should be invalid if missing a title' do
        film = Film.create(year: 2004, box_office_sales: 25_000_000)

        expect(film).to_not be_valid
      end

      it 'should be invalid if missing a year' do
        film = Film.create(title: 'Mean Girls 2', box_office_sales: 25_000_000)

        expect(film).to_not be_valid
      end

      it 'should be invalid if missing box_office_sales' do
        film = Film.create(title: 'Mean Girls 3', year: 2000)

        expect(film).to_not be_valid
      end
    end
  end

  describe 'Class Methods' do
    describe '.total_box_office_sales' do
      it 'should present a total of all box office sales' do
        Film.create(title: 'Mean Girls', year: 2006, box_office_sales: 25_000_000)
        Film.create(title: 'Mean Girls 2', year: 2024, box_office_sales: 15_000_000)
        Film.create(title: 'Mean Girls 3', year: 2018, box_office_sales: 1_500_000)

        expect(Film.total_box_office_sales).to eql(41_500_000)
      end
      describe '.average_box_office_sales' do
        it 'should present an average of all box office sales' do
          Film.create(title: 'Mean Girls', year: 2006, box_office_sales: 20_000_000)
          Film.create(title: 'Mean Girls 2', year: 2024, box_office_sales: 15_000_000)
          Film.create(title: 'Mean Girls 3', year: 2018, box_office_sales: 10_000_000)

          expect(Film.average_box_office_sales).to eql(15_000_000)
        end
      end
    end
  end
end
