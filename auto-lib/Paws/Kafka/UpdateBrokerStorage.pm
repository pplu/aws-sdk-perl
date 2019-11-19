
package Paws::Kafka::UpdateBrokerStorage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Kafka::Types qw/Kafka_BrokerEBSVolumeInfo/;
  has ClusterArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has CurrentVersion => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TargetBrokerEBSVolumeInfo => (is => 'ro', isa => ArrayRef[Kafka_BrokerEBSVolumeInfo], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateBrokerStorage');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/clusters/{clusterArn}/nodes/storage');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Kafka::UpdateBrokerStorageResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'ClusterArn' => 'clusterArn'
                  },
  'NameInRequest' => {
                       'CurrentVersion' => 'currentVersion',
                       'TargetBrokerEBSVolumeInfo' => 'targetBrokerEBSVolumeInfo'
                     },
  'IsRequired' => {
                    'TargetBrokerEBSVolumeInfo' => 1,
                    'ClusterArn' => 1,
                    'CurrentVersion' => 1
                  },
  'types' => {
               'TargetBrokerEBSVolumeInfo' => {
                                                'class' => 'Paws::Kafka::BrokerEBSVolumeInfo',
                                                'type' => 'ArrayRef[Kafka_BrokerEBSVolumeInfo]'
                                              },
               'ClusterArn' => {
                                 'type' => 'Str'
                               },
               'CurrentVersion' => {
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



=head2 B<REQUIRED> TargetBrokerEBSVolumeInfo => ArrayRef[Kafka_BrokerEBSVolumeInfo]

Describes the target volume size and the ID of the broker to apply the
update to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBrokerStorage in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

