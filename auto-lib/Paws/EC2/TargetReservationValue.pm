package Paws::EC2::TargetReservationValue;
  use Moose;
  has ReservationValue => (is => 'ro', isa => 'Paws::EC2::ReservationValue', request_name => 'reservationValue', traits => ['NameInRequest']);
  has TargetConfiguration => (is => 'ro', isa => 'Paws::EC2::TargetConfiguration', request_name => 'targetConfiguration', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TargetReservationValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TargetReservationValue object:

  $service_obj->Method(Att1 => { ReservationValue => $value, ..., TargetConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TargetReservationValue object:

  $result = $service_obj->Method(...);
  $result->Att1->ReservationValue

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ReservationValue => L<Paws::EC2::ReservationValue>

  The total value of the Convertible Reserved Instances that make up the
exchange. This is the sum of the list value, remaining upfront price,
and additional upfront cost of the exchange.


=head2 TargetConfiguration => L<Paws::EC2::TargetConfiguration>

  The configuration of the Convertible Reserved Instances that make up
the exchange.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
