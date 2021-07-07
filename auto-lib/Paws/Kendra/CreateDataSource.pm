
package Paws::Kendra::CreateDataSource;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Configuration => (is => 'ro', isa => 'Paws::Kendra::DataSourceConfiguration');
  has Description => (is => 'ro', isa => 'Str');
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');
  has Schedule => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::Tag]');
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
      IndexId       => 'MyIndexId',
      Name          => 'MyDataSourceName',
      Type          => 'S3',
      ClientToken   => 'MyClientTokenName',    # OPTIONAL
      Configuration => {
        ConfluenceConfiguration => {
          SecretArn               => 'MySecretArn',    # min: 1, max: 1284
          ServerUrl               => 'MyUrl',          # min: 1, max: 2048
          Version                 => 'CLOUD',          # values: CLOUD, SERVER
          AttachmentConfiguration => {
            AttachmentFieldMappings => [
              {
                DataSourceFieldName => 'AUTHOR'
                , # values: AUTHOR, CONTENT_TYPE, CREATED_DATE, DISPLAY_URL, FILE_SIZE, ITEM_TYPE, PARENT_ID, SPACE_KEY, SPACE_NAME, URL, VERSION; OPTIONAL
                DateFieldFormat =>
                  'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
                IndexFieldName =>
                  'MyIndexFieldName',               # min: 1, max: 30; OPTIONAL
              },
              ...
            ],    # min: 1, max: 11; OPTIONAL
            CrawlAttachments => 1,    # OPTIONAL
          },    # OPTIONAL
          BlogConfiguration => {
            BlogFieldMappings => [
              {
                DataSourceFieldName => 'AUTHOR'
                , # values: AUTHOR, DISPLAY_URL, ITEM_TYPE, LABELS, PUBLISH_DATE, SPACE_KEY, SPACE_NAME, URL, VERSION; OPTIONAL
                DateFieldFormat =>
                  'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
                IndexFieldName =>
                  'MyIndexFieldName',               # min: 1, max: 30; OPTIONAL
              },
              ...
            ],    # min: 1, max: 9; OPTIONAL
          },    # OPTIONAL
          ExclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 150
          ],    # max: 100; OPTIONAL
          InclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 150
          ],    # max: 100; OPTIONAL
          PageConfiguration => {
            PageFieldMappings => [
              {
                DataSourceFieldName => 'AUTHOR'
                , # values: AUTHOR, CONTENT_STATUS, CREATED_DATE, DISPLAY_URL, ITEM_TYPE, LABELS, MODIFIED_DATE, PARENT_ID, SPACE_KEY, SPACE_NAME, URL, VERSION; OPTIONAL
                DateFieldFormat =>
                  'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
                IndexFieldName =>
                  'MyIndexFieldName',               # min: 1, max: 30; OPTIONAL
              },
              ...
            ],    # min: 1, max: 12; OPTIONAL
          },    # OPTIONAL
          SpaceConfiguration => {
            CrawlArchivedSpaces => 1,    # OPTIONAL
            CrawlPersonalSpaces => 1,    # OPTIONAL
            ExcludeSpaces       => [
              'MyConfluenceSpaceIdentifier', ...    # min: 1, max: 255
            ],    # min: 1; OPTIONAL
            IncludeSpaces => [
              'MyConfluenceSpaceIdentifier', ...    # min: 1, max: 255
            ],    # min: 1; OPTIONAL
            SpaceFieldMappings => [
              {
                DataSourceFieldName => 'DISPLAY_URL'
                ,    # values: DISPLAY_URL, ITEM_TYPE, SPACE_KEY, URL; OPTIONAL
                DateFieldFormat =>
                  'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
                IndexFieldName =>
                  'MyIndexFieldName',               # min: 1, max: 30; OPTIONAL
              },
              ...
            ],    # min: 1, max: 4; OPTIONAL
          },    # OPTIONAL
          VpcConfiguration => {
            SecurityGroupIds => [
              'MyVpcSecurityGroupId', ...    # min: 1, max: 200
            ],    # min: 1, max: 10
            SubnetIds => [
              'MySubnetId', ...    # min: 1, max: 200
            ],    # min: 1, max: 6

          },    # OPTIONAL
        },    # OPTIONAL
        DatabaseConfiguration => {
          ColumnConfiguration => {
            ChangeDetectingColumns => [
              'MyColumnName', ...    # min: 1, max: 100
            ],    # min: 1, max: 5
            DocumentDataColumnName  => 'MyColumnName',    # min: 1, max: 100
            DocumentIdColumnName    => 'MyColumnName',    # min: 1, max: 100
            DocumentTitleColumnName => 'MyColumnName',    # min: 1, max: 100
            FieldMappings           => [
              {
                DataSourceFieldName =>
                  'MyDataSourceFieldName',                # min: 1, max: 100
                IndexFieldName =>
                  'MyIndexFieldName',    # min: 1, max: 30; OPTIONAL
                DateFieldFormat =>
                  'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
              },
              ...
            ],    # min: 1, max: 100; OPTIONAL
          },
          ConnectionConfiguration => {
            DatabaseHost => 'MyDatabaseHost',    # min: 1, max: 253
            DatabaseName => 'MyDatabaseName',    # min: 1, max: 100
            DatabasePort => 1,                   # min: 1, max: 65535
            SecretArn    => 'MySecretArn',       # min: 1, max: 1284
            TableName    => 'MyTableName',       # min: 1, max: 100

          },
          DatabaseEngineType => 'RDS_AURORA_MYSQL'
          , # values: RDS_AURORA_MYSQL, RDS_AURORA_POSTGRESQL, RDS_MYSQL, RDS_POSTGRESQL
          AclConfiguration => {
            AllowedGroupsColumnName => 'MyColumnName',    # min: 1, max: 100

          },    # OPTIONAL
          SqlConfiguration => {
            QueryIdentifiersEnclosingOption =>
              'DOUBLE_QUOTES',    # values: DOUBLE_QUOTES, NONE; OPTIONAL
          },    # OPTIONAL
          VpcConfiguration => {
            SecurityGroupIds => [
              'MyVpcSecurityGroupId', ...    # min: 1, max: 200
            ],    # min: 1, max: 10
            SubnetIds => [
              'MySubnetId', ...    # min: 1, max: 200
            ],    # min: 1, max: 6

          },    # OPTIONAL
        },    # OPTIONAL
        GoogleDriveConfiguration => {
          SecretArn        => 'MySecretArn',    # min: 1, max: 1284
          ExcludeMimeTypes => [
            'MyMimeType', ...                   # min: 1, max: 256
          ],    # max: 30; OPTIONAL
          ExcludeSharedDrives => [
            'MySharedDriveId', ...    # min: 1, max: 256
          ],    # max: 100; OPTIONAL
          ExcludeUserAccounts => [
            'MyUserAccount', ...    # min: 1, max: 256
          ],    # max: 100; OPTIONAL
          ExclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 150
          ],    # max: 100; OPTIONAL
          FieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName  => 'MyIndexFieldName', # min: 1, max: 30; OPTIONAL
              DateFieldFormat =>
                'MyDataSourceDateFieldFormat',       # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          InclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 150
          ],    # max: 100; OPTIONAL
        },    # OPTIONAL
        OneDriveConfiguration => {
          OneDriveUsers => {
            OneDriveUserList => [
              'MyOneDriveUser', ...    # min: 1, max: 256
            ],    # min: 1, max: 100; OPTIONAL
            OneDriveUserS3Path => {
              Bucket => 'MyS3BucketName',    # min: 3, max: 63
              Key    => 'MyS3ObjectKey',     # min: 1, max: 1024

            },    # OPTIONAL
          },
          SecretArn          => 'MySecretArn',       # min: 1, max: 1284
          TenantDomain       => 'MyTenantDomain',    # min: 1, max: 256
          DisableLocalGroups => 1,                   # OPTIONAL
          ExclusionPatterns  => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...                                      # min: 1, max: 150
          ],    # max: 100; OPTIONAL
          FieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName  => 'MyIndexFieldName', # min: 1, max: 30; OPTIONAL
              DateFieldFormat =>
                'MyDataSourceDateFieldFormat',       # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          InclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 150
          ],    # max: 100; OPTIONAL
        },    # OPTIONAL
        S3Configuration => {
          BucketName                     => 'MyS3BucketName',  # min: 3, max: 63
          AccessControlListConfiguration => {
            KeyPath => 'MyS3ObjectKey',    # min: 1, max: 1024
          },    # OPTIONAL
          DocumentsMetadataConfiguration => {
            S3Prefix => 'MyS3ObjectKey',    # min: 1, max: 1024
          },    # OPTIONAL
          ExclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 150
          ],    # max: 100; OPTIONAL
          InclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 150
          ],    # max: 100; OPTIONAL
          InclusionPrefixes => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 150
          ],    # max: 100; OPTIONAL
        },    # OPTIONAL
        SalesforceConfiguration => {
          SecretArn                => 'MySecretArn',    # min: 1, max: 1284
          ServerUrl                => 'MyUrl',          # min: 1, max: 2048
          ChatterFeedConfiguration => {
            DocumentDataFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
            DocumentTitleFieldName =>
              'MyDataSourceFieldName',                        # min: 1, max: 100
            FieldMappings => [
              {
                DataSourceFieldName =>
                  'MyDataSourceFieldName',                    # min: 1, max: 100
                IndexFieldName =>
                  'MyIndexFieldName',    # min: 1, max: 30; OPTIONAL
                DateFieldFormat =>
                  'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
              },
              ...
            ],    # min: 1, max: 100; OPTIONAL
            IncludeFilterTypes => [
              'ACTIVE_USER', ...    # values: ACTIVE_USER, STANDARD_USER
            ],    # min: 1, max: 2; OPTIONAL
          },    # OPTIONAL
          CrawlAttachments              => 1,    # OPTIONAL
          ExcludeAttachmentFilePatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...                                  # min: 1, max: 150
          ],    # max: 100; OPTIONAL
          IncludeAttachmentFilePatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 150
          ],    # max: 100; OPTIONAL
          KnowledgeArticleConfiguration => {
            IncludedStates => [
              'DRAFT', ...    # values: DRAFT, PUBLISHED, ARCHIVED
            ],    # min: 1, max: 3
            CustomKnowledgeArticleTypeConfigurations => [
              {
                DocumentDataFieldName =>
                  'MyDataSourceFieldName',    # min: 1, max: 100
                Name => 'MySalesforceCustomKnowledgeArticleTypeName'
                ,                             # min: 1, max: 100
                DocumentTitleFieldName =>
                  'MyDataSourceFieldName',    # min: 1, max: 100
                FieldMappings => [
                  {
                    DataSourceFieldName =>
                      'MyDataSourceFieldName',    # min: 1, max: 100
                    IndexFieldName =>
                      'MyIndexFieldName',         # min: 1, max: 30; OPTIONAL
                    DateFieldFormat =>
                      'MyDataSourceDateFieldFormat', # min: 4, max: 40; OPTIONAL
                  },
                  ...
                ],    # min: 1, max: 100; OPTIONAL
              },
              ...
            ],    # min: 1, max: 10; OPTIONAL
            StandardKnowledgeArticleTypeConfiguration => {
              DocumentDataFieldName =>
                'MyDataSourceFieldName',    # min: 1, max: 100
              DocumentTitleFieldName =>
                'MyDataSourceFieldName',    # min: 1, max: 100
              FieldMappings => [
                {
                  DataSourceFieldName =>
                    'MyDataSourceFieldName',    # min: 1, max: 100
                  IndexFieldName =>
                    'MyIndexFieldName',         # min: 1, max: 30; OPTIONAL
                  DateFieldFormat =>
                    'MyDataSourceDateFieldFormat',   # min: 4, max: 40; OPTIONAL
                },
                ...
              ],    # min: 1, max: 100; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          StandardObjectAttachmentConfiguration => {
            DocumentTitleFieldName =>
              'MyDataSourceFieldName',    # min: 1, max: 100
            FieldMappings => [
              {
                DataSourceFieldName =>
                  'MyDataSourceFieldName',    # min: 1, max: 100
                IndexFieldName =>
                  'MyIndexFieldName',         # min: 1, max: 30; OPTIONAL
                DateFieldFormat =>
                  'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
              },
              ...
            ],    # min: 1, max: 100; OPTIONAL
          },    # OPTIONAL
          StandardObjectConfigurations => [
            {
              DocumentDataFieldName =>
                'MyDataSourceFieldName',    # min: 1, max: 100
              Name => 'ACCOUNT'
              , # values: ACCOUNT, CAMPAIGN, CASE, CONTACT, CONTRACT, DOCUMENT, GROUP, IDEA, LEAD, OPPORTUNITY, PARTNER, PRICEBOOK, PRODUCT, PROFILE, SOLUTION, TASK, USER
              DocumentTitleFieldName =>
                'MyDataSourceFieldName',    # min: 1, max: 100
              FieldMappings => [
                {
                  DataSourceFieldName =>
                    'MyDataSourceFieldName',    # min: 1, max: 100
                  IndexFieldName =>
                    'MyIndexFieldName',         # min: 1, max: 30; OPTIONAL
                  DateFieldFormat =>
                    'MyDataSourceDateFieldFormat',   # min: 4, max: 40; OPTIONAL
                },
                ...
              ],    # min: 1, max: 100; OPTIONAL
            },
            ...
          ],    # min: 1, max: 17; OPTIONAL
        },    # OPTIONAL
        ServiceNowConfiguration => {
          HostUrl                => 'MyServiceNowHostUrl',   # min: 1, max: 2048
          SecretArn              => 'MySecretArn',           # min: 1, max: 1284
          ServiceNowBuildVersion => 'LONDON',    # values: LONDON, OTHERS
          AuthenticationType     =>
            'HTTP_BASIC',    # values: HTTP_BASIC, OAUTH2; OPTIONAL
          KnowledgeArticleConfiguration => {
            DocumentDataFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
            CrawlAttachments      => 1,                       # OPTIONAL
            DocumentTitleFieldName =>
              'MyDataSourceFieldName',                        # min: 1, max: 100
            ExcludeAttachmentFilePatterns => [
              'MyDataSourceInclusionsExclusionsStringsMember',
              ...                                             # min: 1, max: 150
            ],    # max: 100; OPTIONAL
            FieldMappings => [
              {
                DataSourceFieldName =>
                  'MyDataSourceFieldName',    # min: 1, max: 100
                IndexFieldName =>
                  'MyIndexFieldName',         # min: 1, max: 30; OPTIONAL
                DateFieldFormat =>
                  'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
              },
              ...
            ],    # min: 1, max: 100; OPTIONAL
            FilterQuery => 'MyServiceNowKnowledgeArticleFilterQuery'
            ,     # min: 1, max: 2048; OPTIONAL
            IncludeAttachmentFilePatterns => [
              'MyDataSourceInclusionsExclusionsStringsMember',
              ...    # min: 1, max: 150
            ],    # max: 100; OPTIONAL
          },    # OPTIONAL
          ServiceCatalogConfiguration => {
            DocumentDataFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
            CrawlAttachments      => 1,                       # OPTIONAL
            DocumentTitleFieldName =>
              'MyDataSourceFieldName',                        # min: 1, max: 100
            ExcludeAttachmentFilePatterns => [
              'MyDataSourceInclusionsExclusionsStringsMember',
              ...                                             # min: 1, max: 150
            ],    # max: 100; OPTIONAL
            FieldMappings => [
              {
                DataSourceFieldName =>
                  'MyDataSourceFieldName',    # min: 1, max: 100
                IndexFieldName =>
                  'MyIndexFieldName',         # min: 1, max: 30; OPTIONAL
                DateFieldFormat =>
                  'MyDataSourceDateFieldFormat',    # min: 4, max: 40; OPTIONAL
              },
              ...
            ],    # min: 1, max: 100; OPTIONAL
            IncludeAttachmentFilePatterns => [
              'MyDataSourceInclusionsExclusionsStringsMember',
              ...    # min: 1, max: 150
            ],    # max: 100; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        SharePointConfiguration => {
          SecretArn         => 'MySecretArn',        # min: 1, max: 1284
          SharePointVersion => 'SHAREPOINT_ONLINE',  # values: SHAREPOINT_ONLINE
          Urls              => [
            'MyUrl', ...                             # min: 1, max: 2048
          ],    # min: 1, max: 100
          CrawlAttachments       => 1,                        # OPTIONAL
          DisableLocalGroups     => 1,                        # OPTIONAL
          DocumentTitleFieldName => 'MyDataSourceFieldName',  # min: 1, max: 100
          ExclusionPatterns      => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...                                               # min: 1, max: 150
          ],    # max: 100; OPTIONAL
          FieldMappings => [
            {
              DataSourceFieldName => 'MyDataSourceFieldName', # min: 1, max: 100
              IndexFieldName  => 'MyIndexFieldName', # min: 1, max: 30; OPTIONAL
              DateFieldFormat =>
                'MyDataSourceDateFieldFormat',       # min: 4, max: 40; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
          InclusionPatterns => [
            'MyDataSourceInclusionsExclusionsStringsMember',
            ...    # min: 1, max: 150
          ],    # max: 100; OPTIONAL
          UseChangeLog     => 1,    # OPTIONAL
          VpcConfiguration => {
            SecurityGroupIds => [
              'MyVpcSecurityGroupId', ...    # min: 1, max: 200
            ],    # min: 1, max: 10
            SubnetIds => [
              'MySubnetId', ...    # min: 1, max: 200
            ],    # min: 1, max: 6

          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Description => 'MyDescription',     # OPTIONAL
      RoleArn     => 'MyRoleArn',         # OPTIONAL
      Schedule    => 'MyScanSchedule',    # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Id = $CreateDataSourceResponse->Id;

    # Returns a L<Paws::Kendra::CreateDataSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/CreateDataSource>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A token that you provide to identify the request to create a data
source. Multiple calls to the C<CreateDataSource> operation with the
same client token will create only one data source.



=head2 Configuration => L<Paws::Kendra::DataSourceConfiguration>

The connector configuration information that is required to access the
repository.

You can't specify the C<Configuration> parameter when the C<Type>
parameter is set to C<CUSTOM>. If you do, you receive a
C<ValidationException> exception.

The C<Configuration> parameter is required for all other data sources.



=head2 Description => Str

A description for the data source.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index that should be associated with this data
source.



=head2 B<REQUIRED> Name => Str

A unique name for the data source. A data source name can't be changed
without deleting and recreating the data source.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of a role with permission to access the
data source. For more information, see IAM Roles for Amazon Kendra
(https://docs.aws.amazon.com/kendra/latest/dg/iam-roles.html).

You can't specify the C<RoleArn> parameter when the C<Type> parameter
is set to C<CUSTOM>. If you do, you receive a C<ValidationException>
exception.

The C<RoleArn> parameter is required for all other data sources.



=head2 Schedule => Str

Sets the frequency that Amazon Kendra will check the documents in your
repository and update the index. If you don't set a schedule Amazon
Kendra will not periodically update the index. You can call the
C<StartDataSourceSyncJob> operation to update the index.

You can't specify the C<Schedule> parameter when the C<Type> parameter
is set to C<CUSTOM>. If you do, you receive a C<ValidationException>
exception.



=head2 Tags => ArrayRef[L<Paws::Kendra::Tag>]

A list of key-value pairs that identify the data source. You can use
the tags to identify and organize your resources and to control access
to resources.



=head2 B<REQUIRED> Type => Str

The type of repository that contains the data source.

Valid values are: C<"S3">, C<"SHAREPOINT">, C<"DATABASE">, C<"SALESFORCE">, C<"ONEDRIVE">, C<"SERVICENOW">, C<"CUSTOM">, C<"CONFLUENCE">, C<"GOOGLEDRIVE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataSource in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

