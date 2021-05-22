
package Paws::Backup::DescribeRegionSettingsOutput;
  use Moose;
  has ResourceTypeOptInPreference => (is => 'ro', isa => 'Paws::Backup::ResourceTypeOptInPreference');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::DescribeRegionSettingsOutput

=head1 ATTRIBUTES


=head2 ResourceTypeOptInPreference => L<Paws::Backup::ResourceTypeOptInPreference>

Returns a list of all services along with the opt-in preferences in the
Region.


=head2 _request_id => Str


=cut

