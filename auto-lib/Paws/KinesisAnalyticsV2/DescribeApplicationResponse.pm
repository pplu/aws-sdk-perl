
package Paws::KinesisAnalyticsV2::DescribeApplicationResponse;
  use Moose;
  has ApplicationDetail => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::ApplicationDetail', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::DescribeApplicationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationDetail => L<Paws::KinesisAnalyticsV2::ApplicationDetail>

Provides a description of the application, such as the application's
Amazon Resource Name (ARN), status, and latest version.


=head2 _request_id => Str


=cut

1;