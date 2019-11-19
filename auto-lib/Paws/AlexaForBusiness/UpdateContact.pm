# Generated from json/callargs_class.tt

package Paws::AlexaForBusiness::UpdateContact;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_SipAddress AlexaForBusiness_PhoneNumber/;
  has ContactArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DisplayName => (is => 'ro', isa => Str, predicate => 1);
  has FirstName => (is => 'ro', isa => Str, predicate => 1);
  has LastName => (is => 'ro', isa => Str, predicate => 1);
  has PhoneNumber => (is => 'ro', isa => Str, predicate => 1);
  has PhoneNumbers => (is => 'ro', isa => ArrayRef[AlexaForBusiness_PhoneNumber], predicate => 1);
  has SipAddresses => (is => 'ro', isa => ArrayRef[AlexaForBusiness_SipAddress], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateContact');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AlexaForBusiness::UpdateContactResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FirstName' => {
                                'type' => 'Str'
                              },
               'DisplayName' => {
                                  'type' => 'Str'
                                },
               'LastName' => {
                               'type' => 'Str'
                             },
               'PhoneNumber' => {
                                  'type' => 'Str'
                                },
               'PhoneNumbers' => {
                                   'class' => 'Paws::AlexaForBusiness::PhoneNumber',
                                   'type' => 'ArrayRef[AlexaForBusiness_PhoneNumber]'
                                 },
               'ContactArn' => {
                                 'type' => 'Str'
                               },
               'SipAddresses' => {
                                   'type' => 'ArrayRef[AlexaForBusiness_SipAddress]',
                                   'class' => 'Paws::AlexaForBusiness::SipAddress'
                                 }
             },
  'IsRequired' => {
                    'ContactArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::UpdateContact - Arguments for method UpdateContact on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateContact on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method UpdateContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateContact.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $UpdateContactResponse = $a4b->UpdateContact(
      ContactArn   => 'MyArn',
      DisplayName  => 'MyContactName',       # OPTIONAL
      FirstName    => 'MyContactName',       # OPTIONAL
      LastName     => 'MyContactName',       # OPTIONAL
      PhoneNumber  => 'MyRawPhoneNumber',    # OPTIONAL
      PhoneNumbers => [
        {
          Number => 'MyRawPhoneNumber',      # max: 50
          Type   => 'MOBILE',                # values: MOBILE, WORK, HOME

        },
        ...
      ],                                     # OPTIONAL
      SipAddresses => [
        {
          Type => 'WORK',                    # values: WORK
          Uri  => 'MySipUri',                # min: 1, max: 256

        },
        ...
      ],                                     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/UpdateContact>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactArn => Str

The ARN of the contact to update.



=head2 DisplayName => Str

The updated display name of the contact.



=head2 FirstName => Str

The updated first name of the contact.



=head2 LastName => Str

The updated last name of the contact.



=head2 PhoneNumber => Str

The updated phone number of the contact. The phone number type defaults
to WORK. You can either specify PhoneNumber or PhoneNumbers. We
recommend that you use PhoneNumbers, which lets you specify the phone
number type and multiple numbers.



=head2 PhoneNumbers => ArrayRef[AlexaForBusiness_PhoneNumber]

The list of phone numbers for the contact.



=head2 SipAddresses => ArrayRef[AlexaForBusiness_SipAddress]

The list of SIP addresses for the contact.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateContact in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

