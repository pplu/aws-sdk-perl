
package Paws::Kafka::UpdateBrokerStorage;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'clusterArn', required => 1);
  has CurrentVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'currentVersion', required => 1);
  has TargetBrokerEBSVolumeInfo => (is => 'ro', isa => 'ArrayRef[Paws::Kafka::BrokerEBSVolumeInfo]', traits => ['NameInRequest'], request_name => 'targetBrokerEBSVolumeInfo', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBrokerStorage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/clusters/{clusterArn}/nodes/storage');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::UpdateBrokerStorageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::UpdateBrokerStorage - Arguments for method UpdateBrokerStorage on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBrokerStorage on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method UpdateBrokerStorage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBrokerStorage.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $UpdateBrokerStorageResponse = $kafka->UpdateBrokerStorage(
      ClusterArn                => 'My__string',
      CurrentVersion            => 'My__string',
      TargetBrokerEBSVolumeInfo => [
        {
          KafkaBrokerNodeId => 'My__string',
          VolumeSizeGB      => 1,

        },
        ...
      ],

    );

    # Results:
    my $ClusterArn          = $UpdateBrokerStorageResponse->ClusterArn;
    my $ClusterOperationArn = $UpdateBrokerStorageResponse->ClusterOperationArn;

    # Returns a L<Paws::Kafka::UpdateBrokerStorageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/UpdateBrokerStorage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterArn => Str

The Amazon Resource Name (ARN) that uniquely identifies the cluster.



=head2 B<REQUIRED> CurrentVersion => Str

The version of cluster to update from. A successful operation will then
generate a new version.



=head2 B<REQUIRED> TargetBrokerEBSVolumeInfo => ArrayRef[L<Paws::Kafka::BrokerEBSVolumeInfo>]

Describes the target volume size and the ID of the broker to apply the
update to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBrokerStorage in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

