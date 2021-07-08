
package Paws::Kafka::BatchDisassociateScramSecretResponse;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clusterArn');
  has UnprocessedScramSecrets => (is => 'ro', isa => 'ArrayRef[Paws::Kafka::UnprocessedScramSecret]', traits => ['NameInRequest'], request_name => 'unprocessedScramSecrets');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::BatchDisassociateScramSecretResponse

=head1 ATTRIBUTES


=head2 ClusterArn => Str

The Amazon Resource Name (ARN) of the cluster.


=head2 UnprocessedScramSecrets => ArrayRef[L<Paws::Kafka::UnprocessedScramSecret>]

List of errors when disassociating secrets to cluster.


=head2 _request_id => Str


=cut

