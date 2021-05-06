
package Paws::KinesisAnalyticsV2::DeleteApplicationVpcConfigurationResponse;
  use Moose;
  has ApplicationARN => (is => 'ro', isa => 'Str');
  has ApplicationVersionId => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::DeleteApplicationVpcConfigurationResponse

=head1 ATTRIBUTES


=head2 ApplicationARN => Str

The ARN of the Kinesis Data Analytics application.


=head2 ApplicationVersionId => Int

The updated version ID of the application.


=head2 _request_id => Str


=cut

1;