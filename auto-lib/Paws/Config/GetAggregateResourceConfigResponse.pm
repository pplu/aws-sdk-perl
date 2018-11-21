
package Paws::Config::GetAggregateResourceConfigResponse;
  use Moose;
  has ConfigurationItem => (is => 'ro', isa => 'Paws::Config::ConfigurationItem');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetAggregateResourceConfigResponse

=head1 ATTRIBUTES


=head2 ConfigurationItem => L<Paws::Config::ConfigurationItem>

Returns a C<ConfigurationItem> object.


=head2 _request_id => Str


=cut

1;