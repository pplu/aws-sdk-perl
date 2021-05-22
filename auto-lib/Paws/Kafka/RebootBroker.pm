
package Paws::Kafka::RebootBroker;
  use Moose;
  has BrokerIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'brokerIds', required => 1);
  has ClusterArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'clusterArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RebootBroker');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/clusters/{clusterArn}/reboot-broker');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::RebootBrokerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::RebootBroker - Arguments for method RebootBroker on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RebootBroker on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method RebootBroker.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RebootBroker.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $RebootBrokerResponse = $kafka->RebootBroker(
      BrokerIds  => [ 'My__string', ... ],
      ClusterArn => 'My__string',

    );

    # Results:
    my $ClusterArn          = $RebootBrokerResponse->ClusterArn;
    my $ClusterOperationArn = $RebootBrokerResponse->ClusterOperationArn;

    # Returns a L<Paws::Kafka::RebootBrokerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/RebootBroker>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BrokerIds => ArrayRef[Str|Undef]

The list of broker IDs to be rebooted. The reboot-broker operation
supports rebooting one broker at a time.



=head2 B<REQUIRED> ClusterArn => Str

The Amazon Resource Name (ARN) of the cluster to be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RebootBroker in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

