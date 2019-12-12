
package Paws::Kendra::CreateDataSource;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::Kendra::DataSourceConfiguration', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Schedule => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataSource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::CreateDataSourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::CreateDataSource - Arguments for method CreateDataSource on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataSource on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method CreateDataSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataSource.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $CreateDataSourceResponse = $kendra->CreateDataSource(
      Configuration => {
        DatabaseConfiguration => {
          ColumnConfiguration => {
            ChangeDetectingColumns => [
              'MyColumnName', ...    # min: 1, max: 100
            ],                       # min: 1, max: 5
            DocumentDataColumnName  => 'MyColumnName',    # min: 1, max: 100
            DocumentIdColumnName    => 'MyColumnName',    # min: 1, max: 100
            DocumentTitleColumnName => 'MyColumnName',    # min: 1, max: 100
            FieldMappings           => [
              {
                DataSourceFieldName =>
                  'MyDataSourceFieldName',                # min: 1, max: 100
                IndexFieldName => 'MyIndexFieldName',     # min: 1, max: 30
                DateFieldFormat =>
                  'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
              },
              ...
            ],                                      # min: 1, max: 100; OPTIONAL
          },
          ConnectionConfiguration => {
            DatabaseHost => 'MyDatabaseHost',       # min: 1, max: 253
            DatabaseName => 'MyDatabaseName',       # min: 1, max: 100
            DatabasePort => 1,                      # min: 1, max: 65535
            SecretArn    => 'MySecretArn',          # min: 1, max: 1284
            TableName    => 'MyTableName',          # min: 1, max: 100

          },
          DatabaseEngineType => 'RDS_AURORA_MYSQL'
          , # values: RDS_AURORA_MYSQL, RDS_AURORA_POSTGRESQL, RDS_MYSQL, RDS_POSTGRESQL
          AclConfiguration => {
            AllowedGroupsColumnName => 'MyColumnName',    # min: 1, max: 100

          },    # OPTIONAL
          VpcConfiguration => {
            SecurityGroupIds => [
              'MyVpcSecurityGroupId', ...    # min: 1, max: 200
            ],                               # min: 1, max: 10
            SubnetIds => [
              'MySubnetId', ...              # min: 1, max: 200
            ],                               # min: 1, max: 6

          },    # OPTIONAL
        },    # OPTIONAL
        S3Configuration => {
          BucketName                     => 'MyS3BucketName',  # min: 3, max: 63
          AccessControlListConfiguration => {
            KeyPath => 'MyS3ObjectKey',    # min: 1, max: 1024; OPTIONAL
          },    # OPTIONAL
          DocumentsMetadataConfiguration => {
            S3Prefix => 'MyS3ObjectKey',    # min: 1, max: 1024; OPTIONAL
          },    # OPTIONAL
          ExclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 50
          ],       # max: 100; OPTIONAL
          InclusionPrefixes => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 50
          ],       # max: 100; OPTIONAL
        },    # OPTIONAL
        SharePointConfiguration => {
          SecretArn         => 'MySecretArn',        # min: 1, max: 1284
          SharePointVersion => 'SHAREPOINT_ONLINE',  # values: SHAREPOINT_ONLINE
          Urls              => [
            'MyUrl', ...                             # min: 1, max: 2048
          ],                                         # min: 1, max: 100
          CrawlAttachments       => 1,                        # OPTIONAL
          DocumentTitleFieldName => 'MyDataSourceFieldName',  # min: 1, max: 100
          FieldMappings          => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName      => 'MyIndexFieldName',      # min: 1, max: 30
              DateFieldFormat =>
                'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
            },
            ...
          ],                                      # min: 1, max: 100; OPTIONAL
          VpcConfiguration => {
            SecurityGroupIds => [
              'MyVpcSecurityGroupId', ...         # min: 1, max: 200
            ],                                    # min: 1, max: 10
            SubnetIds => [
              'MySubnetId', ...                   # min: 1, max: 200
            ],                                    # min: 1, max: 6

          },    # OPTIONAL
        },    # OPTIONAL
      },
      IndexId     => 'MyIndexId',
      Name        => 'MyDataSourceName',
      RoleArn     => 'MyRoleArn',
      Type        => 'S3',
      Description => 'MyDescription',      # OPTIONAL
      Schedule    => 'MyScanSchedule',     # OPTIONAL
    );

    # Results:
    my $Id = $CreateDataSourceResponse->Id;

    # Returns a L<Paws::Kendra::CreateDataSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/CreateDataSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Configuration => L<Paws::Kendra::DataSourceConfiguration>

The connector configuration information that is required to access the
repository.



=head2 Description => Str

A description for the data source.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index that should be associated with this data
source.



=head2 B<REQUIRED> Name => Str

A unique name for the data source. A data source name can't be changed
without deleting and recreating the data source.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of a role with permission to access the
data source. For more information, see IAM Roles for Amazon Kendra
(https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).



=head2 Schedule => Str

Sets the frequency that Amazon Kendra will check the documents in your
repository and update the index. If you don't set a schedule Amazon
Kendra will not periodically update the index. You can call the
C<StartDataSourceSyncJob> operation to update the index.



=head2 B<REQUIRED> Type => Str

The type of repository that contains the data source.

Valid values are: C<"S3">, C<"SHAREPOINT">, C<"DATABASE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataSource in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

