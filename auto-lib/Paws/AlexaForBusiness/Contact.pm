package Paws::AlexaForBusiness::Contact;
  use Moose;
  has ContactArn => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has FirstName => (is => 'ro', isa => 'Str');
  has LastName => (is => 'ro', isa => 'Str');
  has PhoneNumber => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::Contact

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::Contact object:

  $service_obj->Method(Att1 => { ContactArn => $value, ..., PhoneNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::Contact object:

  $result = $service_obj->Method(...);
  $result->Att1->ContactArn

=head1 DESCRIPTION

A contact with attributes.

=head1 ATTRIBUTES


=head2 ContactArn => Str

  The ARN of the contact.


=head2 DisplayName => Str

  The name of the contact to display on the console.


=head2 FirstName => Str

  The first name of the contact, used to call the contact on the device.


=head2 LastName => Str

  The last name of the contact, used to call the contact on the device.


=head2 PhoneNumber => Str

  The phone number of the contact.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

