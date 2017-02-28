
package Paws::ElasticBeanstalk::CreatePlatformVersionResult;
  use Moose;
  has Builder => (is => 'ro', isa => 'Paws::ElasticBeanstalk::Builder');
  has PlatformSummary => (is => 'ro', isa => 'Paws::ElasticBeanstalk::PlatformSummary');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::CreatePlatformVersionResult

=head1 ATTRIBUTES


=head2 Builder => L<Paws::ElasticBeanstalk::Builder>

The builder used to create the custom platform.


=head2 PlatformSummary => L<Paws::ElasticBeanstalk::PlatformSummary>

Detailed information about the new version of the custom platform.


=head2 _request_id => Str


=cut

