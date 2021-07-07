
package Paws::Kendra::UpdateDataSource;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::Kendra::DataSourceConfiguration');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has Schedule => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDataSource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::UpdateDataSource - Arguments for method UpdateDataSource on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDataSource on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method UpdateDataSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDataSource.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    $kendra->UpdateDataSource(
      Id            => 'MyDataSourceId',
      IndexId       => 'MyIndexId',
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
      Description => 'MyDescription',       # OPTIONAL
      Name        => 'MyDataSourceName',    # OPTIONAL
      RoleArn     => 'MyRoleArn',           # OPTIONAL
      Schedule    => 'MyScanSchedule',      # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/UpdateDataSource>

=head1 ATTRIBUTES


=head2 Configuration => L<Paws::Kendra::DataSourceConfiguration>





=head2 Description => Str

The new description for the data source.



=head2 B<REQUIRED> Id => Str

The unique identifier of the data source to update.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index that contains the data source to update.



=head2 Name => Str

The name of the data source to update. The name of the data source
can't be updated. To rename a data source you must delete the data
source and re-create it.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the new role to use when the data
source is accessing resources on your behalf.



=head2 Schedule => Str

The new update schedule for the data source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDataSource in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

