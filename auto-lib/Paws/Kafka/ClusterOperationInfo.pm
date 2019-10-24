# Generated from default/object.tt
package Paws::Kafka::ClusterOperationInfo;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Kafka::Types qw/Kafka_MutableClusterInfo Kafka_ErrorInfo/;
  has ClientRequestId => (is => 'ro', isa => Str);
  has ClusterArn => (is => 'ro', isa => Str);
  has CreationTime => (is => 'ro', isa => Str);
  has EndTime => (is => 'ro', isa => Str);
  has ErrorInfo => (is => 'ro', isa => Kafka_ErrorInfo);
  has OperationArn => (is => 'ro', isa => Str);
  has OperationState => (is => 'ro', isa => Str);
  has OperationType => (is => 'ro', isa => Str);
  has SourceClusterInfo => (is => 'ro', isa => Kafka_MutableClusterInfo);
  has TargetClusterInfo => (is => 'ro', isa => Kafka_MutableClusterInfo);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OperationType' => {
                                    'type' => 'Str'
                                  },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'ClientRequestId' => {
                                      'type' => 'Str'
                                    },
               'TargetClusterInfo' => {
                                        'class' => 'Paws::Kafka::MutableClusterInfo',
                                        'type' => 'Kafka_MutableClusterInfo'
                                      },
               'OperationState' => {
                                     'type' => 'Str'
                                   },
               'ClusterArn' => {
                                 'type' => 'Str'
                               },
               'SourceClusterInfo' => {
                                        'class' => 'Paws::Kafka::MutableClusterInfo',
                                        'type' => 'Kafka_MutableClusterInfo'
                                      },
               'OperationArn' => {
                                   'type' => 'Str'
                                 },
               'EndTime' => {
                              'type' => 'Str'
                            },
               'ErrorInfo' => {
                                'class' => 'Paws::Kafka::ErrorInfo',
                                'type' => 'Kafka_ErrorInfo'
                              }
             },
  'NameInRequest' => {
                       'OperationType' => 'operationType',
                       'CreationTime' => 'creationTime',
                       'ClientRequestId' => 'clientRequestId',
                       'TargetClusterInfo' => 'targetClusterInfo',
                       'OperationState' => 'operationState',
                       'ClusterArn' => 'clusterArn',
                       'SourceClusterInfo' => 'sourceClusterInfo',
                       'OperationArn' => 'operationArn',
                       'EndTime' => 'endTime',
                       'ErrorInfo' => 'errorInfo'
                     }
}
;
    return $Params_map;
  }


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


=head2 ErrorInfo => Kafka_ErrorInfo

  Describes the error if the operation fails.


=head2 OperationArn => Str

  ARN of the cluster operation.


=head2 OperationState => Str

  State of the cluster operation.


=head2 OperationType => Str

  Type of the cluster operation.


=head2 SourceClusterInfo => Kafka_MutableClusterInfo

  Information about cluster attributes before a cluster is updated.


=head2 TargetClusterInfo => Kafka_MutableClusterInfo

  Information about cluster attributes after a cluster is updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

