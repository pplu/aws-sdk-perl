
package Paws::Route53Domains::RenewDomain;
  use Moose;
  has CurrentExpiryYear => (is => 'ro', isa => 'Int', required => 1);
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has DurationInYears => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RenewDomain');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Domains::RenewDomainResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::RenewDomain - Arguments for method RenewDomain on L<Paws::Route53Domains>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RenewDomain on the
L<Amazon Route 53 Domains|Paws::Route53Domains> service. Use the attributes of this class
as arguments to method RenewDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RenewDomain.

=head1 SYNOPSIS

    my $route53domains = Paws->service('Route53Domains');
    my $RenewDomainResponse = $route53domains->RenewDomain(
      CurrentExpiryYear => 1,
      DomainName        => 'MyDomainName',
      DurationInYears   => 1,                # OPTIONAL
    );

    # Results:
    my $OperationId = $RenewDomainResponse->OperationId;

    # Returns a L<Paws::Route53Domains::RenewDomainResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53domains/RenewDomain>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CurrentExpiryYear => Int

The year when the registration for the domain is set to expire. This
value must match the current expiration date for the domain.



=head2 B<REQUIRED> DomainName => Str

The name of the domain that you want to renew.



=head2 DurationInYears => Int

The number of years that you want to renew the domain for. The maximum
number of years depends on the top-level domain. For the range of valid
values for your domain, see Domains that You Can Register with Amazon
Route 53
(http://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html)
in the I<Amazon Route 53 Developer Guide>.

Default: 1




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RenewDomain in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

