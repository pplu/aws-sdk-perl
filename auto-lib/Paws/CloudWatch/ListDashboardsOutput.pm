
package Paws::CloudWatch::ListDashboardsOutput;
  use Moose;
  has DashboardEntries => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::DashboardEntry]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::ListDashboardsOutput

=head1 ATTRIBUTES


=head2 DashboardEntries => ArrayRef[L<Paws::CloudWatch::DashboardEntry>]

The list of matching dashboards.


=head2 NextToken => Str

The token that marks the start of the next batch of returned results.


=head2 _request_id => Str


=cut

