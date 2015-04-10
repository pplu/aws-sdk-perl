package Paws::MachineLearning::DetailsMap {
  use Moose;
  with 'Paws::API::MapParser';
  has Algorithm => (is => 'ro', isa => 'Str');
  has PredictiveModelType => (is => 'ro', isa => 'Str');
}
1;
