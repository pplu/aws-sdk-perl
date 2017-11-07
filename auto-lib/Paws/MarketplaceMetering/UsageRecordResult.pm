package Paws::MarketplaceMetering::UsageRecordResult;
  use Moose;
  has MeteringRecordId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UsageRecord => (is => 'ro', isa => 'Paws::MarketplaceMetering::UsageRecord');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceMetering::UsageRecordResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MarketplaceMetering::UsageRecordResult object:

  $service_obj->Method(Att1 => { MeteringRecordId => $value, ..., UsageRecord => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MarketplaceMetering::UsageRecordResult object:

  $result = $service_obj->Method(...);
  $result->Att1->MeteringRecordId

=head1 DESCRIPTION

A UsageRecordResult indicates the status of a given UsageRecord
processed by BatchMeterUsage.

=head1 ATTRIBUTES


=head2 MeteringRecordId => Str

  The MeteringRecordId is a unique identifier for this metering event.


=head2 Status => Str

  The UsageRecordResult Status indicates the status of an individual
UsageRecord processed by BatchMeterUsage.

=over

=item *

I<Success>- The UsageRecord was accepted and honored by
BatchMeterUsage.

=item *

I<CustomerNotSubscribed>- The CustomerIdentifier specified is not
subscribed to your product. The UsageRecord was not honored. Future
UsageRecords for this customer will fail until the customer subscribes
to your product.

=item *

I<DuplicateRecord>- Indicates that the UsageRecord was invalid and not
honored. A previously metered UsageRecord had the same customer,
dimension, and time, but a different quantity.

=back



=head2 UsageRecord => L<Paws::MarketplaceMetering::UsageRecord>

  The UsageRecord that was part of the BatchMeterUsage request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MarketplaceMetering>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

