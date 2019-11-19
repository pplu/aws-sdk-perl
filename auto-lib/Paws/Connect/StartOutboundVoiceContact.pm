
package Paws::Connect::StartOutboundVoiceContact;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Connect::Types qw/Connect_Attributes/;
  has Attributes => (is => 'ro', isa => Connect_Attributes, predicate => 1);
  has ClientToken => (is => 'ro', isa => Str, predicate => 1);
  has ContactFlowId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DestinationPhoneNumber => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has InstanceId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has QueueId => (is => 'ro', isa => Str, predicate => 1);
  has SourcePhoneNumber => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'StartOutboundVoiceContact');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/contact/outbound-voice');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Connect::StartOutboundVoiceContactResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'InstanceId' => 1,
                    'DestinationPhoneNumber' => 1,
                    'ContactFlowId' => 1
                  },
  'types' => {
               'ContactFlowId' => {
                                    'type' => 'Str'
                                  },
               'SourcePhoneNumber' => {
                                        'type' => 'Str'
                                      },
               'InstanceId' => {
                                 'type' => 'Str'
                               },
               'Attributes' => {
                                 'type' => 'Connect_Attributes',
                                 'class' => 'Paws::Connect::Attributes'
                               },
               'DestinationPhoneNumber' => {
                                             'type' => 'Str'
                                           },
               'QueueId' => {
                              'type' => 'Str'
                            },
               'ClientToken' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

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


=head2 Attributes => Connect_Attributes

A custom key-value pair using an attribute map. The attributes are
standard Amazon Connect attributes, and can be accessed in contact
flows just like any other contact attributes.

There can be up to 32,768 UTF-8 bytes across all key-value pairs per
contact. Attribute keys can include only alphanumeric, dash, and
underscore characters.



=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. The token is valid for 7 days after
creation. If a contact is already started, the contact ID is returned.
If the contact is disconnected, a new contact is started.



=head2 B<REQUIRED> ContactFlowId => Str

The identifier of the contact flow for the outbound call.



=head2 B<REQUIRED> DestinationPhoneNumber => Str

The phone number of the customer, in E.164 format.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.



=head2 QueueId => Str

The queue for the call. If you specify a queue, the phone displayed for
caller ID is the phone number specified in the queue. If you do not
specify a queue, the queue defined in the contact flow is used. If you
do not specify a queue, you must specify a source phone number.



=head2 SourcePhoneNumber => Str

The phone number associated with the Amazon Connect instance, in E.164
format. If you do not specify a source phone number, you must specify a
queue.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartOutboundVoiceContact in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

