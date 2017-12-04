
package Paws::MarketplaceMetering::BatchMeterUsage;
  use Moose;
  has ProductCode => (is => 'ro', isa => 'Str', required => 1);
  has UsageRecords => (is => 'ro', isa => 'ArrayRef[Paws::MarketplaceMetering::UsageRecord]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchMeterUsage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MarketplaceMetering::BatchMeterUsageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceMetering::BatchMeterUsage - Arguments for method BatchMeterUsage on L<Paws::MarketplaceMetering>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchMeterUsage on the 
AWSMarketplace Metering service. Use the attributes of this class
as arguments to method BatchMeterUsage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchMeterUsage.

As an example:

  $service_obj->BatchMeterUsage(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProductCode => Str

Product code is used to uniquely identify a product in AWS Marketplace.
The product code should be the same as the one used during the
publishing of a new product.



=head2 B<REQUIRED> UsageRecords => ArrayRef[L<Paws::MarketplaceMetering::UsageRecord>]

The set of UsageRecords to submit. BatchMeterUsage accepts up to 25
UsageRecords at a time.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchMeterUsage in L<Paws::MarketplaceMetering>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

