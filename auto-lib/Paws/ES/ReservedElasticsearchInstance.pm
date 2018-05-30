package Paws::ES::ReservedElasticsearchInstance;
  use Moose;
  has CurrencyCode => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Int');
  has ElasticsearchInstanceCount => (is => 'ro', isa => 'Int');
  has ElasticsearchInstanceType => (is => 'ro', isa => 'Str');
  has FixedPrice => (is => 'ro', isa => 'Num');
  has PaymentOption => (is => 'ro', isa => 'Str');
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[Paws::ES::RecurringCharge]');
  has ReservationName => (is => 'ro', isa => 'Str');
  has ReservedElasticsearchInstanceId => (is => 'ro', isa => 'Str');
  has ReservedElasticsearchInstanceOfferingId => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has UsagePrice => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::ReservedElasticsearchInstance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::ReservedElasticsearchInstance object:

  $service_obj->Method(Att1 => { CurrencyCode => $value, ..., UsagePrice => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::ReservedElasticsearchInstance object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrencyCode

=head1 DESCRIPTION

Details of a reserved Elasticsearch instance.

=head1 ATTRIBUTES


=head2 CurrencyCode => Str

  The currency code for the reserved Elasticsearch instance offering.


=head2 Duration => Int

  The duration, in seconds, for which the Elasticsearch instance is
reserved.


=head2 ElasticsearchInstanceCount => Int

  The number of Elasticsearch instances that have been reserved.


=head2 ElasticsearchInstanceType => Str

  The Elasticsearch instance type offered by the reserved instance
offering.


=head2 FixedPrice => Num

  The upfront fixed charge you will paid to purchase the specific
reserved Elasticsearch instance offering.


=head2 PaymentOption => Str

  The payment option as defined in the reserved Elasticsearch instance
offering.


=head2 RecurringCharges => ArrayRef[L<Paws::ES::RecurringCharge>]

  The charge to your account regardless of whether you are creating any
domains using the instance offering.


=head2 ReservationName => Str

  The customer-specified identifier to track this reservation.


=head2 ReservedElasticsearchInstanceId => Str

  The unique identifier for the reservation.


=head2 ReservedElasticsearchInstanceOfferingId => Str

  The offering identifier.


=head2 StartTime => Str

  The time the reservation started.


=head2 State => Str

  The state of the reserved Elasticsearch instance.


=head2 UsagePrice => Num

  The rate you are charged for each hour for the domain that is using
this reserved instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

