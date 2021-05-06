
package Paws::MachineLearning::CreateDataSourceFromS3;
  use Moose;
  has ComputeStatistics => (is => 'ro', isa => 'Bool');
  has DataSourceId => (is => 'ro', isa => 'Str', required => 1);
  has DataSourceName => (is => 'ro', isa => 'Str');
  has DataSpec => (is => 'ro', isa => 'Paws::MachineLearning::S3DataSpec', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataSourceFromS3');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MachineLearning::CreateDataSourceFromS3Output');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::CreateDataSourceFromS3 - Arguments for method CreateDataSourceFromS3 on L<Paws::MachineLearning>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataSourceFromS3 on the
L<Amazon Machine Learning|Paws::MachineLearning> service. Use the attributes of this class
as arguments to method CreateDataSourceFromS3.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataSourceFromS3.

=head1 SYNOPSIS

    my $machinelearning = Paws->service('MachineLearning');
    my $CreateDataSourceFromS3Output = $machinelearning->CreateDataSourceFromS3(
      DataSourceId => 'MyEntityId',
      DataSpec     => {
        DataLocationS3       => 'MyS3Url',               # max: 2048
        DataRearrangement    => 'MyDataRearrangement',   # OPTIONAL
        DataSchema           => 'MyDataSchema',          # max: 131071; OPTIONAL
        DataSchemaLocationS3 => 'MyS3Url',               # max: 2048
      },
      ComputeStatistics => 1,                            # OPTIONAL
      DataSourceName    => 'MyEntityName',               # OPTIONAL
    );

    # Results:
    my $DataSourceId = $CreateDataSourceFromS3Output->DataSourceId;

    # Returns a L<Paws::MachineLearning::CreateDataSourceFromS3Output> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/machinelearning/CreateDataSourceFromS3>

=head1 ATTRIBUTES


=head2 ComputeStatistics => Bool

The compute statistics for a C<DataSource>. The statistics are
generated from the observation data referenced by a C<DataSource>.
Amazon ML uses the statistics internally during C<MLModel> training.
This parameter must be set to C<true> if the C<>DataSourceC<> needs to
be used for C<MLModel> training.



=head2 B<REQUIRED> DataSourceId => Str

A user-supplied identifier that uniquely identifies the C<DataSource>.



=head2 DataSourceName => Str

A user-supplied name or description of the C<DataSource>.



=head2 B<REQUIRED> DataSpec => L<Paws::MachineLearning::S3DataSpec>

The data specification of a C<DataSource>:

=over

=item *

DataLocationS3 - The Amazon S3 location of the observation data.

=item *

DataSchemaLocationS3 - The Amazon S3 location of the C<DataSchema>.

=item *

DataSchema - A JSON string representing the schema. This is not
required if C<DataSchemaUri> is specified.

=item *

DataRearrangement - A JSON string that represents the splitting and
rearrangement requirements for the C<Datasource>.

Sample - C< "{\"splitting\":{\"percentBegin\":10,\"percentEnd\":60}}">

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataSourceFromS3 in L<Paws::MachineLearning>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

