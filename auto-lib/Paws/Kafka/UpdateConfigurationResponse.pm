
package Paws::Kafka::UpdateConfigurationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has LatestRevision => (is => 'ro', isa => 'Paws::Kafka::ConfigurationRevision', traits => ['NameInRequest'], request_name => 'latestRevision');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::UpdateConfigurationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the configuration.


=head2 LatestRevision => L<Paws::Kafka::ConfigurationRevision>

Latest revision of the configuration.


=head2 _request_id => Str


=cut

