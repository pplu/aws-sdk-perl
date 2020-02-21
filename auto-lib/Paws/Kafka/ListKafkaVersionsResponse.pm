
package Paws::Kafka::ListKafkaVersionsResponse;
  use Moose;
  has KafkaVersions => (is => 'ro', isa => 'ArrayRef[Paws::Kafka::KafkaVersion]', traits => ['NameInRequest'], request_name => 'kafkaVersions');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ListKafkaVersionsResponse

=head1 ATTRIBUTES


=head2 KafkaVersions => ArrayRef[L<Paws::Kafka::KafkaVersion>]




=head2 NextToken => Str




=head2 _request_id => Str


=cut

