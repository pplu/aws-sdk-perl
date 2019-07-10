
package Paws::Kafka::ListConfigurationsResponse;
  use Moose;
  has Configurations => (is => 'ro', isa => 'ArrayRef[Paws::Kafka::Configuration]', traits => ['NameInRequest'], request_name => 'configurations');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ListConfigurationsResponse

=head1 ATTRIBUTES


=head2 Configurations => ArrayRef[L<Paws::Kafka::Configuration>]

An array of MSK configurations.


=head2 NextToken => Str

The paginated results marker. When the result of a ListConfigurations
operation is truncated, the call returns NextToken in the response. To
get another batch of configurations, provide this token in your next
request.


=head2 _request_id => Str


=cut

