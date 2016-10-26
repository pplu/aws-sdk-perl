
package Paws::Route53::ListTrafficPolicyVersionsResponse;
  use Moose;
  has IsTruncated => (is => 'ro', isa => 'Bool', required => 1);
  has MaxItems => (is => 'ro', isa => 'Str', required => 1);
  has TrafficPolicies => (is => 'ro', isa => 'ArrayRef[Paws::Route53::TrafficPolicy]', required => 1);
  has TrafficPolicyVersionMarker => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListTrafficPolicyVersionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IsTruncated => Bool

A flag that indicates whether there are more traffic policies to be
listed. If the response was truncated, you can get the next group of
C<maxitems> traffic policies by calling C<ListTrafficPolicyVersions>
again and specifying the value of the C<NextMarker> element in the
C<marker> parameter.



=head2 B<REQUIRED> MaxItems => Str

The value that you specified for the C<maxitems> parameter in the call
to C<ListTrafficPolicyVersions> that produced the current response.



=head2 B<REQUIRED> TrafficPolicies => ArrayRef[L<Paws::Route53::TrafficPolicy>]

A list that contains one C<TrafficPolicy> element for each traffic
policy version that is associated with the specified traffic policy.



=head2 B<REQUIRED> TrafficPolicyVersionMarker => Str

If C<IsTruncated> is C<true>, the value of
C<TrafficPolicyVersionMarker> identifies the first traffic policy in
the next group of C<MaxItems> traffic policies. Call
C<ListTrafficPolicyVersions> again and specify the value of
C<TrafficPolicyVersionMarker> in the C<TrafficPolicyVersionMarker>
request parameter.

This element is present only if C<IsTruncated> is C<true>.




=cut

