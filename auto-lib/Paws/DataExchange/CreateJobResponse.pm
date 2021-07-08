
package Paws::DataExchange::CreateJobResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Details => (is => 'ro', isa => 'Paws::DataExchange::ResponseDetails');
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::DataExchange::JobError]');
  has Id => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::CreateJobResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN for the job.


=head2 CreatedAt => Str

The date and time that the job was created, in ISO 8601 format.


=head2 Details => L<Paws::DataExchange::ResponseDetails>

Details about the job.


=head2 Errors => ArrayRef[L<Paws::DataExchange::JobError>]

The errors associated with jobs.


=head2 Id => Str

The unique identifier for the job.


=head2 State => Str

The state of the job.

Valid values are: C<"WAITING">, C<"IN_PROGRESS">, C<"ERROR">, C<"COMPLETED">, C<"CANCELLED">, C<"TIMED_OUT">
=head2 Type => Str

The job type.

Valid values are: C<"IMPORT_ASSETS_FROM_S3">, C<"IMPORT_ASSET_FROM_SIGNED_URL">, C<"EXPORT_ASSETS_TO_S3">, C<"EXPORT_ASSET_TO_SIGNED_URL">, C<"EXPORT_REVISIONS_TO_S3">
=head2 UpdatedAt => Str

The date and time that the job was last updated, in ISO 8601 format.


=head2 _request_id => Str


=cut

