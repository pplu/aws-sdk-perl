
package Paws::SESv2::GetImportJobResponse;
  use Moose;
  has CompletedTimestamp => (is => 'ro', isa => 'Str');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has FailedRecordsCount => (is => 'ro', isa => 'Int');
  has FailureInfo => (is => 'ro', isa => 'Paws::SESv2::FailureInfo');
  has ImportDataSource => (is => 'ro', isa => 'Paws::SESv2::ImportDataSource');
  has ImportDestination => (is => 'ro', isa => 'Paws::SESv2::ImportDestination');
  has JobId => (is => 'ro', isa => 'Str');
  has JobStatus => (is => 'ro', isa => 'Str');
  has ProcessedRecordsCount => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetImportJobResponse

=head1 ATTRIBUTES


=head2 CompletedTimestamp => Str

The time stamp of when the import job was completed.


=head2 CreatedTimestamp => Str

The time stamp of when the import job was created.


=head2 FailedRecordsCount => Int

The number of records that failed processing because of invalid input
or other reasons.


=head2 FailureInfo => L<Paws::SESv2::FailureInfo>

The failure details about an import job.


=head2 ImportDataSource => L<Paws::SESv2::ImportDataSource>

The data source of the import job.


=head2 ImportDestination => L<Paws::SESv2::ImportDestination>

The destination of the import job.


=head2 JobId => Str

A string that represents the import job ID.


=head2 JobStatus => Str

The status of the import job.

Valid values are: C<"CREATED">, C<"PROCESSING">, C<"COMPLETED">, C<"FAILED">
=head2 ProcessedRecordsCount => Int

The current number of records processed.


=head2 _request_id => Str


=cut

