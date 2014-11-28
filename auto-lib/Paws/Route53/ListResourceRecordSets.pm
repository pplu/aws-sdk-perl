
package Paws::Route53::ListResourceRecordSets {
  use Moose;
  has HostedZoneId => (is => 'ro', isa => 'Str', required => 1);
  has MaxItems => (is => 'ro', isa => 'Str');
  has StartRecordIdentifier => (is => 'ro', isa => 'Str');
  has StartRecordName => (is => 'ro', isa => 'Str');
  has StartRecordType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourceRecordSets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListResourceRecordSetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListResourceRecordSetsResult');
}
1;