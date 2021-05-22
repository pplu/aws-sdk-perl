
package Paws::Connect::StartTaskContact;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::Connect::Attributes');
  has ClientToken => (is => 'ro', isa => 'Str');
  has ContactFlowId => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has PreviousContactId => (is => 'ro', isa => 'Str');
  has References => (is => 'ro', isa => 'Paws::Connect::ContactReferences');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartTaskContact');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact/task');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::StartTaskContactResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::StartTaskContact - Arguments for method StartTaskContact on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartTaskContact on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method StartTaskContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartTaskContact.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $StartTaskContactResponse = $connect->StartTaskContact(
      ContactFlowId => 'MyContactFlowId',
      InstanceId    => 'MyInstanceId',
      Name          => 'MyName',
      Attributes    => {
        'MyAttributeName' =>
          'MyAttributeValue',    # key: min: 1, max: 32767, value: max: 32767
      },    # OPTIONAL
      ClientToken       => 'MyClientToken',    # OPTIONAL
      Description       => 'MyDescription',    # OPTIONAL
      PreviousContactId => 'MyContactId',      # OPTIONAL
      References        => {
        'MyReferenceKey' => {
          Type  => 'URL',                      # values: URL
          Value => 'MyReferenceValue',         # max: 4096

        },    # key: min: 1, max: 4096
      },    # OPTIONAL
    );

    # Results:
    my $ContactId = $StartTaskContactResponse->ContactId;

    # Returns a L<Paws::Connect::StartTaskContactResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/StartTaskContact>

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::Connect::Attributes>

A custom key-value pair using an attribute map. The attributes are
standard Amazon Connect attributes, and can be accessed in contact
flows just like any other contact attributes.

There can be up to 32,768 UTF-8 bytes across all key-value pairs per
contact. Attribute keys can include only alphanumeric, dash, and
underscore characters.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> ContactFlowId => Str

The identifier of the contact flow for initiating the tasks. To see the
ContactFlowId in the Amazon Connect console user interface, on the
navigation menu go to B<Routing>, B<Contact Flows>. Choose the contact
flow. On the contact flow page, under the name of the contact flow,
choose B<Show additional flow information>. The ContactFlowId is the
last part of the ARN, shown here in bold:

arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/B<846ec553-a005-41c0-8341-xxxxxxxxxxxx>



=head2 Description => Str

A description of the task that is shown to an agent in the Contact
Control Panel (CCP).



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.



=head2 B<REQUIRED> Name => Str

The name of a task that is shown to an agent in the Contact Control
Panel (CCP).



=head2 PreviousContactId => Str

The identifier of the previous chat, voice, or task contact.



=head2 References => L<Paws::Connect::ContactReferences>

A formatted URL that is shown to an agent in the Contact Control Panel
(CCP).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartTaskContact in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

