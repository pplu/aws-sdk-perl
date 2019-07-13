
package Paws::Glue::GetSecurityConfigurationResponse;
  use Moose;
  has SecurityConfiguration => (is => 'ro', isa => 'Paws::Glue::SecurityConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetSecurityConfigurationResponse

=head1 ATTRIBUTES


=head2 SecurityConfiguration => L<Paws::Glue::SecurityConfiguration>

The requested security configuration


=head2 _request_id => Str


=cut

1;