
package Paws::Kafka::GetCompatibleKafkaVersionsResponse;
  use Moose;
  has CompatibleKafkaVersions => (is => 'ro', isa => 'ArrayRef[Paws::Kafka::CompatibleKafkaVersion]', traits => ['NameInRequest'], request_name => 'compatibleKafkaVersions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::GetCompatibleKafkaVersionsResponse

=head1 ATTRIBUTES


=head2 CompatibleKafkaVersions => ArrayRef[L<Paws::Kafka::CompatibleKafkaVersion>]

A list of CompatibleKafkaVersion objects.


=head2 _request_id => Str


=cut

