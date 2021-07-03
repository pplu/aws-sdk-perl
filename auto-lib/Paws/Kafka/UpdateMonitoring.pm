
package Paws::Kafka::UpdateMonitoring;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'clusterArn', required => 1);
  has CurrentVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'currentVersion', required => 1);
  has EnhancedMonitoring => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'enhancedMonitoring');
  has OpenMonitoring => (is => 'ro', isa => 'Paws::Kafka::OpenMonitoringInfo', traits => ['NameInRequest'], request_name => 'openMonitoring');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMonitoring');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/clusters/{clusterArn}/monitoring');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::UpdateMonitoringResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::UpdateMonitoring - Arguments for method UpdateMonitoring on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMonitoring on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method UpdateMonitoring.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMonitoring.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $UpdateMonitoringResponse = $kafka->UpdateMonitoring(
      ClusterArn         => 'My__string',
      CurrentVersion     => 'My__string',
      EnhancedMonitoring => 'DEFAULT',      # OPTIONAL
      OpenMonitoring     => {
        Prometheus => {
          JmxExporter => {
            EnabledInBroker => 1,

          },    # OPTIONAL
          NodeExporter => {
            EnabledInBroker => 1,

          },    # OPTIONAL
        },

      },    # OPTIONAL
    );

    # Results:
    my $ClusterArn          = $UpdateMonitoringResponse->ClusterArn;
    my $ClusterOperationArn = $UpdateMonitoringResponse->ClusterOperationArn;

    # Returns a L<Paws::Kafka::UpdateMonitoringResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/UpdateMonitoring>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterArn => Str

The Amazon Resource Name (ARN) that uniquely identifies the cluster.



=head2 B<REQUIRED> CurrentVersion => Str

The version of the MSK cluster to update. Cluster versions aren't
simple numbers. You can describe an MSK cluster to find its version.
When this update operation is successful, it generates a new cluster
version.



=head2 EnhancedMonitoring => Str

Specifies which Apache Kafka metrics Amazon MSK gathers and sends to
Amazon CloudWatch for this cluster.

Valid values are: C<"DEFAULT">, C<"PER_BROKER">, C<"PER_TOPIC_PER_BROKER">

=head2 OpenMonitoring => L<Paws::Kafka::OpenMonitoringInfo>

The settings for open monitoring.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMonitoring in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

