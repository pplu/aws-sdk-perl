
package Paws::MigrationHubConfig::CreateHomeRegionControlResult;
  use Moose;
  has HomeRegionControl => (is => 'ro', isa => 'Paws::MigrationHubConfig::HomeRegionControl');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubConfig::CreateHomeRegionControlResult

=head1 ATTRIBUTES


=head2 HomeRegionControl => L<Paws::MigrationHubConfig::HomeRegionControl>

This object is the C<HomeRegionControl> object that's returned by a
successful call to C<CreateHomeRegionControl>.


=head2 _request_id => Str


=cut

1;