
package Paws::Quicksight::DescribeDashboardResponse;
  use Moose;
  has Dashboard => (is => 'ro', isa => 'Paws::Quicksight::Dashboard');
  has RequestId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeDashboardResponse

=head1 ATTRIBUTES


=head2 Dashboard => L<Paws::Quicksight::Dashboard>

Information about the dashboard.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The HTTP status of this request.


=head2 _request_id => Str


=cut

