
package Paws::Route53::ListTrafficPolicyVersions;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id' , required => 1);
  has MaxItems => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'maxitems' );
  has TrafficPolicyVersionMarker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'trafficpolicyversion' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTrafficPolicyVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/trafficpolicies/{Id}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListTrafficPolicyVersionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListTrafficPolicyVersions

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

Specify the value of C<Id> of the traffic policy for which you want to
list all versions.



=head2 MaxItems => Str

The maximum number of traffic policy versions that you want Amazon
Route 53 to include in the response body for this request. If the
specified traffic policy has more than C<MaxItems> versions, the value
of the C<IsTruncated> element in the response is C<true>, and the value
of the C<TrafficPolicyVersionMarker> element is the ID of the first
version in the next group of C<MaxItems> traffic policy versions.



=head2 TrafficPolicyVersionMarker => Str

For your first request to C<ListTrafficPolicyVersions>, do not include
the C<TrafficPolicyVersionMarker> parameter.

If you have more traffic policy versions than the value of C<MaxItems>,
C<ListTrafficPolicyVersions> returns only the first group of
C<MaxItems> versions. To get the next group of C<MaxItems> traffic
policy versions, submit another request to
C<ListTrafficPolicyVersions>. For the value of
C<TrafficPolicyVersionMarker>, specify the value of the
C<TrafficPolicyVersionMarker> element that was returned in the previous
response.

Traffic policy versions are listed in sequential order.




=cut

