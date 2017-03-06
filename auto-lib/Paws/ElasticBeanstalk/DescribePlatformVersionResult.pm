
package Paws::ElasticBeanstalk::DescribePlatformVersionResult;
  use Moose;
  has PlatformDescription => (is => 'ro', isa => 'Paws::ElasticBeanstalk::PlatformDescription');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::DescribePlatformVersionResult

=head1 ATTRIBUTES


=head2 PlatformDescription => L<Paws::ElasticBeanstalk::PlatformDescription>

Detailed information about the version of the platform.


=head2 _request_id => Str


=cut

