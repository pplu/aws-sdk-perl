package Paws::CloudSearchDomain::SuggestModel {
  use Moose;
  has found => (is => 'ro', isa => 'Num');
  has query => (is => 'ro', isa => 'Str');
  has suggestions => (is => 'ro', isa => 'ArrayRef[Paws::CloudSearchDomain::SuggestionMatch]');
}
1;
