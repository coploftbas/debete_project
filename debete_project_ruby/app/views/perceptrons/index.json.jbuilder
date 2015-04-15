json.array!(@perceptrons) do |perceptron|
  json.extract! perceptron, :id
  json.url perceptron_url(perceptron, format: :json)
end
