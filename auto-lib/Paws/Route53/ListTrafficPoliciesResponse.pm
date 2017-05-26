
package Paws::Route53::ListTrafficPoliciesResponse;
  use Moose;
  has IsTruncated => (is => 'ro', isa => 'Bool', required => 1);
  has MaxItems => (is => 'ro', isa => 'Str', required => 1);
  has TrafficPolicyIdMarker => (is => 'ro', isa => 'Str', required => 1);
  has TrafficPolicySummaries => (is => 'ro', isa => 'ArrayRef[Paws::Route53::TrafficPolicySummary]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListTrafficPoliciesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IsTruncated => Bool

A flag that indicates whether there are more traffic policies to be
listed. If the response was truncated, you can get the next group of
traffic policies by submitting another C<ListTrafficPolicies> request
and specifying the value of C<TrafficPolicyIdMarker> in the
C<TrafficPolicyIdMarker> request parameter.



=head2 B<REQUIRED> MaxItems => Str

The value that you specified for the C<MaxItems> parameter in the
C<ListTrafficPolicies> request that produced the current response.



=head2 B<REQUIRED> TrafficPolicyIdMarker => Str

If the value of C<IsTruncated> is C<true>, C<TrafficPolicyIdMarker> is
the ID of the first traffic policy in the next group of C<MaxItems>
traffic policies.



=head2 B<REQUIRED> TrafficPolicySummaries => ArrayRef[L<Paws::Route53::TrafficPolicySummary>]

A list that contains one C<TrafficPolicySummary> element for each
traffic policy that was created by the current AWS account.




=cut

