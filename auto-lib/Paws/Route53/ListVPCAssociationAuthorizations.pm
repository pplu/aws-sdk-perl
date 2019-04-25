
package Paws::Route53::ListVPCAssociationAuthorizations;
  use Moose;
  has HostedZoneId => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);
  has MaxResults => (is => 'ro', isa => 'Str', query_name => 'maxresults', traits => ['ParamInQuery']);
  has NextToken => (is => 'ro', isa => 'Str', query_name => 'nexttoken', traits => ['ParamInQuery']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListVPCAssociationAuthorizations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/hostedzone/{Id}/authorizevpcassociation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListVPCAssociationAuthorizationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListVPCAssociationAuthorizations - Arguments for method ListVPCAssociationAuthorizations on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListVPCAssociationAuthorizations on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method ListVPCAssociationAuthorizations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListVPCAssociationAuthorizations.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $ListVPCAssociationAuthorizationsResponse =
      $route53->ListVPCAssociationAuthorizations(
      HostedZoneId => 'MyResourceId',
      MaxResults   => 'MyMaxResults',         # OPTIONAL
      NextToken    => 'MyPaginationToken',    # OPTIONAL
      );

    # Results:
    my $HostedZoneId = $ListVPCAssociationAuthorizationsResponse->HostedZoneId;
    my $NextToken    = $ListVPCAssociationAuthorizationsResponse->NextToken;
    my $VPCs         = $ListVPCAssociationAuthorizationsResponse->VPCs;

  # Returns a L<Paws::Route53::ListVPCAssociationAuthorizationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/ListVPCAssociationAuthorizations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostedZoneId => Str

The ID of the hosted zone for which you want a list of VPCs that can be
associated with the hosted zone.



=head2 MaxResults => Str

I<Optional>: An integer that specifies the maximum number of VPCs that
you want Amazon Route 53 to return. If you don't specify a value for
C<MaxResults>, Route 53 returns up to 50 VPCs per page.



=head2 NextToken => Str

I<Optional>: If a response includes a C<NextToken> element, there are
more VPCs that can be associated with the specified hosted zone. To get
the next page of results, submit another request, and include the value
of C<NextToken> from the response in the C<nexttoken> parameter in
another C<ListVPCAssociationAuthorizations> request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListVPCAssociationAuthorizations in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

