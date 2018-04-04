
package Paws::Connect::StartOutboundVoiceContact;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::Connect::Attributes');
  has ClientToken => (is => 'ro', isa => 'Str');
  has ContactFlowId => (is => 'ro', isa => 'Str', required => 1);
  has DestinationPhoneNumber => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has QueueId => (is => 'ro', isa => 'Str');
  has SourcePhoneNumber => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartOutboundVoiceContact');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/contact/outbound-voice');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::StartOutboundVoiceContactResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::StartOutboundVoiceContact - Arguments for method StartOutboundVoiceContact on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartOutboundVoiceContact on the 
Amazon Connect Service service. Use the attributes of this class
as arguments to method StartOutboundVoiceContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartOutboundVoiceContact.

As an example:

  $service_obj->StartOutboundVoiceContact(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::Connect::Attributes>

Specify a custom key-value pair using an attribute map. The attributes
are standard Amazon Connect attributes, and can be accessed in contact
flows just like any other contact attributes.

There can be up to 32,768 UTF-8 bytes across all key-value pairs.
Attribute keys can include only alphanumeric, dash, and underscore
characters.

For example, to play a greeting when the customer answers the call, you
can pass the customer name in attributes similar to the following:



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. The token is valid for 7 days after
creation. If a contact is already started, the contact ID is returned.
If the contact is disconnected, a new contact is started.



=head2 B<REQUIRED> ContactFlowId => Str

The identifier for the contact flow to execute for the outbound call.
This is a GUID value only. Amazon Resource Name (ARN) values are not
supported.

To find the C<ContactFlowId>, open the contact flow to use in the
Amazon Connect contact flow designer. The ID for the contact flow is
displayed in the address bar as part of the URL. For example, an
address displayed when you open a contact flow is similar to the
following:
C<https://myconnectinstance.awsapps.com/connect/contact-flows/edit?id=arn:aws:connect:us-east-1:361814831152:instance/2fb42df9-78a2-4b99-b484-f5cf80dc300c/contact-flow/I<b0b8f2dd-ed1b-4c44-af36-ce189a178181>
>. At the end of the URL, you see
C<contact-flow/b0b8f2dd-ed1b-4c44-af36-ce189a178181>. The
C<ContactFlowID> for this contact flow is C<
I<b0b8f2dd-ed1b-4c44-af36-ce189a178181> >. Make sure to include only
the GUID after the "contact-flow/" in your requests.



=head2 B<REQUIRED> DestinationPhoneNumber => Str

The phone number, in E.164 format, of the customer to call with the
outbound contact.



=head2 B<REQUIRED> InstanceId => Str

The identifier for your Amazon Connect instance. To find the
C<InstanceId> value for your Amazon Connect instance, open the Amazon
Connect console (https://console.aws.amazon.com/connect/). Select the
instance alias of the instance and view the instance ID in the
B<Overview> section. For example, the instance ID is the set of
characters at the end of the instance ARN, after "instance/", such as
10a4c4eb-f57e-4d4c-b602-bf39176ced07.



=head2 QueueId => Str

The queue to which to add the call. If you specify a queue, the phone
displayed for caller ID is the phone number defined for the queue. If
you do not specify a queue, the queue used is the queue defined in the
contact flow specified by C<ContactFlowId>.

To find the C<QueueId>, open the queue to use in the Amazon Connect
queue editor. The ID for the queue is displayed in the address bar as
part of the URL. For example, the C<QueueId> value is the set of
characters at the end of the URL, after "queue/", such as
C<aeg40574-2d01-51c3-73d6-bf8624d2168c>.



=head2 SourcePhoneNumber => Str

The phone number, in E.164 format, associated with your Amazon Connect
instance to use to place the outbound call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartOutboundVoiceContact in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

