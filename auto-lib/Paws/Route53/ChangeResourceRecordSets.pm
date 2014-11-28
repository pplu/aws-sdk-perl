
package Paws::Route53::ChangeResourceRecordSets {
  use Moose;
  has ChangeBatch => (is => 'ro', isa => 'Paws::Route53::ChangeBatch', required => 1);
  has HostedZoneId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ChangeResourceRecordSets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ChangeResourceRecordSetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ChangeResourceRecordSetsResult');
}
1;