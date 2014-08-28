
package Aws::Route53Domains::RetrieveDomainAuthCode {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RetrieveDomainAuthCode');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::Route53Domains::RetrieveDomainAuthCodeResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;