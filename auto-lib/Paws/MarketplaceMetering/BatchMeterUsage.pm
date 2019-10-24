# Generated from json/callargs_class.tt

package Paws::MarketplaceMetering::BatchMeterUsage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MarketplaceMetering::Types qw/MarketplaceMetering_UsageRecord/;
  has ProductCode => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has UsageRecords => (is => 'ro', isa => ArrayRef[MarketplaceMetering_UsageRecord], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'BatchMeterUsage');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MarketplaceMetering::BatchMeterUsageResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UsageRecords' => {
                                   'class' => 'Paws::MarketplaceMetering::UsageRecord',
                                   'type' => 'ArrayRef[MarketplaceMetering_UsageRecord]'
                                 },
               'ProductCode' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'UsageRecords' => 1,
                    'ProductCode' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceMetering::BatchMeterUsage - Arguments for method BatchMeterUsage on L<Paws::MarketplaceMetering>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchMeterUsage on the
L<AWSMarketplace Metering|Paws::MarketplaceMetering> service. Use the attributes of this class
as arguments to method BatchMeterUsage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchMeterUsage.

=head1 SYNOPSIS

    my $metering.marketplace = Paws->service('MarketplaceMetering');
    my $BatchMeterUsageResult = $metering . marketplace->BatchMeterUsage(
      ProductCode  => 'MyProductCode',
      UsageRecords => [
        {
          CustomerIdentifier => 'MyCustomerIdentifier',    # min: 1, max: 255
          Dimension          => 'MyUsageDimension',        # min: 1, max: 255
          Timestamp          => '1970-01-01T01:00:00',
          Quantity => 1,    # max: 2147483647; OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $Results            = $BatchMeterUsageResult->Results;
    my $UnprocessedRecords = $BatchMeterUsageResult->UnprocessedRecords;

    # Returns a L<Paws::MarketplaceMetering::BatchMeterUsageResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/metering.marketplace/BatchMeterUsage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProductCode => Str

Product code is used to uniquely identify a product in AWS Marketplace.
The product code should be the same as the one used during the
publishing of a new product.



=head2 B<REQUIRED> UsageRecords => ArrayRef[MarketplaceMetering_UsageRecord]

The set of UsageRecords to submit. BatchMeterUsage accepts up to 25
UsageRecords at a time.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchMeterUsage in L<Paws::MarketplaceMetering>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

