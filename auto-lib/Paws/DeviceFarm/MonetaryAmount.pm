package Paws::DeviceFarm::MonetaryAmount;
  use Moose;
  has Amount => (is => 'ro', isa => 'Num', request_name => 'amount', traits => ['NameInRequest']);
  has CurrencyCode => (is => 'ro', isa => 'Str', request_name => 'currencyCode', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::MonetaryAmount

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::MonetaryAmount object:

  $service_obj->Method(Att1 => { Amount => $value, ..., CurrencyCode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::MonetaryAmount object:

  $result = $service_obj->Method(...);
  $result->Att1->Amount

=head1 DESCRIPTION

A number representing the monetary amount for an offering or
transaction.

=head1 ATTRIBUTES


=head2 Amount => Num

  The numerical amount of an offering or transaction.


=head2 CurrencyCode => Str

  The currency code of a monetary amount. For example, C<USD> means "U.S.
dollars."



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

