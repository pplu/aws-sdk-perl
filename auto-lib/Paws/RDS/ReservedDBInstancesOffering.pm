package Paws::RDS::ReservedDBInstancesOffering;
  use Moose;
  has CurrencyCode => (is => 'ro', isa => 'Str');
  has DBInstanceClass => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Int');
  has FixedPrice => (is => 'ro', isa => 'Num');
  has MultiAZ => (is => 'ro', isa => 'Bool');
  has OfferingType => (is => 'ro', isa => 'Str');
  has ProductDescription => (is => 'ro', isa => 'Str');
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[Paws::RDS::RecurringCharge]', request_name => 'RecurringCharge', traits => ['NameInRequest']);
  has ReservedDBInstancesOfferingId => (is => 'ro', isa => 'Str');
  has UsagePrice => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ReservedDBInstancesOffering

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::ReservedDBInstancesOffering object:

  $service_obj->Method(Att1 => { CurrencyCode => $value, ..., UsagePrice => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::ReservedDBInstancesOffering object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrencyCode

=head1 DESCRIPTION

This data type is used as a response element in the
DescribeReservedDBInstancesOfferings action.

=head1 ATTRIBUTES


=head2 CurrencyCode => Str

  The currency code for the reserved DB instance offering.


=head2 DBInstanceClass => Str

  The DB instance class for the reserved DB instance.


=head2 Duration => Int

  The duration of the offering in seconds.


=head2 FixedPrice => Num

  The fixed price charged for this offering.


=head2 MultiAZ => Bool

  Indicates if the offering applies to Multi-AZ deployments.


=head2 OfferingType => Str

  The offering type.


=head2 ProductDescription => Str

  The database engine used by the offering.


=head2 RecurringCharges => ArrayRef[L<Paws::RDS::RecurringCharge>]

  The recurring price charged to run this reserved DB instance.


=head2 ReservedDBInstancesOfferingId => Str

  The offering identifier.


=head2 UsagePrice => Num

  The hourly price charged for this offering.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

