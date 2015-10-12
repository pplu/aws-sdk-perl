package Paws::MachineLearning::S3DataSpec;
  use Moose;
  has DataLocationS3 => (is => 'ro', isa => 'Str', required => 1);
  has DataRearrangement => (is => 'ro', isa => 'Str');
  has DataSchema => (is => 'ro', isa => 'Str');
  has DataSchemaLocationS3 => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::S3DataSpec

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MachineLearning::S3DataSpec object:

  $service_obj->Method(Att1 => { DataLocationS3 => $value, ..., DataSchemaLocationS3 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MachineLearning::S3DataSpec object:

  $result = $service_obj->Method(...);
  $result->Att1->DataLocationS3

=head1 ATTRIBUTES

=head2 B<REQUIRED> DataLocationS3 => Str

  

The location of the data file(s) used by a C<DataSource>. The URI
specifies a data file or an Amazon Simple Storage Service (Amazon S3)
directory or bucket containing data files.










=head2 DataRearrangement => Str

  

Describes the splitting requirement of a C<Datasource>.










=head2 DataSchema => Str

  

A JSON string that represents the schema for an Amazon S3
C<DataSource>. The C<DataSchema> defines the structure of the
observation data in the data file(s) referenced in the C<DataSource>.

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










=head2 DataSchemaLocationS3 => Str

  

Describes the schema Location in Amazon S3.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MachineLearning>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

