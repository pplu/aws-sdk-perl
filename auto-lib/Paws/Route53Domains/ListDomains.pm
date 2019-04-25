
package Paws::Route53Domains::ListDomains;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDomains');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Domains::ListDomainsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::ListDomains - Arguments for method ListDomains on L<Paws::Route53Domains>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDomains on the
L<Amazon Route 53 Domains|Paws::Route53Domains> service. Use the attributes of this class
as arguments to method ListDomains.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDomains.

=head1 SYNOPSIS

    my $route53domains = Paws->service('Route53Domains');
    my $ListDomainsResponse = $route53domains->ListDomains(
      Marker   => 'MyPageMarker',    # OPTIONAL
      MaxItems => 1,                 # OPTIONAL
    );

    # Results:
    my $Domains        = $ListDomainsResponse->Domains;
    my $NextPageMarker = $ListDomainsResponse->NextPageMarker;

    # Returns a L<Paws::Route53Domains::ListDomainsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53domains/ListDomains>

=head1 ATTRIBUTES


=head2 Marker => Str

For an initial request for a list of domains, omit this element. If the
number of domains that are associated with the current AWS account is
greater than the value that you specified for C<MaxItems>, you can use
C<Marker> to return additional domains. Get the value of
C<NextPageMarker> from the previous response, and submit another
request that includes the value of C<NextPageMarker> in the C<Marker>
element.

Constraints: The marker must match the value specified in the previous
request.



=head2 MaxItems => Int

Number of domains to be returned.

Default: 20




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDomains in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

