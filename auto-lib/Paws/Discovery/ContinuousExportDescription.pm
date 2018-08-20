package Paws::Discovery::ContinuousExportDescription;
  use Moose;
  has DataSource => (is => 'ro', isa => 'Str', request_name => 'dataSource', traits => ['NameInRequest']);
  has ExportId => (is => 'ro', isa => 'Str', request_name => 'exportId', traits => ['NameInRequest']);
  has S3Bucket => (is => 'ro', isa => 'Str', request_name => 's3Bucket', traits => ['NameInRequest']);
  has SchemaStorageConfig => (is => 'ro', isa => 'Paws::Discovery::SchemaStorageConfig', request_name => 'schemaStorageConfig', traits => ['NameInRequest']);
  has StartTime => (is => 'ro', isa => 'Str', request_name => 'startTime', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has StatusDetail => (is => 'ro', isa => 'Str', request_name => 'statusDetail', traits => ['NameInRequest']);
  has StopTime => (is => 'ro', isa => 'Str', request_name => 'stopTime', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::ContinuousExportDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Discovery::ContinuousExportDescription object:

  $service_obj->Method(Att1 => { DataSource => $value, ..., StopTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Discovery::ContinuousExportDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->DataSource

=head1 DESCRIPTION

A list of continuous export descriptions.

=head1 ATTRIBUTES


=head2 DataSource => Str

  The type of data collector used to gather this data (currently only
offered for AGENT).


=head2 ExportId => Str

  The unique ID assigned to this export.


=head2 S3Bucket => Str

  The name of the s3 bucket where the export data parquet files are
stored.


=head2 SchemaStorageConfig => L<Paws::Discovery::SchemaStorageConfig>

  An object which describes how the data is stored.

=over

=item *

C<databaseName> - the name of the Glue database used to store the
schema.

=back



=head2 StartTime => Str

  The timestamp representing when the continuous export was started.


=head2 Status => Str

  Describes the status of the export. Can be one of the following values:

=over

=item *

START_IN_PROGRESS - setting up resources to start continuous export.

=item *

START_FAILED - an error occurred setting up continuous export. To
recover, call start-continuous-export again.

=item *

ACTIVE - data is being exported to the customer bucket.

=item *

ERROR - an error occurred during export. To fix the issue, call
stop-continuous-export and start-continuous-export.

=item *

STOP_IN_PROGRESS - stopping the export.

=item *

STOP_FAILED - an error occurred stopping the export. To recover, call
stop-continuous-export again.

=item *

INACTIVE - the continuous export has been stopped. Data is no longer
being exported to the customer bucket.

=back



=head2 StatusDetail => Str

  Contains information about any errors that may have occurred.


=head2 StopTime => Str

  The timestamp that represents when this continuous export was stopped.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

