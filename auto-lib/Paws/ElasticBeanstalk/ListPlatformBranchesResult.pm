
package Paws::ElasticBeanstalk::ListPlatformBranchesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PlatformBranchSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::PlatformBranchSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ListPlatformBranchesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

In a paginated request, if this value isn't C<null>, it's the token
that you can pass in a subsequent request to get the next response
page.


=head2 PlatformBranchSummaryList => ArrayRef[L<Paws::ElasticBeanstalk::PlatformBranchSummary>]

Summary information about the platform branches.


=head2 _request_id => Str


=cut

