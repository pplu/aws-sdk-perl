package Paws::EC2::PriceSchedule;
  use Moose;
  has Active => (is => 'ro', isa => 'Bool', request_name => 'active', traits => ['NameInRequest']);
  has CurrencyCode => (is => 'ro', isa => 'Str', request_name => 'currencyCode', traits => ['NameInRequest']);
  has Price => (is => 'ro', isa => 'Num', request_name => 'price', traits => ['NameInRequest']);
  has Term => (is => 'ro', isa => 'Int', request_name => 'term', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::PriceSchedule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::PriceSchedule object:

  $service_obj->Method(Att1 => { Active => $value, ..., Term => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::PriceSchedule object:

  $result = $service_obj->Method(...);
  $result->Att1->Active

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Active => Bool

  The current price schedule, as determined by the term remaining for the
Reserved Instance in the listing.

A specific price schedule is always in effect, but only one price
schedule can be active at any time. Take, for example, a Reserved
Instance listing that has five months remaining in its term. When you
specify price schedules for five months and two months, this means that
schedule 1, covering the first three months of the remaining term, will
be active during months 5, 4, and 3. Then schedule 2, covering the last
two months of the term, will be active for months 2 and 1.


=head2 CurrencyCode => Str

  The currency for transacting the Reserved Instance resale. At this
time, the only supported currency is C<USD>.


=head2 Price => Num

  The fixed price for the term.


=head2 Term => Int

  The number of months remaining in the reservation. For example, 2 is
the second to the last month before the capacity reservation expires.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
