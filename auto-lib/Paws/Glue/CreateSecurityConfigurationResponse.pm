
package Paws::Glue::CreateSecurityConfigurationResponse;
  use Moose;
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateSecurityConfigurationResponse

=head1 ATTRIBUTES


=head2 CreatedTimestamp => Str

The time at which the new security configuration was created.


=head2 Name => Str

The name assigned to the new security configuration.


=head2 _request_id => Str


=cut

1;