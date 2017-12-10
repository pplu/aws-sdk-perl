
package Paws::Route53::ListTrafficPolicyInstancesByHostedZoneResponse;
  use Moose;
  has IsTruncated => (is => 'ro', isa => 'Bool', required => 1);
  has MaxItems => (is => 'ro', isa => 'Str', required => 1);
  has TrafficPolicyInstanceNameMarker => (is => 'ro', isa => 'Str');
  has TrafficPolicyInstances => (is => 'ro', isa => 'ArrayRef[Paws::Route53::TrafficPolicyInstance]', required => 1);
  has TrafficPolicyInstanceTypeMarker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListTrafficPolicyInstancesByHostedZoneResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IsTruncated => Bool

A flag that indicates whether there are more traffic policy instances
to be listed. If the response was truncated, you can get the next group
of traffic policy instances by submitting another
C<ListTrafficPolicyInstancesByHostedZone> request and specifying the
values of C<HostedZoneIdMarker>, C<TrafficPolicyInstanceNameMarker>,
and C<TrafficPolicyInstanceTypeMarker> in the corresponding request
parameters.



=head2 B<REQUIRED> MaxItems => Str

The value that you specified for the C<MaxItems> parameter in the
C<ListTrafficPolicyInstancesByHostedZone> request that produced the
current response.



=head2 TrafficPolicyInstanceNameMarker => Str

If C<IsTruncated> is C<true>, C<TrafficPolicyInstanceNameMarker> is the
name of the first traffic policy instance in the next group of traffic
policy instances.



=head2 B<REQUIRED> TrafficPolicyInstances => ArrayRef[L<Paws::Route53::TrafficPolicyInstance>]

A list that contains one C<TrafficPolicyInstance> element for each
traffic policy instance that matches the elements in the request.



=head2 TrafficPolicyInstanceTypeMarker => Str

If C<IsTruncated> is true, C<TrafficPolicyInstanceTypeMarker> is the
DNS type of the resource record sets that are associated with the first
traffic policy instance in the next group of traffic policy instances.

Valid values are: C<"SOA">, C<"A">, C<"TXT">, C<"NS">, C<"CNAME">, C<"MX">, C<"NAPTR">, C<"PTR">, C<"SRV">, C<"SPF">, C<"AAAA">, C<"CAA">


=cut

