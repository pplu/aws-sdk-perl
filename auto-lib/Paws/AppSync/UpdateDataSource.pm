
package Paws::AppSync::UpdateDataSource;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DynamodbConfig => (is => 'ro', isa => 'Paws::AppSync::DynamodbDataSourceConfig', traits => ['NameInRequest'], request_name => 'dynamodbConfig');
  has ElasticsearchConfig => (is => 'ro', isa => 'Paws::AppSync::ElasticsearchDataSourceConfig', traits => ['NameInRequest'], request_name => 'elasticsearchConfig');
  has LambdaConfig => (is => 'ro', isa => 'Paws::AppSync::LambdaDataSourceConfig', traits => ['NameInRequest'], request_name => 'lambdaConfig');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has ServiceRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceRoleArn');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDataSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apis/{apiId}/datasources/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::UpdateDataSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::UpdateDataSource - Arguments for method UpdateDataSource on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDataSource on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method UpdateDataSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDataSource.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $UpdateDataSourceResponse = $appsync->UpdateDataSource(
      ApiId          => 'MyString',
      Name           => 'MyResourceName',
      Type           => 'AWS_LAMBDA',
      Description    => 'MyString',         # OPTIONAL
      DynamodbConfig => {
        awsRegion            => 'MyString',
        tableName            => 'MyString',
        useCallerCredentials => 1,            # OPTIONAL
      },    # OPTIONAL
      ElasticsearchConfig => {
        endpoint  => 'MyString',
        awsRegion => 'MyString',

      },    # OPTIONAL
      LambdaConfig => {
        lambdaFunctionArn => 'MyString',

      },    # OPTIONAL
      ServiceRoleArn => 'MyString',    # OPTIONAL
    );

    # Results:
    my $DataSource = $UpdateDataSourceResponse->DataSource;

    # Returns a L<Paws::AppSync::UpdateDataSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/UpdateDataSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The API ID.



=head2 Description => Str

The new description for the data source.



=head2 DynamodbConfig => L<Paws::AppSync::DynamodbDataSourceConfig>

The new DynamoDB configuration.



=head2 ElasticsearchConfig => L<Paws::AppSync::ElasticsearchDataSourceConfig>

The new Elasticsearch configuration.



=head2 LambdaConfig => L<Paws::AppSync::LambdaDataSourceConfig>

The new Lambda configuration.



=head2 B<REQUIRED> Name => Str

The new name for the data source.



=head2 ServiceRoleArn => Str

The new service role ARN for the data source.



=head2 B<REQUIRED> Type => Str

The new data source type.

Valid values are: C<"AWS_LAMBDA">, C<"AMAZON_DYNAMODB">, C<"AMAZON_ELASTICSEARCH">, C<"NONE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDataSource in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

