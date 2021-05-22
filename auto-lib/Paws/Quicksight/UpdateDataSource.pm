
package Paws::Quicksight::UpdateDataSource;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has Credentials => (is => 'ro', isa => 'Paws::Quicksight::DataSourceCredentials');
  has DataSourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DataSourceId', required => 1);
  has DataSourceParameters => (is => 'ro', isa => 'Paws::Quicksight::DataSourceParameters');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SslProperties => (is => 'ro', isa => 'Paws::Quicksight::SslProperties');
  has VpcConnectionProperties => (is => 'ro', isa => 'Paws::Quicksight::VpcConnectionProperties');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDataSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/data-sources/{DataSourceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::UpdateDataSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::UpdateDataSource - Arguments for method UpdateDataSource on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDataSource on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method UpdateDataSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDataSource.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $UpdateDataSourceResponse = $quicksight->UpdateDataSource(
      AwsAccountId => 'MyAwsAccountId',
      DataSourceId => 'MyResourceId',
      Name         => 'MyResourceName',
      Credentials  => {
        CopySourceArn  => 'MyCopySourceArn',    # OPTIONAL
        CredentialPair => {
          Password                      => 'MyPassword',    # min: 1, max: 1024
          Username                      => 'MyUsername',    # min: 1, max: 64
          AlternateDataSourceParameters => [
            {
              AmazonElasticsearchParameters => {
                Domain => 'MyDomain',                       # min: 1, max: 64

              },    # OPTIONAL
              AthenaParameters => {
                WorkGroup => 'MyWorkGroup',    # min: 1, max: 128; OPTIONAL
              },    # OPTIONAL
              AuroraParameters => {
                Database => 'MyDatabase',    # min: 1, max: 128
                Host     => 'MyHost',        # min: 1, max: 256; OPTIONAL
                Port     => 1,               # min: 1, max: 65535

              },    # OPTIONAL
              AuroraPostgreSqlParameters => {
                Database => 'MyDatabase',    # min: 1, max: 128
                Host     => 'MyHost',        # min: 1, max: 256; OPTIONAL
                Port     => 1,               # min: 1, max: 65535

              },    # OPTIONAL
              AwsIotAnalyticsParameters => {
                DataSetName => 'MyDataSetName',    # min: 1, max: 128

              },    # OPTIONAL
              JiraParameters => {
                SiteBaseUrl => 'MySiteBaseUrl',    # min: 1, max: 1024

              },    # OPTIONAL
              MariaDbParameters => {
                Database => 'MyDatabase',    # min: 1, max: 128
                Host     => 'MyHost',        # min: 1, max: 256; OPTIONAL
                Port     => 1,               # min: 1, max: 65535

              },    # OPTIONAL
              MySqlParameters => {
                Database => 'MyDatabase',    # min: 1, max: 128
                Host     => 'MyHost',        # min: 1, max: 256; OPTIONAL
                Port     => 1,               # min: 1, max: 65535

              },    # OPTIONAL
              OracleParameters => {
                Database => 'MyDatabase',    # min: 1, max: 128
                Host     => 'MyHost',        # min: 1, max: 256; OPTIONAL
                Port     => 1,               # min: 1, max: 65535

              },    # OPTIONAL
              PostgreSqlParameters => {
                Database => 'MyDatabase',    # min: 1, max: 128
                Host     => 'MyHost',        # min: 1, max: 256; OPTIONAL
                Port     => 1,               # min: 1, max: 65535

              },    # OPTIONAL
              PrestoParameters => {
                Catalog => 'MyCatalog',    # max: 128
                Host    => 'MyHost',       # min: 1, max: 256; OPTIONAL
                Port    => 1,              # min: 1, max: 65535

              },    # OPTIONAL
              RdsParameters => {
                Database   => 'MyDatabase',      # min: 1, max: 128
                InstanceId => 'MyInstanceId',    # min: 1, max: 64

              },    # OPTIONAL
              RedshiftParameters => {
                Database  => 'MyDatabase',     # min: 1, max: 128
                ClusterId => 'MyClusterId',    # min: 1, max: 64; OPTIONAL
                Host      => 'MyHost',         # min: 1, max: 256; OPTIONAL
                Port      => 1,                # max: 65535; OPTIONAL
              },    # OPTIONAL
              S3Parameters => {
                ManifestFileLocation => {
                  Bucket => 'MyS3Bucket',    # min: 1, max: 1024
                  Key    => 'MyS3Key',       # min: 1, max: 1024

                },

              },    # OPTIONAL
              ServiceNowParameters => {
                SiteBaseUrl => 'MySiteBaseUrl',    # min: 1, max: 1024

              },    # OPTIONAL
              SnowflakeParameters => {
                Database  => 'MyDatabase',     # min: 1, max: 128
                Host      => 'MyHost',         # min: 1, max: 256; OPTIONAL
                Warehouse => 'MyWarehouse',    # max: 128

              },    # OPTIONAL
              SparkParameters => {
                Host => 'MyHost',    # min: 1, max: 256; OPTIONAL
                Port => 1,           # min: 1, max: 65535

              },    # OPTIONAL
              SqlServerParameters => {
                Database => 'MyDatabase',    # min: 1, max: 128
                Host     => 'MyHost',        # min: 1, max: 256; OPTIONAL
                Port     => 1,               # min: 1, max: 65535

              },    # OPTIONAL
              TeradataParameters => {
                Database => 'MyDatabase',    # min: 1, max: 128
                Host     => 'MyHost',        # min: 1, max: 256; OPTIONAL
                Port     => 1,               # min: 1, max: 65535

              },    # OPTIONAL
              TwitterParameters => {
                MaxRows => 1,            # min: 1
                Query   => 'MyQuery',    # min: 1, max: 256

              },    # OPTIONAL
            },
            ...
          ],        # min: 1, max: 50; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      DataSourceParameters => {
        AmazonElasticsearchParameters => {
          Domain => 'MyDomain',    # min: 1, max: 64

        },    # OPTIONAL
        AthenaParameters => {
          WorkGroup => 'MyWorkGroup',    # min: 1, max: 128; OPTIONAL
        },    # OPTIONAL
        AuroraParameters => {
          Database => 'MyDatabase',    # min: 1, max: 128
          Host     => 'MyHost',        # min: 1, max: 256; OPTIONAL
          Port     => 1,               # min: 1, max: 65535

        },    # OPTIONAL
        AuroraPostgreSqlParameters => {
          Database => 'MyDatabase',    # min: 1, max: 128
          Host     => 'MyHost',        # min: 1, max: 256; OPTIONAL
          Port     => 1,               # min: 1, max: 65535

        },    # OPTIONAL
        AwsIotAnalyticsParameters => {
          DataSetName => 'MyDataSetName',    # min: 1, max: 128

        },    # OPTIONAL
        JiraParameters => {
          SiteBaseUrl => 'MySiteBaseUrl',    # min: 1, max: 1024

        },    # OPTIONAL
        MariaDbParameters => {
          Database => 'MyDatabase',    # min: 1, max: 128
          Host     => 'MyHost',        # min: 1, max: 256; OPTIONAL
          Port     => 1,               # min: 1, max: 65535

        },    # OPTIONAL
        MySqlParameters => {
          Database => 'MyDatabase',    # min: 1, max: 128
          Host     => 'MyHost',        # min: 1, max: 256; OPTIONAL
          Port     => 1,               # min: 1, max: 65535

        },    # OPTIONAL
        OracleParameters => {
          Database => 'MyDatabase',    # min: 1, max: 128
          Host     => 'MyHost',        # min: 1, max: 256; OPTIONAL
          Port     => 1,               # min: 1, max: 65535

        },    # OPTIONAL
        PostgreSqlParameters => {
          Database => 'MyDatabase',    # min: 1, max: 128
          Host     => 'MyHost',        # min: 1, max: 256; OPTIONAL
          Port     => 1,               # min: 1, max: 65535

        },    # OPTIONAL
        PrestoParameters => {
          Catalog => 'MyCatalog',    # max: 128
          Host    => 'MyHost',       # min: 1, max: 256; OPTIONAL
          Port    => 1,              # min: 1, max: 65535

        },    # OPTIONAL
        RdsParameters => {
          Database   => 'MyDatabase',      # min: 1, max: 128
          InstanceId => 'MyInstanceId',    # min: 1, max: 64

        },    # OPTIONAL
        RedshiftParameters => {
          Database  => 'MyDatabase',     # min: 1, max: 128
          ClusterId => 'MyClusterId',    # min: 1, max: 64; OPTIONAL
          Host      => 'MyHost',         # min: 1, max: 256; OPTIONAL
          Port      => 1,                # max: 65535; OPTIONAL
        },    # OPTIONAL
        S3Parameters => {
          ManifestFileLocation => {
            Bucket => 'MyS3Bucket',    # min: 1, max: 1024
            Key    => 'MyS3Key',       # min: 1, max: 1024

          },

        },    # OPTIONAL
        ServiceNowParameters => {
          SiteBaseUrl => 'MySiteBaseUrl',    # min: 1, max: 1024

        },    # OPTIONAL
        SnowflakeParameters => {
          Database  => 'MyDatabase',     # min: 1, max: 128
          Host      => 'MyHost',         # min: 1, max: 256; OPTIONAL
          Warehouse => 'MyWarehouse',    # max: 128

        },    # OPTIONAL
        SparkParameters => {
          Host => 'MyHost',    # min: 1, max: 256; OPTIONAL
          Port => 1,           # min: 1, max: 65535

        },    # OPTIONAL
        SqlServerParameters => {
          Database => 'MyDatabase',    # min: 1, max: 128
          Host     => 'MyHost',        # min: 1, max: 256; OPTIONAL
          Port     => 1,               # min: 1, max: 65535

        },    # OPTIONAL
        TeradataParameters => {
          Database => 'MyDatabase',    # min: 1, max: 128
          Host     => 'MyHost',        # min: 1, max: 256; OPTIONAL
          Port     => 1,               # min: 1, max: 65535

        },    # OPTIONAL
        TwitterParameters => {
          MaxRows => 1,            # min: 1
          Query   => 'MyQuery',    # min: 1, max: 256

        },    # OPTIONAL
      },    # OPTIONAL
      SslProperties => {
        DisableSsl => 1,    # OPTIONAL
      },    # OPTIONAL
      VpcConnectionProperties => {
        VpcConnectionArn => 'MyArn',

      },    # OPTIONAL
    );

    # Results:
    my $Arn          = $UpdateDataSourceResponse->Arn;
    my $DataSourceId = $UpdateDataSourceResponse->DataSourceId;
    my $RequestId    = $UpdateDataSourceResponse->RequestId;
    my $Status       = $UpdateDataSourceResponse->Status;
    my $UpdateStatus = $UpdateDataSourceResponse->UpdateStatus;

    # Returns a L<Paws::Quicksight::UpdateDataSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/UpdateDataSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The AWS account ID.



=head2 Credentials => L<Paws::Quicksight::DataSourceCredentials>

The credentials that QuickSight that uses to connect to your underlying
source. Currently, only credentials based on user name and password are
supported.



=head2 B<REQUIRED> DataSourceId => Str

The ID of the data source. This ID is unique per AWS Region for each
AWS account.



=head2 DataSourceParameters => L<Paws::Quicksight::DataSourceParameters>

The parameters that QuickSight uses to connect to your underlying
source.



=head2 B<REQUIRED> Name => Str

A display name for the data source.



=head2 SslProperties => L<Paws::Quicksight::SslProperties>

Secure Socket Layer (SSL) properties that apply when QuickSight
connects to your underlying source.



=head2 VpcConnectionProperties => L<Paws::Quicksight::VpcConnectionProperties>

Use this parameter only when you want QuickSight to use a VPC
connection when connecting to your underlying source.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDataSource in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

