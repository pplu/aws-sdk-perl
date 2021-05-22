
package Paws::SESv2::GetContact;
  use Moose;
  has ContactListName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ContactListName', required => 1);
  has EmailAddress => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'EmailAddress', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetContact');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/contact-lists/{ContactListName}/contacts/{EmailAddress}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::GetContactResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetContact - Arguments for method GetContact on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetContact on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method GetContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetContact.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $GetContactResponse = $email->GetContact(
      ContactListName => 'MyContactListName',
      EmailAddress    => 'MyEmailAddress',

    );

    # Results:
    my $AttributesData          = $GetContactResponse->AttributesData;
    my $ContactListName         = $GetContactResponse->ContactListName;
    my $CreatedTimestamp        = $GetContactResponse->CreatedTimestamp;
    my $EmailAddress            = $GetContactResponse->EmailAddress;
    my $LastUpdatedTimestamp    = $GetContactResponse->LastUpdatedTimestamp;
    my $TopicDefaultPreferences = $GetContactResponse->TopicDefaultPreferences;
    my $TopicPreferences        = $GetContactResponse->TopicPreferences;
    my $UnsubscribeAll          = $GetContactResponse->UnsubscribeAll;

    # Returns a L<Paws::SESv2::GetContactResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/GetContact>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactListName => Str

The name of the contact list to which the contact belongs.



=head2 B<REQUIRED> EmailAddress => Str

The contact's email addres.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetContact in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

