
package Paws::MarketplaceMetering::RegisterUsage;
  use Moose;
  has Nonce => (is => 'ro', isa => 'Str');
  has ProductCode => (is => 'ro', isa => 'Str', required => 1);
  has PublicKeyVersion => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterUsage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MarketplaceMetering::RegisterUsageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceMetering::RegisterUsage - Arguments for method RegisterUsage on L<Paws::MarketplaceMetering>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterUsage on the
L<AWSMarketplace Metering|Paws::MarketplaceMetering> service. Use the attributes of this class
as arguments to method RegisterUsage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterUsage.

=head1 SYNOPSIS

    my $metering.marketplace = Paws->service('MarketplaceMetering');
    my $RegisterUsageResult = $metering . marketplace->RegisterUsage(
      ProductCode      => 'MyProductCode',
      PublicKeyVersion => 1,
      Nonce            => 'MyNonce',         # OPTIONAL
    );

    # Results:
    my $PublicKeyRotationTimestamp =
      $RegisterUsageResult->PublicKeyRotationTimestamp;
    my $Signature = $RegisterUsageResult->Signature;

    # Returns a L<Paws::MarketplaceMetering::RegisterUsageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/metering.marketplace/RegisterUsage>

=head1 ATTRIBUTES


=head2 Nonce => Str

(Optional) To scope down the registration to a specific running
software instance and guard against replay attacks.



=head2 B<REQUIRED> ProductCode => Str

Product code is used to uniquely identify a product in AWS Marketplace.
The product code should be the same as the one used during the
publishing of a new product.



=head2 B<REQUIRED> PublicKeyVersion => Int

Public Key Version provided by AWS Marketplace




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterUsage in L<Paws::MarketplaceMetering>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

