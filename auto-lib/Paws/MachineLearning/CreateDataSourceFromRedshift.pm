
package Paws::MachineLearning::CreateDataSourceFromRedshift;
  use Moose;
  has ComputeStatistics => (is => 'ro', isa => 'Bool');
  has DataSourceId => (is => 'ro', isa => 'Str', required => 1);
  has DataSourceName => (is => 'ro', isa => 'Str');
  has DataSpec => (is => 'ro', isa => 'Paws::MachineLearning::RedshiftDataSpec', required => 1);
  has RoleARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataSourceFromRedshift');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MachineLearning::CreateDataSourceFromRedshiftOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::CreateDataSourceFromRedshift - Arguments for method CreateDataSourceFromRedshift on L<Paws::MachineLearning>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataSourceFromRedshift on the
L<Amazon Machine Learning|Paws::MachineLearning> service. Use the attributes of this class
as arguments to method CreateDataSourceFromRedshift.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataSourceFromRedshift.

=head1 SYNOPSIS

    my $machinelearning = Paws->service('MachineLearning');
    my $CreateDataSourceFromRedshiftOutput =
      $machinelearning->CreateDataSourceFromRedshift(
      DataSourceId => 'MyEntityId',
      DataSpec     => {
        DatabaseCredentials => {
          Password => 'MyRedshiftDatabasePassword',    # min: 8, max: 64
          Username => 'MyRedshiftDatabaseUsername',    # min: 1, max: 128

        },
        DatabaseInformation => {
          ClusterIdentifier => 'MyRedshiftClusterIdentifier',  # min: 1, max: 63
          DatabaseName      => 'MyRedshiftDatabaseName',       # min: 1, max: 64

        },
        S3StagingLocation => 'MyS3Url',                  # max: 2048
        SelectSqlQuery    => 'MyRedshiftSelectSqlQuery', # min: 1, max: 16777216
        DataRearrangement => 'MyDataRearrangement',      # OPTIONAL
        DataSchema        => 'MyDataSchema',             # max: 131071; OPTIONAL
        DataSchemaUri     => 'MyS3Url',                  # max: 2048
      },
      RoleARN           => 'MyRoleARN',
      ComputeStatistics => 1,                            # OPTIONAL
      DataSourceName    => 'MyEntityName',               # OPTIONAL
      );

    # Results:
    my $DataSourceId = $CreateDataSourceFromRedshiftOutput->DataSourceId;

# Returns a L<Paws::MachineLearning::CreateDataSourceFromRedshiftOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/machinelearning/CreateDataSourceFromRedshift>

=head1 ATTRIBUTES


=head2 ComputeStatistics => Bool

The compute statistics for a C<DataSource>. The statistics are
generated from the observation data referenced by a C<DataSource>.
Amazon ML uses the statistics internally during C<MLModel> training.
This parameter must be set to C<true> if the C<DataSource> needs to be
used for C<MLModel> training.



=head2 B<REQUIRED> DataSourceId => Str

A user-supplied ID that uniquely identifies the C<DataSource>.



=head2 DataSourceName => Str

A user-supplied name or description of the C<DataSource>.



=head2 B<REQUIRED> DataSpec => L<Paws::MachineLearning::RedshiftDataSpec>

The data specification of an Amazon Redshift C<DataSource>:

=over

=item *

DatabaseInformation -

=over

=item * C<DatabaseName> - The name of the Amazon Redshift database.

=item * C< ClusterIdentifier> - The unique ID for the Amazon Redshift
cluster.

=back

=item *

DatabaseCredentials - The AWS Identity and Access Management (IAM)
credentials that are used to connect to the Amazon Redshift database.

=item *

SelectSqlQuery - The query that is used to retrieve the observation
data for the C<Datasource>.

=item *

S3StagingLocation - The Amazon Simple Storage Service (Amazon S3)
location for staging Amazon Redshift data. The data retrieved from
Amazon Redshift using the C<SelectSqlQuery> query is stored in this
location.

=item *

DataSchemaUri - The Amazon S3 location of the C<DataSchema>.

=item *

DataSchema - A JSON string representing the schema. This is not
required if C<DataSchemaUri> is specified.

=item *

DataRearrangement - A JSON string that represents the splitting and
rearrangement requirements for the C<DataSource>.

Sample - C< "{\"splitting\":{\"percentBegin\":10,\"percentEnd\":60}}">

=back




=head2 B<REQUIRED> RoleARN => Str

A fully specified role Amazon Resource Name (ARN). Amazon ML assumes
the role on behalf of the user to create the following:

=over

=item *

A security group to allow Amazon ML to execute the C<SelectSqlQuery>
query on an Amazon Redshift cluster

=item *

An Amazon S3 bucket policy to grant Amazon ML read/write permissions on
the C<S3StagingLocation>

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataSourceFromRedshift in L<Paws::MachineLearning>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

