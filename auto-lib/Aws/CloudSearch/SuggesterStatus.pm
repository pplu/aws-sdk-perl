package Aws::CloudSearch::SuggesterStatus {
  use Moose;
  has Options => (is => 'ro', isa => 'Aws::CloudSearch::Suggester', required => 1);
  has Status => (is => 'ro', isa => 'Aws::CloudSearch::OptionStatus', required => 1);
}
1;
