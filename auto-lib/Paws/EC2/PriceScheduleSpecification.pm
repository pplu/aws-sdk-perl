package Paws::EC2::PriceScheduleSpecification;
  use Moose;
  has CurrencyCode => (is => 'ro', isa => 'Str', request_name => 'currencyCode', traits => ['NameInRequest']);
  has Price => (is => 'ro', isa => 'Num', request_name => 'price', traits => ['NameInRequest']);
  has Term => (is => 'ro', isa => 'Int', request_name => 'term', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::PriceScheduleSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::PriceScheduleSpecification object:

  $service_obj->Method(Att1 => { CurrencyCode => $value, ..., Term => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::PriceScheduleSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrencyCode

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


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
