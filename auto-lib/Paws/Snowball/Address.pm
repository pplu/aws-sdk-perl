package Paws::Snowball::Address;
  use Moose;
  has AddressId => (is => 'ro', isa => 'Str');
  has City => (is => 'ro', isa => 'Str');
  has Company => (is => 'ro', isa => 'Str');
  has Country => (is => 'ro', isa => 'Str');
  has IsRestricted => (is => 'ro', isa => 'Bool');
  has Landmark => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has PhoneNumber => (is => 'ro', isa => 'Str');
  has PostalCode => (is => 'ro', isa => 'Str');
  has PrefectureOrDistrict => (is => 'ro', isa => 'Str');
  has StateOrProvince => (is => 'ro', isa => 'Str');
  has Street1 => (is => 'ro', isa => 'Str');
  has Street2 => (is => 'ro', isa => 'Str');
  has Street3 => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::Address

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Snowball::Address object:

  $service_obj->Method(Att1 => { AddressId => $value, ..., Street3 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Snowball::Address object:

  $result = $service_obj->Method(...);
  $result->Att1->AddressId

=head1 DESCRIPTION

The address that you want the Snowball or Snowballs associated with a
specific job to be shipped to. Addresses are validated at the time of
creation. The address you provide must be located within the
serviceable area of your region. Although no individual elements of the
C<Address> are required, if the address is invalid or unsupported, then
an exception is thrown.

=head1 ATTRIBUTES


=head2 AddressId => Str

  The unique ID for an address.


=head2 City => Str

  The city in an address that a Snowball is to be delivered to.


=head2 Company => Str

  The name of the company to receive a Snowball at an address.


=head2 Country => Str

  The country in an address that a Snowball is to be delivered to.


=head2 IsRestricted => Bool

  If the address you are creating is a primary address, then set this
option to true. This field is not supported in most regions.


=head2 Landmark => Str

  This field is no longer used and the value is ignored.


=head2 Name => Str

  The name of a person to receive a Snowball at an address.


=head2 PhoneNumber => Str

  The phone number associated with an address that a Snowball is to be
delivered to.


=head2 PostalCode => Str

  The postal code in an address that a Snowball is to be delivered to.


=head2 PrefectureOrDistrict => Str

  This field is no longer used and the value is ignored.


=head2 StateOrProvince => Str

  The state or province in an address that a Snowball is to be delivered
to.


=head2 Street1 => Str

  The first line in a street address that a Snowball is to be delivered
to.


=head2 Street2 => Str

  The second line in a street address that a Snowball is to be delivered
to.


=head2 Street3 => Str

  The third line in a street address that a Snowball is to be delivered
to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

