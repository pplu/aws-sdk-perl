
package Paws::KinesisAnalytics::ListApplicationsResponse;
  use Moose;
  has ApplicationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalytics::ApplicationSummary]', required => 1);
  has HasMoreApplications => (is => 'ro', isa => 'Bool', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::ListApplicationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationSummaries => ArrayRef[L<Paws::KinesisAnalytics::ApplicationSummary>]

List of C<ApplicationSummary> objects.


=head2 B<REQUIRED> HasMoreApplications => Bool

Returns true if there are more applications to retrieve.


=head2 _request_id => Str


=cut

1;