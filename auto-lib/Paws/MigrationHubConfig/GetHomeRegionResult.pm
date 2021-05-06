
package Paws::MigrationHubConfig::GetHomeRegionResult;
  use Moose;
  has HomeRegion => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubConfig::GetHomeRegionResult

=head1 ATTRIBUTES


=head2 HomeRegion => Str

The name of the home region of the calling account.


=head2 _request_id => Str


=cut

1;