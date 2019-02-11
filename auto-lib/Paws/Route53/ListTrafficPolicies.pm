
package Paws::Route53::ListTrafficPolicies;
  use Moose;
  has MaxItems => (is => 'ro', isa => 'Str', query_name => 'maxitems', traits => ['ParamInQuery']);
  has TrafficPolicyIdMarker => (is => 'ro', isa => 'Str', query_name => 'trafficpolicyid', traits => ['ParamInQuery']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTrafficPolicies');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/trafficpolicies');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListTrafficPoliciesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListTrafficPolicies - Arguments for method ListTrafficPolicies on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTrafficPolicies on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method ListTrafficPolicies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTrafficPolicies.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $ListTrafficPoliciesResponse = $route53->ListTrafficPolicies(
      MaxItems              => 'MyPageMaxItems',       # OPTIONAL
      TrafficPolicyIdMarker => 'MyTrafficPolicyId',    # OPTIONAL
    );

    # Results:
    my $IsTruncated = $ListTrafficPoliciesResponse->IsTruncated;
    my $MaxItems    = $ListTrafficPoliciesResponse->MaxItems;
    my $TrafficPolicyIdMarker =
      $ListTrafficPoliciesResponse->TrafficPolicyIdMarker;
    my $TrafficPolicySummaries =
      $ListTrafficPoliciesResponse->TrafficPolicySummaries;

    # Returns a L<Paws::Route53::ListTrafficPoliciesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/ListTrafficPolicies>

=head1 ATTRIBUTES


=head2 MaxItems => Str

(Optional) The maximum number of traffic policies that you want Amazon
Route 53 to return in response to this request. If you have more than
C<MaxItems> traffic policies, the value of C<IsTruncated> in the
response is C<true>, and the value of C<TrafficPolicyIdMarker> is the
ID of the first traffic policy that Route 53 will return if you submit
another request.



=head2 TrafficPolicyIdMarker => Str

(Conditional) For your first request to C<ListTrafficPolicies>, don't
include the C<TrafficPolicyIdMarker> parameter.

If you have more traffic policies than the value of C<MaxItems>,
C<ListTrafficPolicies> returns only the first C<MaxItems> traffic
policies. To get the next group of policies, submit another request to
C<ListTrafficPolicies>. For the value of C<TrafficPolicyIdMarker>,
specify the value of C<TrafficPolicyIdMarker> that was returned in the
previous response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTrafficPolicies in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

