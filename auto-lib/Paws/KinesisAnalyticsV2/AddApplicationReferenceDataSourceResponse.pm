
package Paws::KinesisAnalyticsV2::AddApplicationReferenceDataSourceResponse;
  use Moose;
  has ApplicationARN => (is => 'ro', isa => 'Str');
  has ApplicationVersionId => (is => 'ro', isa => 'Int');
  has ReferenceDataSourceDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalyticsV2::ReferenceDataSourceDescription]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::AddApplicationReferenceDataSourceResponse

=head1 ATTRIBUTES


=head2 ApplicationARN => Str

The application Amazon Resource Name (ARN).


=head2 ApplicationVersionId => Int

The updated application version ID. Amazon Kinesis Data Analytics
increments this ID when the application is updated.


=head2 ReferenceDataSourceDescriptions => ArrayRef[L<Paws::KinesisAnalyticsV2::ReferenceDataSourceDescription>]

Describes reference data sources configured for the application.


=head2 _request_id => Str


=cut

1;