
package Paws::Route53::ListHostedZones;
  use Moose;
  has DelegationSetId => (is => 'ro', isa => 'Str', query_name => 'delegationsetid', traits => ['ParamInQuery']);
  has Marker => (is => 'ro', isa => 'Str', query_name => 'marker', traits => ['ParamInQuery']);
  has MaxItems => (is => 'ro', isa => 'Str', query_name => 'maxitems', traits => ['ParamInQuery']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListHostedZones');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/hostedzone');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListHostedZonesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListHostedZones - Arguments for method ListHostedZones on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListHostedZones on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method ListHostedZones.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListHostedZones.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $ListHostedZonesResponse = $route53->ListHostedZones(
      DelegationSetId => 'MyResourceId',      # OPTIONAL
      Marker          => 'MyPageMarker',      # OPTIONAL
      MaxItems        => 'MyPageMaxItems',    # OPTIONAL
    );

    # Results:
    my $HostedZones = $ListHostedZonesResponse->HostedZones;
    my $IsTruncated = $ListHostedZonesResponse->IsTruncated;
    my $Marker      = $ListHostedZonesResponse->Marker;
    my $MaxItems    = $ListHostedZonesResponse->MaxItems;
    my $NextMarker  = $ListHostedZonesResponse->NextMarker;

    # Returns a L<Paws::Route53::ListHostedZonesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/ListHostedZones>

=head1 ATTRIBUTES


=head2 DelegationSetId => Str

If you're using reusable delegation sets and you want to list all of
the hosted zones that are associated with a reusable delegation set,
specify the ID of that reusable delegation set.



=head2 Marker => Str

If the value of C<IsTruncated> in the previous response was C<true>,
you have more hosted zones. To get more hosted zones, submit another
C<ListHostedZones> request.

For the value of C<marker>, specify the value of C<NextMarker> from the
previous response, which is the ID of the first hosted zone that Amazon
Route 53 will return if you submit another request.

If the value of C<IsTruncated> in the previous response was C<false>,
there are no more hosted zones to get.



=head2 MaxItems => Str

(Optional) The maximum number of hosted zones that you want Amazon
Route 53 to return. If you have more than C<maxitems> hosted zones, the
value of C<IsTruncated> in the response is C<true>, and the value of
C<NextMarker> is the hosted zone ID of the first hosted zone that Route
53 will return if you submit another request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListHostedZones in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

