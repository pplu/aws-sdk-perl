package Paws::EC2::Purchase;
  use Moose;
  has CurrencyCode => (is => 'ro', isa => 'Str', request_name => 'currencyCode', traits => ['NameInRequest']);
  has Duration => (is => 'ro', isa => 'Int', request_name => 'duration', traits => ['NameInRequest']);
  has HostIdSet => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'hostIdSet', traits => ['NameInRequest']);
  has HostReservationId => (is => 'ro', isa => 'Str', request_name => 'hostReservationId', traits => ['NameInRequest']);
  has HourlyPrice => (is => 'ro', isa => 'Str', request_name => 'hourlyPrice', traits => ['NameInRequest']);
  has InstanceFamily => (is => 'ro', isa => 'Str', request_name => 'instanceFamily', traits => ['NameInRequest']);
  has PaymentOption => (is => 'ro', isa => 'Str', request_name => 'paymentOption', traits => ['NameInRequest']);
  has UpfrontPrice => (is => 'ro', isa => 'Str', request_name => 'upfrontPrice', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::Purchase

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::Purchase object:

  $service_obj->Method(Att1 => { CurrencyCode => $value, ..., UpfrontPrice => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::Purchase object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrencyCode

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CurrencyCode => Str

  The currency in which the C<UpfrontPrice> and C<HourlyPrice> amounts
are specified. At this time, the only supported currency is C<USD>.


=head2 Duration => Int

  The duration of the reservation's term in seconds.


=head2 HostIdSet => ArrayRef[Str|Undef]

  The IDs of the Dedicated Hosts associated with the reservation.


=head2 HostReservationId => Str

  The ID of the reservation.


=head2 HourlyPrice => Str

  The hourly price of the reservation per hour.


=head2 InstanceFamily => Str

  The instance family on the Dedicated Host that the reservation can be
associated with.


=head2 PaymentOption => Str

  The payment option for the reservation.


=head2 UpfrontPrice => Str

  The upfront price of the reservation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
