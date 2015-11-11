package Paws::RDS::RecurringCharge;
  use Moose;
  has RecurringChargeAmount => (is => 'ro', isa => 'Num');
  has RecurringChargeFrequency => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::RecurringCharge

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::RecurringCharge object:

  $service_obj->Method(Att1 => { RecurringChargeAmount => $value, ..., RecurringChargeFrequency => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::RecurringCharge object:

  $result = $service_obj->Method(...);
  $result->Att1->RecurringChargeAmount

=head1 DESCRIPTION

This data type is used as a response element in the
DescribeReservedDBInstances and DescribeReservedDBInstancesOfferings
actions.

=head1 ATTRIBUTES


=head2 RecurringChargeAmount => Num

  The amount of the recurring charge.


=head2 RecurringChargeFrequency => Str

  The frequency of the recurring charge.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

