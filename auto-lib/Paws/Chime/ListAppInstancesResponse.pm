
package Paws::Chime::ListAppInstancesResponse;
  use Moose;
  has AppInstances => (is => 'ro', isa => 'ArrayRef[Paws::Chime::AppInstanceSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListAppInstancesResponse

=head1 ATTRIBUTES


=head2 AppInstances => ArrayRef[L<Paws::Chime::AppInstanceSummary>]

The information for each C<AppInstance>.


=head2 NextToken => Str

The token passed by previous API requests until the maximum number of
C<AppInstance>s is reached.


=head2 _request_id => Str


=cut

