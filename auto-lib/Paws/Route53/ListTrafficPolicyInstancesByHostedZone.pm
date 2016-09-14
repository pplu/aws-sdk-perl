
package Paws::Route53::ListTrafficPolicyInstancesByHostedZone;
  use Moose;
  has HostedZoneId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'id' , required => 1);
  has MaxItems => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'maxitems' );
  has TrafficPolicyInstanceNameMarker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'trafficpolicyinstancename' );
  has TrafficPolicyInstanceTypeMarker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'trafficpolicyinstancetype' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTrafficPolicyInstancesByHostedZone');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/trafficpolicyinstances/hostedzone');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListTrafficPolicyInstancesByHostedZoneResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListTrafficPolicyInstancesByHostedZoneResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostedZoneId => Str

The ID of the hosted zone for which you want to list traffic policy
instances.



=head2 MaxItems => Str

The maximum number of traffic policy instances to be included in the
response body for this request. If you have more than C<MaxItems>
traffic policy instances, the value of the C<IsTruncated> element in
the response is C<true>, and the values of C<HostedZoneIdMarker>,
C<TrafficPolicyInstanceNameMarker>, and
C<TrafficPolicyInstanceTypeMarker> represent the first traffic policy
instance in the next group of C<MaxItems> traffic policy instances.



=head2 TrafficPolicyInstanceNameMarker => Str

For the first request to C<ListTrafficPolicyInstancesByHostedZone>,
omit this value.

If the value of C<IsTruncated> in the previous response was C<true>,
C<TrafficPolicyInstanceNameMarker> is the name of the first traffic
policy instance in the next group of C<MaxItems> traffic policy
instances.

If the value of C<IsTruncated> in the previous response was C<false>,
there are no more traffic policy instances to get for this hosted zone.

If the value of C<IsTruncated> in the previous response was C<false>,
omit this value.



=head2 TrafficPolicyInstanceTypeMarker => Str

For the first request to C<ListTrafficPolicyInstancesByHostedZone>,
omit this value.

If the value of C<IsTruncated> in the previous response was C<true>,
C<TrafficPolicyInstanceTypeMarker> is the DNS type of the first traffic
policy instance in the next group of C<MaxItems> traffic policy
instances.

If the value of C<IsTruncated> in the previous response was C<false>,
there are no more traffic policy instances to get for this hosted zone.

Valid values are: C<"SOA">, C<"A">, C<"TXT">, C<"NS">, C<"CNAME">, C<"MX">, C<"NAPTR">, C<"PTR">, C<"SRV">, C<"SPF">, C<"AAAA">


=cut

