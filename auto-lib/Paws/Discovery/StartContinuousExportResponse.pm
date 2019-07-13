
package Paws::Discovery::StartContinuousExportResponse;
  use Moose;
  has DataSource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataSource' );
  has ExportId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'exportId' );
  has S3Bucket => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 's3Bucket' );
  has SchemaStorageConfig => (is => 'ro', isa => 'Paws::Discovery::SchemaStorageConfig', traits => ['NameInRequest'], request_name => 'schemaStorageConfig' );
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::StartContinuousExportResponse

=head1 ATTRIBUTES


=head2 DataSource => Str

The type of data collector used to gather this data (currently only
offered for AGENT).

Valid values are: C<"AGENT">
=head2 ExportId => Str

The unique ID assigned to this export.


=head2 S3Bucket => Str

The name of the s3 bucket where the export data parquet files are
stored.


=head2 SchemaStorageConfig => L<Paws::Discovery::SchemaStorageConfig>

A dictionary which describes how the data is stored.

=over

=item *

C<databaseName> - the name of the Glue database used to store the
schema.

=back



=head2 StartTime => Str

The timestamp representing when the continuous export was started.


=head2 _request_id => Str


=cut

1;