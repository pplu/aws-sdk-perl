
package Paws::ApplicationInsights::ListApplicationsResponse;
  use Moose;
  has ApplicationInfoList => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationInsights::ApplicationInfo]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::ListApplicationsResponse

=head1 ATTRIBUTES


=head2 ApplicationInfoList => ArrayRef[L<Paws::ApplicationInsights::ApplicationInfo>]

The list of applications.


=head2 NextToken => Str

The token used to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

1;