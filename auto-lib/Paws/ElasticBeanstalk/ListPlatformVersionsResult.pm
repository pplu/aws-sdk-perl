
package Paws::ElasticBeanstalk::ListPlatformVersionsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PlatformSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::PlatformSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ListPlatformVersionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

In a paginated request, if this value isn't C<null>, it's the token
that you can pass in a subsequent request to get the next response
page.


=head2 PlatformSummaryList => ArrayRef[L<Paws::ElasticBeanstalk::PlatformSummary>]

Summary information about the platform versions.


=head2 _request_id => Str


=cut

