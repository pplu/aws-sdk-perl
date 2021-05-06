
package Paws::MarketplaceMetering::ResolveCustomer;
  use Moose;
  has RegistrationToken => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResolveCustomer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MarketplaceMetering::ResolveCustomerResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceMetering::ResolveCustomer - Arguments for method ResolveCustomer on L<Paws::MarketplaceMetering>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResolveCustomer on the
L<AWSMarketplace Metering|Paws::MarketplaceMetering> service. Use the attributes of this class
as arguments to method ResolveCustomer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResolveCustomer.

=head1 SYNOPSIS

    my $metering.marketplace = Paws->service('MarketplaceMetering');
    my $ResolveCustomerResult = $metering . marketplace->ResolveCustomer(
      RegistrationToken => 'MyNonEmptyString',

    );

    # Results:
    my $CustomerIdentifier = $ResolveCustomerResult->CustomerIdentifier;
    my $ProductCode        = $ResolveCustomerResult->ProductCode;

    # Returns a L<Paws::MarketplaceMetering::ResolveCustomerResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/metering.marketplace/ResolveCustomer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RegistrationToken => Str

When a buyer visits your website during the registration process, the
buyer submits a registration token through the browser. The
registration token is resolved to obtain a CustomerIdentifier and
product code.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResolveCustomer in L<Paws::MarketplaceMetering>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

