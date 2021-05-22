
package Paws::Kafka::ListScramSecretsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SecretArnList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'secretArnList');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ListScramSecretsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Paginated results marker.


=head2 SecretArnList => ArrayRef[Str|Undef]

The list of scram secrets associated with the cluster.


=head2 _request_id => Str


=cut

