
package Paws::Connect::UpdateRoutingProfileDefaultOutboundQueue;
  use Moose;
  has DefaultOutboundQueueId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has RoutingProfileId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'RoutingProfileId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRoutingProfileDefaultOutboundQueue');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/routing-profiles/{InstanceId}/{RoutingProfileId}/default-outbound-queue');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdateRoutingProfileDefaultOutboundQueue - Arguments for method UpdateRoutingProfileDefaultOutboundQueue on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRoutingProfileDefaultOutboundQueue on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdateRoutingProfileDefaultOutboundQueue.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRoutingProfileDefaultOutboundQueue.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    $connect->UpdateRoutingProfileDefaultOutboundQueue(
      DefaultOutboundQueueId => 'MyQueueId',
      InstanceId             => 'MyInstanceId',
      RoutingProfileId       => 'MyRoutingProfileId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdateRoutingProfileDefaultOutboundQueue>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DefaultOutboundQueueId => Str

The identifier for the default outbound queue.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instanceId in the ARN of the instance.



=head2 B<REQUIRED> RoutingProfileId => Str

The identifier of the routing profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRoutingProfileDefaultOutboundQueue in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

