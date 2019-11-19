
package Paws::AppSync::CreateDataSource;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppSync::Types qw/AppSync_RelationalDatabaseDataSourceConfig AppSync_DynamodbDataSourceConfig AppSync_HttpDataSourceConfig AppSync_LambdaDataSourceConfig AppSync_ElasticsearchDataSourceConfig/;
  has ApiId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has DynamodbConfig => (is => 'ro', isa => AppSync_DynamodbDataSourceConfig, predicate => 1);
  has ElasticsearchConfig => (is => 'ro', isa => AppSync_ElasticsearchDataSourceConfig, predicate => 1);
  has HttpConfig => (is => 'ro', isa => AppSync_HttpDataSourceConfig, predicate => 1);
  has LambdaConfig => (is => 'ro', isa => AppSync_LambdaDataSourceConfig, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has RelationalDatabaseConfig => (is => 'ro', isa => AppSync_RelationalDatabaseDataSourceConfig, predicate => 1);
  has ServiceRoleArn => (is => 'ro', isa => Str, predicate => 1);
  has Type => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateDataSource');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v1/apis/{apiId}/datasources');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AppSync::CreateDataSourceResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Type' => 1,
                    'Name' => 1,
                    'ApiId' => 1
                  },
  'NameInRequest' => {
                       'HttpConfig' => 'httpConfig',
                       'RelationalDatabaseConfig' => 'relationalDatabaseConfig',
                       'Type' => 'type',
                       'ElasticsearchConfig' => 'elasticsearchConfig',
                       'LambdaConfig' => 'lambdaConfig',
                       'ServiceRoleArn' => 'serviceRoleArn',
                       'Description' => 'description',
                       'Name' => 'name',
                       'DynamodbConfig' => 'dynamodbConfig'
                     },
  'types' => {
               'RelationalDatabaseConfig' => {
                                               'type' => 'AppSync_RelationalDatabaseDataSourceConfig',
                                               'class' => 'Paws::AppSync::RelationalDatabaseDataSourceConfig'
                                             },
               'Type' => {
                           'type' => 'Str'
                         },
               'HttpConfig' => {
                                 'type' => 'AppSync_HttpDataSourceConfig',
                                 'class' => 'Paws::AppSync::HttpDataSourceConfig'
                               },
               'Description' => {
                                  'type' => 'Str'
                                },
               'ServiceRoleArn' => {
                                     'type' => 'Str'
                                   },
               'LambdaConfig' => {
                                   'class' => 'Paws::AppSync::LambdaDataSourceConfig',
                                   'type' => 'AppSync_LambdaDataSourceConfig'
                                 },
               'ElasticsearchConfig' => {
                                          'class' => 'Paws::AppSync::ElasticsearchDataSourceConfig',
                                          'type' => 'AppSync_ElasticsearchDataSourceConfig'
                                        },
               'DynamodbConfig' => {
                                     'class' => 'Paws::AppSync::DynamodbDataSourceConfig',
                                     'type' => 'AppSync_DynamodbDataSourceConfig'
                                   },
               'Name' => {
                           'type' => 'Str'
                         },
               'ApiId' => {
                            'type' => 'Str'
                          }
             },
  'ParamInURI' => {
                    'ApiId' => 'apiId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::CreateDataSource - Arguments for method CreateDataSource on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataSource on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method CreateDataSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataSource.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $CreateDataSourceResponse = $appsync->CreateDataSource(
      ApiId          => 'MyString',
      Name           => 'MyResourceName',
      Type           => 'AWS_LAMBDA',
      Description    => 'MyString',         # OPTIONAL
      DynamodbConfig => {
        AwsRegion            => 'MyString',
        TableName            => 'MyString',
        UseCallerCredentials => 1,            # OPTIONAL
      },    # OPTIONAL
      ElasticsearchConfig => {
        AwsRegion => 'MyString',
        Endpoint  => 'MyString',

      },    # OPTIONAL
      HttpConfig => {
        AuthorizationConfig => {
          AuthorizationType => 'AWS_IAM',    # values: AWS_IAM
          AwsIamConfig      => {
            SigningRegion      => 'MyString',
            SigningServiceName => 'MyString',
          },                                 # OPTIONAL
        },    # OPTIONAL
        Endpoint => 'MyString',
      },    # OPTIONAL
      LambdaConfig => {
        LambdaFunctionArn => 'MyString',

      },    # OPTIONAL
      RelationalDatabaseConfig => {
        RdsHttpEndpointConfig => {
          AwsRegion           => 'MyString',
          AwsSecretStoreArn   => 'MyString',
          DatabaseName        => 'MyString',
          DbClusterIdentifier => 'MyString',
          Schema              => 'MyString',
        },    # OPTIONAL
        RelationalDatabaseSourceType =>
          'RDS_HTTP_ENDPOINT',    # values: RDS_HTTP_ENDPOINT; OPTIONAL
      },    # OPTIONAL
      ServiceRoleArn => 'MyString',    # OPTIONAL
    );

    # Results:
    my $DataSource = $CreateDataSourceResponse->DataSource;

    # Returns a L<Paws::AppSync::CreateDataSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/CreateDataSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API ID for the GraphQL API for the C<DataSource>.



=head2 Description => Str

A description of the C<DataSource>.



=head2 DynamodbConfig => AppSync_DynamodbDataSourceConfig

Amazon DynamoDB settings.



=head2 ElasticsearchConfig => AppSync_ElasticsearchDataSourceConfig

Amazon Elasticsearch Service settings.



=head2 HttpConfig => AppSync_HttpDataSourceConfig

HTTP endpoint settings.



=head2 LambdaConfig => AppSync_LambdaDataSourceConfig

AWS Lambda settings.



=head2 B<REQUIRED> Name => Str

A user-supplied name for the C<DataSource>.



=head2 RelationalDatabaseConfig => AppSync_RelationalDatabaseDataSourceConfig

Relational database settings.



=head2 ServiceRoleArn => Str

The AWS IAM service role ARN for the data source. The system assumes
this role when accessing the data source.



=head2 B<REQUIRED> Type => Str

The type of the C<DataSource>.

Valid values are: C<"AWS_LAMBDA">, C<"AMAZON_DYNAMODB">, C<"AMAZON_ELASTICSEARCH">, C<"NONE">, C<"HTTP">, C<"RELATIONAL_DATABASE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataSource in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

