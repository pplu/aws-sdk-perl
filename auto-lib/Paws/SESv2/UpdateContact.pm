
package Paws::SESv2::UpdateContact;
  use Moose;
  has AttributesData => (is => 'ro', isa => 'Str');
  has ContactListName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ContactListName', required => 1);
  has EmailAddress => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EmailAddress', required => 1);
  has TopicPreferences => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::TopicPreference]');
  has UnsubscribeAll => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateContact');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/contact-lists/{ContactListName}/contacts/{EmailAddress}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::UpdateContactResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::UpdateContact - Arguments for method UpdateContact on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateContact on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method UpdateContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateContact.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $UpdateContactResponse = $email->UpdateContact(
      ContactListName  => 'MyContactListName',
      EmailAddress     => 'MyEmailAddress',
      AttributesData   => 'MyAttributesData',    # OPTIONAL
      TopicPreferences => [
        {
          SubscriptionStatus => 'OPT_IN',        # values: OPT_IN, OPT_OUT
          TopicName          => 'MyTopicName',

        },
        ...
      ],                                         # OPTIONAL
      UnsubscribeAll => 1,                       # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/UpdateContact>

=head1 ATTRIBUTES


=head2 AttributesData => Str

The attribute data attached to a contact.



=head2 B<REQUIRED> ContactListName => Str

The name of the contact list.



=head2 B<REQUIRED> EmailAddress => Str

The contact's email addres.



=head2 TopicPreferences => ArrayRef[L<Paws::SESv2::TopicPreference>]

The contact's preference for being opted-in to or opted-out of a topic.



=head2 UnsubscribeAll => Bool

A boolean value status noting if the contact is unsubscribed from all
contact list topics.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateContact in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

