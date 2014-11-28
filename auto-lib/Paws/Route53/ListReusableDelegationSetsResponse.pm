
package Paws::Route53::ListReusableDelegationSetsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has DelegationSets => (is => 'ro', isa => 'ArrayRef[Paws::Route53::DelegationSet]', required => 1);
  has IsTruncated => (is => 'ro', isa => 'Bool', required => 1);
  has Marker => (is => 'ro', isa => 'Str', required => 1);
  has MaxItems => (is => 'ro', isa => 'Str', required => 1);
  has NextMarker => (is => 'ro', isa => 'Str');

}
1;