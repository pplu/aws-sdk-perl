
package Paws::Route53Resolver::ListResolverEndpointIpAddresses;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResolverEndpointId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResolverEndpointIpAddresses');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::ListResolverEndpointIpAddressesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ListResolverEndpointIpAddresses - Arguments for method ListResolverEndpointIpAddresses on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResolverEndpointIpAddresses on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method ListResolverEndpointIpAddresses.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResolverEndpointIpAddresses.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $ListResolverEndpointIpAddressesResponse =
      $route53resolver->ListResolverEndpointIpAddresses(
      ResolverEndpointId => 'MyResourceId',
      MaxResults         => 1,                # OPTIONAL
      NextToken          => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $IpAddresses = $ListResolverEndpointIpAddressesResponse->IpAddresses;
    my $MaxResults  = $ListResolverEndpointIpAddressesResponse->MaxResults;
    my $NextToken   = $ListResolverEndpointIpAddressesResponse->NextToken;

# Returns a L<Paws::Route53Resolver::ListResolverEndpointIpAddressesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/ListResolverEndpointIpAddresses>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of IP addresses that you want to return in the
response to a C<ListResolverEndpointIpAddresses> request. If you don't
specify a value for C<MaxResults>, Resolver returns up to 100 IP
addresses.



=head2 NextToken => Str

For the first C<ListResolverEndpointIpAddresses> request, omit this
value.

If the specified resolver endpoint has more than C<MaxResults> IP
addresses, you can submit another C<ListResolverEndpointIpAddresses>
request to get the next group of IP addresses. In the next request,
specify the value of C<NextToken> from the previous response.



=head2 B<REQUIRED> ResolverEndpointId => Str

The ID of the resolver endpoint that you want to get IP addresses for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResolverEndpointIpAddresses in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

