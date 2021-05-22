
package Paws::KinesisAnalyticsV2::CreateApplicationPresignedUrlResponse;
  use Moose;
  has AuthorizedUrl => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::CreateApplicationPresignedUrlResponse

=head1 ATTRIBUTES


=head2 AuthorizedUrl => Str

The URL of the extension.


=head2 _request_id => Str


=cut

1;