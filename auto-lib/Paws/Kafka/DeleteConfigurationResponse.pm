
package Paws::Kafka::DeleteConfigurationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::DeleteConfigurationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) that uniquely identifies an MSK
configuration.


=head2 State => Str

The state of the configuration. The possible states are ACTIVE,
DELETING, and DELETE_FAILED.

Valid values are: C<"ACTIVE">, C<"DELETING">, C<"DELETE_FAILED">
=head2 _request_id => Str


=cut

