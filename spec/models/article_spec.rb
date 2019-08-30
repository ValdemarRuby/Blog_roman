require "spec_helper"

describe Article do
  describe "validation" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end

  describe "associations" do
    it { should have_many :comments }
  end

  describe "#subject" do
    it "returns the article title" do
      # создаем обьект(модель) хитрым способом
      article = create(:article, title: 'Lorem Ipsum')

      # assert, проверка
      expect(article.subject). to eq 'Loren Ipsum'
    end
  end

    describe "#last_comment" do
      it "returns the last comment" do
        # создаем статью, но в этот раз с коментариями
        article = create(:article_with_comments)

        # в проверке
        expect(article.last_comment.body).to eq "comment body 3"
      end
    end


end
