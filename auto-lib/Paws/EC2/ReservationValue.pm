package Paws::EC2::ReservationValue;
  use Moose;
  has HourlyPrice => (is => 'ro', isa => 'Str', request_name => 'hourlyPrice', traits => ['NameInRequest']);
  has RemainingTotalValue => (is => 'ro', isa => 'Str', request_name => 'remainingTotalValue', traits => ['NameInRequest']);
  has RemainingUpfrontValue => (is => 'ro', isa => 'Str', request_name => 'remainingUpfrontValue', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReservationValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ReservationValue object:

  $service_obj->Method(Att1 => { HourlyPrice => $value, ..., RemainingUpfrontValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ReservationValue object:

  $result = $service_obj->Method(...);
  $result->Att1->HourlyPrice

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 HourlyPrice => Str

  The hourly rate of the reservation.


=head2 RemainingTotalValue => Str

  The balance of the total value (the sum of remainingUpfrontValue +
hourlyPrice * number of hours remaining).


=head2 RemainingUpfrontValue => Str

  The remaining upfront cost of the reservation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
