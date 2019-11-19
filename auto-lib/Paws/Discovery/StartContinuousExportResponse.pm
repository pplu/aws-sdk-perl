# Generated from json/callresult_class.tt

package Paws::Discovery::StartContinuousExportResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Discovery::Types qw/Discovery_SchemaStorageConfig/;
  has DataSource => (is => 'ro', isa => Str);
  has ExportId => (is => 'ro', isa => Str);
  has S3Bucket => (is => 'ro', isa => Str);
  has SchemaStorageConfig => (is => 'ro', isa => Discovery_SchemaStorageConfig);
  has StartTime => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ExportId' => {
                               'type' => 'Str'
                             },
               'SchemaStorageConfig' => {
                                          'class' => 'Paws::Discovery::SchemaStorageConfig',
                                          'type' => 'Discovery_SchemaStorageConfig'
                                        },
               'DataSource' => {
                                 'type' => 'Str'
                               },
               'S3Bucket' => {
                               'type' => 'Str'
                             },
               'StartTime' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'SchemaStorageConfig' => 'schemaStorageConfig',
                       'DataSource' => 'dataSource',
                       'ExportId' => 'exportId',
                       'S3Bucket' => 's3Bucket',
                       'StartTime' => 'startTime'
                     }
}
;
    return $Params_map;
  }


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


=head2 SchemaStorageConfig => Discovery_SchemaStorageConfig

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