
package Paws::SageMaker::ListAppsResponse;
  use Moose;
  has Apps => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::AppDetails]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListAppsResponse

=head1 ATTRIBUTES


=head2 Apps => ArrayRef[L<Paws::SageMaker::AppDetails>]

The list of apps.


=head2 NextToken => Str

If the previous response was truncated, you will receive this token.
Use it in your next request to receive the next set of results.


=head2 _request_id => Str


=cut

1;