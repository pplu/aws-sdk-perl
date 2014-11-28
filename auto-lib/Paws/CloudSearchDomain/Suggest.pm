
package Paws::CloudSearchDomain::Suggest {
  use Moose;
  has query => (is => 'ro', isa => 'Str', required => 1);
  has size => (is => 'ro', isa => 'Num');
  has suggester => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Suggest');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudSearchDomain::SuggestResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SuggestResult');
}
1;