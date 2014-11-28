
package Paws::Route53::ListResourceRecordSetsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has IsTruncated => (is => 'ro', isa => 'Bool', required => 1);
  has MaxItems => (is => 'ro', isa => 'Str', required => 1);
  has NextRecordIdentifier => (is => 'ro', isa => 'Str');
  has NextRecordName => (is => 'ro', isa => 'Str');
  has NextRecordType => (is => 'ro', isa => 'Str');
  has ResourceRecordSets => (is => 'ro', isa => 'ArrayRef[Paws::Route53::ResourceRecordSet]', required => 1);

}
1;