
package Paws::KinesisAnalyticsV2::CreateApplicationResponse;
  use Moose;
  has ApplicationDetail => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::ApplicationDetail', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::CreateApplicationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationDetail => L<Paws::KinesisAnalyticsV2::ApplicationDetail>

In response to your C<CreateApplication> request, Kinesis Data
Analytics returns a response with details of the application it
created.


=head2 _request_id => Str


=cut

1;