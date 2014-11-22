
package Paws::CloudSearch::CreateDomain {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudSearch::CreateDomainResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateDomainResult');
}
1;