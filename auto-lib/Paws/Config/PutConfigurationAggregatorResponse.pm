
package Paws::Config::PutConfigurationAggregatorResponse;
  use Moose;
  has ConfigurationAggregator => (is => 'ro', isa => 'Paws::Config::ConfigurationAggregator');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::PutConfigurationAggregatorResponse

=head1 ATTRIBUTES


=head2 ConfigurationAggregator => L<Paws::Config::ConfigurationAggregator>

Returns a ConfigurationAggregator object.


=head2 _request_id => Str


=cut

1;