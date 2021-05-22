
package Paws::Connect::CreateQueue;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has HoursOfOperationId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has MaxContacts => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has OutboundCallerConfig => (is => 'ro', isa => 'Paws::Connect::OutboundCallerConfig');
  has QuickConnectIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Tags => (is => 'ro', isa => 'Paws::Connect::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateQueue');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/queues/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::CreateQueueResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateQueue - Arguments for method CreateQueue on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateQueue on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method CreateQueue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateQueue.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $CreateQueueResponse = $connect->CreateQueue(
      HoursOfOperationId   => 'MyHoursOfOperationId',
      InstanceId           => 'MyInstanceId',
      Name                 => 'MyCommonNameLength127',
      Description          => 'MyQueueDescription',      # OPTIONAL
      MaxContacts          => 1,                         # OPTIONAL
      OutboundCallerConfig => {
        OutboundCallerIdName =>
          'MyOutboundCallerIdName',    # min: 1, max: 255; OPTIONAL
        OutboundCallerIdNumberId => 'MyPhoneNumberId',    # OPTIONAL
        OutboundFlowId           => 'MyContactFlowId',    # max: 500; OPTIONAL
      },    # OPTIONAL
      QuickConnectIds => [ 'MyQuickConnectId', ... ],    # OPTIONAL
      Tags            => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $QueueArn = $CreateQueueResponse->QueueArn;
    my $QueueId  = $CreateQueueResponse->QueueId;

    # Returns a L<Paws::Connect::CreateQueueResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/CreateQueue>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the queue.



=head2 B<REQUIRED> HoursOfOperationId => Str

The identifier for the hours of operation.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.



=head2 MaxContacts => Int

The maximum number of contacts that can be in the queue before it is
considered full.



=head2 B<REQUIRED> Name => Str

The name of the queue.



=head2 OutboundCallerConfig => L<Paws::Connect::OutboundCallerConfig>

The outbound caller ID name, number, and outbound whisper flow.



=head2 QuickConnectIds => ArrayRef[Str|Undef]

The quick connects available to agents who are working the queue.



=head2 Tags => L<Paws::Connect::TagMap>

One or more tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateQueue in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

