package Paws::MachineLearning::RedshiftDataSpec;
  use Moose;
  has DatabaseCredentials => (is => 'ro', isa => 'Paws::MachineLearning::RedshiftDatabaseCredentials', required => 1);
  has DatabaseInformation => (is => 'ro', isa => 'Paws::MachineLearning::RedshiftDatabase', required => 1);
  has DataRearrangement => (is => 'ro', isa => 'Str');
  has DataSchema => (is => 'ro', isa => 'Str');
  has DataSchemaUri => (is => 'ro', isa => 'Str');
  has S3StagingLocation => (is => 'ro', isa => 'Str', required => 1);
  has SelectSqlQuery => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::RedshiftDataSpec

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MachineLearning::RedshiftDataSpec object:

  $service_obj->Method(Att1 => { DatabaseCredentials => $value, ..., SelectSqlQuery => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MachineLearning::RedshiftDataSpec object:

  $result = $service_obj->Method(...);
  $result->Att1->DatabaseCredentials

=head1 ATTRIBUTES

=head2 B<REQUIRED> DatabaseCredentials => Paws::MachineLearning::RedshiftDatabaseCredentials

  Describes AWS Identity and Access Management (IAM) credentials that are
used connect to the Amazon Redshift database.

=head2 B<REQUIRED> DatabaseInformation => Paws::MachineLearning::RedshiftDatabase

  Describes the C<DatabaseName> and C<ClusterIdentifier> for an Amazon
Redshift C<DataSource>.

=head2 DataRearrangement => Str

  Describes the splitting specifications for a C<DataSource>.

=head2 DataSchema => Str

  A JSON string that represents the schema for an Amazon Redshift
C<DataSource>. The C<DataSchema> defines the structure of the
observation data in the data file(s) referenced in the C<DataSource>.

A C<DataSchema> is not required if you specify a C<DataSchemaUri>.

Define your C<DataSchema> as a series of key-value pairs. C<attributes>
and C<excludedVariableNames> have an array of key-value pairs for their
value. Use the following format to define your C<DataSchema>.

{ "version": "1.0",

"recordAnnotationFieldName": "F1",

"recordWeightFieldName": "F2",

"targetFieldName": "F3",

"dataFormat": "CSV",

"dataFileContainsHeader": true,

"attributes": [

{ "fieldName": "F1", "fieldType": "TEXT" }, { "fieldName": "F2",
"fieldType": "NUMERIC" }, { "fieldName": "F3", "fieldType":
"CATEGORICAL" }, { "fieldName": "F4", "fieldType": "NUMERIC" }, {
"fieldName": "F5", "fieldType": "CATEGORICAL" }, { "fieldName": "F6",
"fieldType": "TEXT" }, { "fieldName": "F7", "fieldType":
"WEIGHTED_INT_SEQUENCE" }, { "fieldName": "F8", "fieldType":
"WEIGHTED_STRING_SEQUENCE" } ],

"excludedVariableNames": [ "F6" ] }

=head2 DataSchemaUri => Str

  Describes the schema location for an Amazon Redshift C<DataSource>.

=head2 B<REQUIRED> S3StagingLocation => Str

  Describes an Amazon S3 location to store the result set of the
C<SelectSqlQuery> query.

=head2 B<REQUIRED> SelectSqlQuery => Str

  Describes the SQL Query to execute on an Amazon Redshift database for
an Amazon Redshift C<DataSource>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MachineLearning>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

