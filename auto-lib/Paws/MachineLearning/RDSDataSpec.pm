package Paws::MachineLearning::RDSDataSpec;
  use Moose;
  has DatabaseCredentials => (is => 'ro', isa => 'Paws::MachineLearning::RDSDatabaseCredentials', required => 1);
  has DatabaseInformation => (is => 'ro', isa => 'Paws::MachineLearning::RDSDatabase', required => 1);
  has DataRearrangement => (is => 'ro', isa => 'Str');
  has DataSchema => (is => 'ro', isa => 'Str');
  has DataSchemaUri => (is => 'ro', isa => 'Str');
  has ResourceRole => (is => 'ro', isa => 'Str', required => 1);
  has S3StagingLocation => (is => 'ro', isa => 'Str', required => 1);
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has SelectSqlQuery => (is => 'ro', isa => 'Str', required => 1);
  has ServiceRole => (is => 'ro', isa => 'Str', required => 1);
  has SubnetId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::RDSDataSpec

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MachineLearning::RDSDataSpec object:

  $service_obj->Method(Att1 => { DatabaseCredentials => $value, ..., SubnetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MachineLearning::RDSDataSpec object:

  $result = $service_obj->Method(...);
  $result->Att1->DatabaseCredentials

=head1 ATTRIBUTES

=head2 B<REQUIRED> DatabaseCredentials => Paws::MachineLearning::RDSDatabaseCredentials

  The AWS Identity and Access Management (IAM) credentials that are used
connect to the Amazon RDS database.

=head2 B<REQUIRED> DatabaseInformation => Paws::MachineLearning::RDSDatabase

  Describes the C<DatabaseName> and C<InstanceIdentifier> of an an Amazon
RDS database.

=head2 DataRearrangement => Str

  DataRearrangement - A JSON string that represents the splitting
requirement of a C<DataSource>.

Sample - C< "{\"splitting\":{\"percentBegin\":10,\"percentEnd\":60}}">

=head2 DataSchema => Str

  A JSON string that represents the schema for an Amazon RDS
C<DataSource>. The C<DataSchema> defines the structure of the
observation data in the data file(s) referenced in the C<DataSource>.

A C<DataSchema> is not required if you specify a C<DataSchemaUri>

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

  The Amazon S3 location of the C<DataSchema>.

=head2 B<REQUIRED> ResourceRole => Str

  The role (DataPipelineDefaultResourceRole) assumed by an Amazon Elastic
Compute Cloud (Amazon EC2) instance to carry out the copy operation
from Amazon RDS to an Amazon S3 task. For more information, see Role
templates for data pipelines.

=head2 B<REQUIRED> S3StagingLocation => Str

  The Amazon S3 location for staging Amazon RDS data. The data retrieved
from Amazon RDS using C<SelectSqlQuery> is stored in this location.

=head2 B<REQUIRED> SecurityGroupIds => ArrayRef[Str]

  The security group IDs to be used to access a VPC-based RDS DB
instance. Ensure that there are appropriate ingress rules set up to
allow access to the RDS DB instance. This attribute is used by Data
Pipeline to carry out the copy operation from Amazon RDS to an Amazon
S3 task.

=head2 B<REQUIRED> SelectSqlQuery => Str

  The query that is used to retrieve the observation data for the
C<DataSource>.

=head2 B<REQUIRED> ServiceRole => Str

  The role (DataPipelineDefaultRole) assumed by AWS Data Pipeline service
to monitor the progress of the copy task from Amazon RDS to Amazon S3.
For more information, see Role templates for data pipelines.

=head2 B<REQUIRED> SubnetId => Str

  The subnet ID to be used to access a VPC-based RDS DB instance. This
attribute is used by Data Pipeline to carry out the copy task from
Amazon RDS to Amazon S3.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MachineLearning>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

