
package Paws::Kafka::UpdateBrokerCount;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Kafka::Types qw//;
  has ClusterArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has CurrentVersion => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TargetNumberOfBrokerNodes => (is => 'ro', isa => Int, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateBrokerCount');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/clusters/{clusterArn}/nodes/count');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Kafka::UpdateBrokerCountResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'ClusterArn' => 'clusterArn'
                  },
  'types' => {
               'ClusterArn' => {
                                 'type' => 'Str'
                               },
               'CurrentVersion' => {
                                     'type' => 'Str'
                                   },
               'TargetNumberOfBrokerNodes' => {
                                                'type' => 'Int'
                                              }
             },
  'NameInRequest' => {
                       'TargetNumberOfBrokerNodes' => 'targetNumberOfBrokerNodes',
                       'CurrentVersion' => 'currentVersion'
                     },
  'IsRequired' => {
                    'TargetNumberOfBrokerNodes' => 1,
                    'CurrentVersion' => 1,
                    'ClusterArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::UpdateBrokerCount - Arguments for method UpdateBrokerCount on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBrokerCount on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method UpdateBrokerCount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBrokerCount.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $UpdateBrokerCountResponse = $kafka->UpdateBrokerCount(
      ClusterArn                => 'My__string',
      CurrentVersion            => 'My__string',
      TargetNumberOfBrokerNodes => 1,

    );

    # Results:
    my $ClusterArn          = $UpdateBrokerCountResponse->ClusterArn;
    my $ClusterOperationArn = $UpdateBrokerCountResponse->ClusterOperationArn;

    # Returns a L<Paws::Kafka::UpdateBrokerCountResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/UpdateBrokerCount>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterArn => Str

The Amazon Resource Name (ARN) that uniquely identifies the cluster.



=head2 B<REQUIRED> CurrentVersion => Str

The version of cluster to update from. A successful operation will then
generate a new version.



=head2 B<REQUIRED> TargetNumberOfBrokerNodes => Int

The number of broker nodes that you want the cluster to have after this
operation completes successfully.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBrokerCount in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

