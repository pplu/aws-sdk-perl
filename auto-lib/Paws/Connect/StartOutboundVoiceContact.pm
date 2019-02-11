
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
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method StartOutboundVoiceContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartOutboundVoiceContact.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $StartOutboundVoiceContactResponse = $connect->StartOutboundVoiceContact(
      ContactFlowId          => 'MyContactFlowId',
      DestinationPhoneNumber => 'MyPhoneNumber',
      InstanceId             => 'MyInstanceId',
      Attributes             => {
        'MyAttributeName' =>
          'MyAttributeValue',    # key: min: 1, max: 32767, value: max: 32767
      },    # OPTIONAL
      ClientToken       => 'MyClientToken',    # OPTIONAL
      QueueId           => 'MyQueueId',        # OPTIONAL
      SourcePhoneNumber => 'MyPhoneNumber',    # OPTIONAL
    );

    # Results:
    my $ContactId = $StartOutboundVoiceContactResponse->ContactId;

    # Returns a L<Paws::Connect::StartOutboundVoiceContactResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/StartOutboundVoiceContact>

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::Connect::Attributes>

Specify a custom key-value pair using an attribute map. The attributes
are standard Amazon Connect attributes, and can be accessed in contact
flows just like any other contact attributes.

There can be up to 32,768 UTF-8 bytes across all key-value pairs per
contact. Attribute keys can include only alphanumeric, dash, and
underscore characters.

For example, if you want play a greeting when the customer answers the
call, you can pass the customer name in attributes similar to the
following:



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. The token is valid for 7 days after
creation. If a contact is already started, the contact ID is returned.
If the contact is disconnected, a new contact is started.



=head2 B<REQUIRED> ContactFlowId => Str

The identifier for the contact flow to connect the outbound call to.

To find the C<ContactFlowId>, open the contact flow you want to use in
the Amazon Connect contact flow editor. The ID for the contact flow is
displayed in the address bar as part of the URL. For example, the
contact flow ID is the set of characters at the end of the URL, after
'contact-flow/' such as C<78ea8fd5-2659-4f2b-b528-699760ccfc1b>.



=head2 B<REQUIRED> DestinationPhoneNumber => Str

The phone number of the customer in E.164 format.



=head2 B<REQUIRED> InstanceId => Str

The identifier for your Amazon Connect instance. To find the ID of your
instance, open the AWS console and select Amazon Connect. Select the
alias of the instance in the Instance alias column. The instance ID is
displayed in the Overview section of your instance settings. For
example, the instance ID is the set of characters at the end of the
instance ARN, after instance/, such as
10a4c4eb-f57e-4d4c-b602-bf39176ced07.



=head2 QueueId => Str

The queue to add the call to. If you specify a queue, the phone
displayed for caller ID is the phone number specified in the queue. If
you do not specify a queue, the queue used will be the queue defined in
the contact flow.

To find the C<QueueId>, open the queue you want to use in the Amazon
Connect Queue editor. The ID for the queue is displayed in the address
bar as part of the URL. For example, the queue ID is the set of
characters at the end of the URL, after 'queue/' such as
C<queue/aeg40574-2d01-51c3-73d6-bf8624d2168c>.



=head2 SourcePhoneNumber => Str

The phone number, in E.164 format, associated with your Amazon Connect
instance to use for the outbound call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartOutboundVoiceContact in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

