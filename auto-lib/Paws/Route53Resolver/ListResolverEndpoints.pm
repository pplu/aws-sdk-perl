
package Paws::Route53Resolver::ListResolverEndpoints;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::Filter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResolverEndpoints');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::ListResolverEndpointsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ListResolverEndpoints - Arguments for method ListResolverEndpoints on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResolverEndpoints on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method ListResolverEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResolverEndpoints.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $ListResolverEndpointsResponse = $route53resolver->ListResolverEndpoints(
      Filters => [
        {
          Name   => 'MyFilterName',    # min: 1, max: 64; OPTIONAL
          Values => [
            'MyFilterValue', ...       # min: 1, max: 64
          ],                           # OPTIONAL
        },
        ...
      ],                               # OPTIONAL
      MaxResults => 1,                 # OPTIONAL
      NextToken  => 'MyNextToken',     # OPTIONAL
    );

    # Results:
    my $MaxResults        = $ListResolverEndpointsResponse->MaxResults;
    my $NextToken         = $ListResolverEndpointsResponse->NextToken;
    my $ResolverEndpoints = $ListResolverEndpointsResponse->ResolverEndpoints;

    # Returns a L<Paws::Route53Resolver::ListResolverEndpointsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/ListResolverEndpoints>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::Route53Resolver::Filter>]

An optional specification to return a subset of resolver endpoints,
such as all inbound resolver endpoints.

If you submit a second or subsequent C<ListResolverEndpoints> request
and specify the C<NextToken> parameter, you must use the same values
for C<Filters>, if any, as in the previous request.



=head2 MaxResults => Int

The maximum number of resolver endpoints that you want to return in the
response to a C<ListResolverEndpoints> request. If you don't specify a
value for C<MaxResults>, Resolver returns up to 100 resolver endpoints.



=head2 NextToken => Str

For the first C<ListResolverEndpoints> request, omit this value.

If you have more than C<MaxResults> resolver endpoints, you can submit
another C<ListResolverEndpoints> request to get the next group of
resolver endpoints. In the next request, specify the value of
C<NextToken> from the previous response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResolverEndpoints in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

