
package Paws::ElasticBeanstalk::DeletePlatformVersionResult;
  use Moose;
  has PlatformSummary => (is => 'ro', isa => 'Paws::ElasticBeanstalk::PlatformSummary');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::DeletePlatformVersionResult

=head1 ATTRIBUTES


=head2 PlatformSummary => L<Paws::ElasticBeanstalk::PlatformSummary>

Detailed information about the version of the custom platform.


=head2 _request_id => Str


=cut

