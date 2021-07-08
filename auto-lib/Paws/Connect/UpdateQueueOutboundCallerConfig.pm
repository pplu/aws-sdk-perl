
package Paws::Connect::UpdateQueueOutboundCallerConfig;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has OutboundCallerConfig => (is => 'ro', isa => 'Paws::Connect::OutboundCallerConfig', required => 1);
  has QueueId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'QueueId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateQueueOutboundCallerConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/queues/{InstanceId}/{QueueId}/outbound-caller-config');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdateQueueOutboundCallerConfig - Arguments for method UpdateQueueOutboundCallerConfig on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateQueueOutboundCallerConfig on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdateQueueOutboundCallerConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateQueueOutboundCallerConfig.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    $connect->UpdateQueueOutboundCallerConfig(
      InstanceId           => 'MyInstanceId',
      OutboundCallerConfig => {
        OutboundCallerIdName =>
          'MyOutboundCallerIdName',    # min: 1, max: 255; OPTIONAL
        OutboundCallerIdNumberId => 'MyPhoneNumberId',    # OPTIONAL
        OutboundFlowId           => 'MyContactFlowId',    # max: 500; OPTIONAL
      },
      QueueId => 'MyQueueId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdateQueueOutboundCallerConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instanceId in the ARN of the instance.



=head2 B<REQUIRED> OutboundCallerConfig => L<Paws::Connect::OutboundCallerConfig>

The outbound caller ID name, number, and outbound whisper flow.



=head2 B<REQUIRED> QueueId => Str

The identifier for the queue.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateQueueOutboundCallerConfig in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

