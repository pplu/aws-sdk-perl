
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

The starting index into the remaining list of platforms. if this value
is not C<null>, you can use it in a subsequent C<ListPlatformVersion>
call.


=head2 PlatformSummaryList => ArrayRef[L<Paws::ElasticBeanstalk::PlatformSummary>]

Detailed information about the platforms.


=head2 _request_id => Str


=cut

