
package Paws::KinesisAnalyticsV2::AddApplicationVpcConfigurationResponse;
  use Moose;
  has ApplicationARN => (is => 'ro', isa => 'Str');
  has ApplicationVersionId => (is => 'ro', isa => 'Int');
  has VpcConfigurationDescription => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::VpcConfigurationDescription');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::AddApplicationVpcConfigurationResponse

=head1 ATTRIBUTES


=head2 ApplicationARN => Str

The ARN of the application.


=head2 ApplicationVersionId => Int

Provides the current application version. Kinesis Data Analytics
updates the ApplicationVersionId each time you update the application.


=head2 VpcConfigurationDescription => L<Paws::KinesisAnalyticsV2::VpcConfigurationDescription>

The parameters of the new VPC configuration.


=head2 _request_id => Str


=cut

1;