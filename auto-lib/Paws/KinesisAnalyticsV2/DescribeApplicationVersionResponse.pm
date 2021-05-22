
package Paws::KinesisAnalyticsV2::DescribeApplicationVersionResponse;
  use Moose;
  has ApplicationVersionDetail => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::ApplicationDetail');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::DescribeApplicationVersionResponse

=head1 ATTRIBUTES


=head2 ApplicationVersionDetail => L<Paws::KinesisAnalyticsV2::ApplicationDetail>




=head2 _request_id => Str


=cut

1;