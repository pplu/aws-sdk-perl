# Generated from default/object.tt
package Paws::AlexaForBusiness::ContactData;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_SipAddress AlexaForBusiness_PhoneNumber/;
  has ContactArn => (is => 'ro', isa => Str);
  has DisplayName => (is => 'ro', isa => Str);
  has FirstName => (is => 'ro', isa => Str);
  has LastName => (is => 'ro', isa => Str);
  has PhoneNumber => (is => 'ro', isa => Str);
  has PhoneNumbers => (is => 'ro', isa => ArrayRef[AlexaForBusiness_PhoneNumber]);
  has SipAddresses => (is => 'ro', isa => ArrayRef[AlexaForBusiness_SipAddress]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FirstName' => {
                                'type' => 'Str'
                              },
               'ContactArn' => {
                                 'type' => 'Str'
                               },
               'PhoneNumbers' => {
                                   'class' => 'Paws::AlexaForBusiness::PhoneNumber',
                                   'type' => 'ArrayRef[AlexaForBusiness_PhoneNumber]'
                                 },
               'PhoneNumber' => {
                                  'type' => 'Str'
                                },
               'LastName' => {
                               'type' => 'Str'
                             },
               'DisplayName' => {
                                  'type' => 'Str'
                                },
               'SipAddresses' => {
                                   'class' => 'Paws::AlexaForBusiness::SipAddress',
                                   'type' => 'ArrayRef[AlexaForBusiness_SipAddress]'
                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::ContactData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::ContactData object:

  $service_obj->Method(Att1 => { ContactArn => $value, ..., SipAddresses => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::ContactData object:

  $result = $service_obj->Method(...);
  $result->Att1->ContactArn

=head1 DESCRIPTION

Information related to a contact.

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

  The phone number of the contact. The phone number type defaults to
WORK. You can specify PhoneNumber or PhoneNumbers. We recommend that
you use PhoneNumbers, which lets you specify the phone number type and
multiple numbers.


=head2 PhoneNumbers => ArrayRef[AlexaForBusiness_PhoneNumber]

  The list of phone numbers for the contact.


=head2 SipAddresses => ArrayRef[AlexaForBusiness_SipAddress]

  The list of SIP addresses for the contact.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

