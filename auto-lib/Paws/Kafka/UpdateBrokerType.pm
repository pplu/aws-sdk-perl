
package Paws::Kafka::UpdateBrokerType;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'clusterArn', required => 1);
  has CurrentVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'currentVersion', required => 1);
  has TargetInstanceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetInstanceType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBrokerType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/clusters/{clusterArn}/nodes/type');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::UpdateBrokerTypeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::UpdateBrokerType - Arguments for method UpdateBrokerType on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBrokerType on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method UpdateBrokerType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBrokerType.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $UpdateBrokerTypeResponse = $kafka->UpdateBrokerType(
      ClusterArn         => 'My__string',
      CurrentVersion     => 'My__string',
      TargetInstanceType => 'My__string',

    );

    # Results:
    my $ClusterArn          = $UpdateBrokerTypeResponse->ClusterArn;
    my $ClusterOperationArn = $UpdateBrokerTypeResponse->ClusterOperationArn;

    # Returns a L<Paws::Kafka::UpdateBrokerTypeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/UpdateBrokerType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterArn => Str

The Amazon Resource Name (ARN) that uniquely identifies the cluster.



=head2 B<REQUIRED> CurrentVersion => Str

The cluster version that you want to change. After this operation
completes successfully, the cluster will have a new version.



=head2 B<REQUIRED> TargetInstanceType => Str

The Amazon MSK broker type that you want all of the brokers in this
cluster to be.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBrokerType in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

