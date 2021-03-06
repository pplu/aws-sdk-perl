# Generated by default/object.tt
package Paws::CustomerProfiles::Address;
  use Moose;
  has Address1 => (is => 'ro', isa => 'Str');
  has Address2 => (is => 'ro', isa => 'Str');
  has Address3 => (is => 'ro', isa => 'Str');
  has Address4 => (is => 'ro', isa => 'Str');
  has City => (is => 'ro', isa => 'Str');
  has Country => (is => 'ro', isa => 'Str');
  has County => (is => 'ro', isa => 'Str');
  has PostalCode => (is => 'ro', isa => 'Str');
  has Province => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::Address

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CustomerProfiles::Address object:

  $service_obj->Method(Att1 => { Address1 => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CustomerProfiles::Address object:

  $result = $service_obj->Method(...);
  $result->Att1->Address1

=head1 DESCRIPTION

A generic address associated with the customer that is not mailing,
shipping, or billing.

=head1 ATTRIBUTES


=head2 Address1 => Str

The first line of a customer address.


=head2 Address2 => Str

The second line of a customer address.


=head2 Address3 => Str

The third line of a customer address.


=head2 Address4 => Str

The fourth line of a customer address.


=head2 City => Str

The city in which a customer lives.


=head2 Country => Str

The country in which a customer lives.


=head2 County => Str

The county in which a customer lives.


=head2 PostalCode => Str

The postal code of a customer address.


=head2 Province => Str

The province in which a customer lives.


=head2 State => Str

The state in which a customer lives.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

