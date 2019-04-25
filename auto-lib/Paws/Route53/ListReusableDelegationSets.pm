
package Paws::Route53::ListReusableDelegationSets;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str', query_name => 'marker', traits => ['ParamInQuery']);
  has MaxItems => (is => 'ro', isa => 'Str', query_name => 'maxitems', traits => ['ParamInQuery']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListReusableDelegationSets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/delegationset');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListReusableDelegationSetsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListReusableDelegationSets - Arguments for method ListReusableDelegationSets on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListReusableDelegationSets on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method ListReusableDelegationSets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListReusableDelegationSets.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $ListReusableDelegationSetsResponse =
      $route53->ListReusableDelegationSets(
      Marker   => 'MyPageMarker',      # OPTIONAL
      MaxItems => 'MyPageMaxItems',    # OPTIONAL
      );

    # Results:
    my $DelegationSets = $ListReusableDelegationSetsResponse->DelegationSets;
    my $IsTruncated    = $ListReusableDelegationSetsResponse->IsTruncated;
    my $Marker         = $ListReusableDelegationSetsResponse->Marker;
    my $MaxItems       = $ListReusableDelegationSetsResponse->MaxItems;
    my $NextMarker     = $ListReusableDelegationSetsResponse->NextMarker;

    # Returns a L<Paws::Route53::ListReusableDelegationSetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/ListReusableDelegationSets>

=head1 ATTRIBUTES


=head2 Marker => Str

If the value of C<IsTruncated> in the previous response was C<true>,
you have more reusable delegation sets. To get another group, submit
another C<ListReusableDelegationSets> request.

For the value of C<marker>, specify the value of C<NextMarker> from the
previous response, which is the ID of the first reusable delegation set
that Amazon Route 53 will return if you submit another request.

If the value of C<IsTruncated> in the previous response was C<false>,
there are no more reusable delegation sets to get.



=head2 MaxItems => Str

The number of reusable delegation sets that you want Amazon Route 53 to
return in the response to this request. If you specify a value greater
than 100, Route 53 returns only the first 100 reusable delegation sets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListReusableDelegationSets in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

