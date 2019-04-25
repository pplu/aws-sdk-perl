
package Paws::MarketplaceMetering::MeterUsage;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', required => 1);
  has ProductCode => (is => 'ro', isa => 'Str', required => 1);
  has Timestamp => (is => 'ro', isa => 'Str', required => 1);
  has UsageDimension => (is => 'ro', isa => 'Str', required => 1);
  has UsageQuantity => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'MeterUsage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MarketplaceMetering::MeterUsageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceMetering::MeterUsage - Arguments for method MeterUsage on L<Paws::MarketplaceMetering>

=head1 DESCRIPTION

This class represents the parameters used for calling the method MeterUsage on the
L<AWSMarketplace Metering|Paws::MarketplaceMetering> service. Use the attributes of this class
as arguments to method MeterUsage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to MeterUsage.

=head1 SYNOPSIS

    my $metering.marketplace = Paws->service('MarketplaceMetering');
    my $MeterUsageResult = $metering . marketplace->MeterUsage(
      DryRun         => 1,
      ProductCode    => 'MyProductCode',
      Timestamp      => '1970-01-01T01:00:00',
      UsageDimension => 'MyUsageDimension',
      UsageQuantity  => 1,

    );

    # Results:
    my $MeteringRecordId = $MeterUsageResult->MeteringRecordId;

    # Returns a L<Paws::MarketplaceMetering::MeterUsageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/metering.marketplace/MeterUsage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DryRun => Bool

Checks whether you have the permissions required for the action, but
does not make the request. If you have the permissions, the request
returns DryRunOperation; otherwise, it returns UnauthorizedException.



=head2 B<REQUIRED> ProductCode => Str

Product code is used to uniquely identify a product in AWS Marketplace.
The product code should be the same as the one used during the
publishing of a new product.



=head2 B<REQUIRED> Timestamp => Str

Timestamp of the hour, recorded in UTC. The seconds and milliseconds
portions of the timestamp will be ignored.



=head2 B<REQUIRED> UsageDimension => Str

It will be one of the fcp dimension name provided during the publishing
of the product.



=head2 B<REQUIRED> UsageQuantity => Int

Consumption value for the hour.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method MeterUsage in L<Paws::MarketplaceMetering>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

