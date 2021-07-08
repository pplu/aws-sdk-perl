
package Paws::Kafka::UpdateClusterKafkaVersion;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'clusterArn', required => 1);
  has ConfigurationInfo => (is => 'ro', isa => 'Paws::Kafka::ConfigurationInfo', traits => ['NameInRequest'], request_name => 'configurationInfo');
  has CurrentVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'currentVersion', required => 1);
  has TargetKafkaVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetKafkaVersion', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateClusterKafkaVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/clusters/{clusterArn}/version');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::UpdateClusterKafkaVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::UpdateClusterKafkaVersion - Arguments for method UpdateClusterKafkaVersion on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateClusterKafkaVersion on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method UpdateClusterKafkaVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateClusterKafkaVersion.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $UpdateClusterKafkaVersionResponse = $kafka->UpdateClusterKafkaVersion(
      ClusterArn         => 'My__string',
      CurrentVersion     => 'My__string',
      TargetKafkaVersion => 'My__string',
      ConfigurationInfo  => {
        Arn      => 'My__string',
        Revision => 1,

      },    # OPTIONAL
    );

    # Results:
    my $ClusterArn = $UpdateClusterKafkaVersionResponse->ClusterArn;
    my $ClusterOperationArn =
      $UpdateClusterKafkaVersionResponse->ClusterOperationArn;

    # Returns a L<Paws::Kafka::UpdateClusterKafkaVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/UpdateClusterKafkaVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterArn => Str

The Amazon Resource Name (ARN) of the cluster to be updated.



=head2 ConfigurationInfo => L<Paws::Kafka::ConfigurationInfo>

The custom configuration that should be applied on the new version of
cluster.



=head2 B<REQUIRED> CurrentVersion => Str

Current cluster version.



=head2 B<REQUIRED> TargetKafkaVersion => Str

Target Kafka version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateClusterKafkaVersion in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

