
package Paws::MigrationHubConfig::DescribeHomeRegionControlsResult;
  use Moose;
  has HomeRegionControls => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubConfig::HomeRegionControl]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubConfig::DescribeHomeRegionControlsResult

=head1 ATTRIBUTES


=head2 HomeRegionControls => ArrayRef[L<Paws::MigrationHubConfig::HomeRegionControl>]

An array that contains your C<HomeRegionControl> objects.


=head2 NextToken => Str

If a C<NextToken> was returned by a previous call, more results are
available. To retrieve the next page of results, make the call again
using the returned token in C<NextToken>.


=head2 _request_id => Str


=cut

1;