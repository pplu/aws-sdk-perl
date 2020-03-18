package Paws::Kafka::ClusterOperationInfo;
  use Moose;
  has ClientRequestId => (is => 'ro', isa => 'Str', request_name => 'clientRequestId', traits => ['NameInRequest']);
  has ClusterArn => (is => 'ro', isa => 'Str', request_name => 'clusterArn', traits => ['NameInRequest']);
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has EndTime => (is => 'ro', isa => 'Str', request_name => 'endTime', traits => ['NameInRequest']);
  has ErrorInfo => (is => 'ro', isa => 'Paws::Kafka::ErrorInfo', request_name => 'errorInfo', traits => ['NameInRequest']);
  has OperationArn => (is => 'ro', isa => 'Str', request_name => 'operationArn', traits => ['NameInRequest']);
  has OperationState => (is => 'ro', isa => 'Str', request_name => 'operationState', traits => ['NameInRequest']);
  has OperationType => (is => 'ro', isa => 'Str', request_name => 'operationType', traits => ['NameInRequest']);
  has SourceClusterInfo => (is => 'ro', isa => 'Paws::Kafka::MutableClusterInfo', request_name => 'sourceClusterInfo', traits => ['NameInRequest']);
  has TargetClusterInfo => (is => 'ro', isa => 'Paws::Kafka::MutableClusterInfo', request_name => 'targetClusterInfo', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ClusterOperationInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kafka::ClusterOperationInfo object:

  $service_obj->Method(Att1 => { ClientRequestId => $value, ..., TargetClusterInfo => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kafka::ClusterOperationInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientRequestId

=head1 DESCRIPTION

Returns information about a cluster operation.

=head1 ATTRIBUTES


=head2 ClientRequestId => Str

  The ID of the API request that triggered this operation.


=head2 ClusterArn => Str

  ARN of the cluster.


=head2 CreationTime => Str

  The time that the operation was created.


=head2 EndTime => Str

  The time at which the operation finished.


=head2 ErrorInfo => L<Paws::Kafka::ErrorInfo>

  Describes the error if the operation fails.


=head2 OperationArn => Str

  ARN of the cluster operation.


=head2 OperationState => Str

  State of the cluster operation.


=head2 OperationType => Str

  Type of the cluster operation.


=head2 SourceClusterInfo => L<Paws::Kafka::MutableClusterInfo>

  Information about cluster attributes before a cluster is updated.


=head2 TargetClusterInfo => L<Paws::Kafka::MutableClusterInfo>

  Information about cluster attributes after a cluster is updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

