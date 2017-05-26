package Paws::Route53Domains::ContactDetail;
  use Moose;
  has AddressLine1 => (is => 'ro', isa => 'Str');
  has AddressLine2 => (is => 'ro', isa => 'Str');
  has City => (is => 'ro', isa => 'Str');
  has ContactType => (is => 'ro', isa => 'Str');
  has CountryCode => (is => 'ro', isa => 'Str');
  has Email => (is => 'ro', isa => 'Str');
  has ExtraParams => (is => 'ro', isa => 'ArrayRef[Paws::Route53Domains::ExtraParam]');
  has Fax => (is => 'ro', isa => 'Str');
  has FirstName => (is => 'ro', isa => 'Str');
  has LastName => (is => 'ro', isa => 'Str');
  has OrganizationName => (is => 'ro', isa => 'Str');
  has PhoneNumber => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has ZipCode => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::ContactDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53Domains::ContactDetail object:

  $service_obj->Method(Att1 => { AddressLine1 => $value, ..., ZipCode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53Domains::ContactDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->AddressLine1

=head1 DESCRIPTION

ContactDetail includes the following elements.

=head1 ATTRIBUTES


=head2 AddressLine1 => Str

  First line of the contact's address.


=head2 AddressLine2 => Str

  Second line of contact's address, if any.


=head2 City => Str

  The city of the contact's address.


=head2 ContactType => Str

  Indicates whether the contact is a person, company, association, or
public organization. If you choose an option other than C<PERSON>, you
must enter an organization name, and you can't enable privacy
protection for the contact.


=head2 CountryCode => Str

  Code for the country of the contact's address.


=head2 Email => Str

  Email address of the contact.


=head2 ExtraParams => ArrayRef[L<Paws::Route53Domains::ExtraParam>]

  A list of name-value pairs for parameters required by certain top-level
domains.


=head2 Fax => Str

  Fax number of the contact.

Constraints: Phone number must be specified in the format "+[country
dialing code].[number including any area code]". For example, a US
phone number might appear as C<"+1.1234567890">.


=head2 FirstName => Str

  First name of contact.


=head2 LastName => Str

  Last name of contact.


=head2 OrganizationName => Str

  Name of the organization for contact types other than C<PERSON>.


=head2 PhoneNumber => Str

  The phone number of the contact.

Constraints: Phone number must be specified in the format "+[country
dialing code].[number including any area codeE<gt>]". For example, a US
phone number might appear as C<"+1.1234567890">.


=head2 State => Str

  The state or province of the contact's city.


=head2 ZipCode => Str

  The zip or postal code of the contact's address.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

