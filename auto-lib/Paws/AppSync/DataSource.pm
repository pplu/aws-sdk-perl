package Paws::AppSync::DataSource;
  use Moose;
  has DataSourceArn => (is => 'ro', isa => 'Str', request_name => 'dataSourceArn', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has DynamodbConfig => (is => 'ro', isa => 'Paws::AppSync::DynamodbDataSourceConfig', request_name => 'dynamodbConfig', traits => ['NameInRequest']);
  has ElasticsearchConfig => (is => 'ro', isa => 'Paws::AppSync::ElasticsearchDataSourceConfig', request_name => 'elasticsearchConfig', traits => ['NameInRequest']);
  has HttpConfig => (is => 'ro', isa => 'Paws::AppSync::HttpDataSourceConfig', request_name => 'httpConfig', traits => ['NameInRequest']);
  has LambdaConfig => (is => 'ro', isa => 'Paws::AppSync::LambdaDataSourceConfig', request_name => 'lambdaConfig', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has RelationalDatabaseConfig => (is => 'ro', isa => 'Paws::AppSync::RelationalDatabaseDataSourceConfig', request_name => 'relationalDatabaseConfig', traits => ['NameInRequest']);
  has ServiceRoleArn => (is => 'ro', isa => 'Str', request_name => 'serviceRoleArn', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::DataSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppSync::DataSource object:

  $service_obj->Method(Att1 => { DataSourceArn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppSync::DataSource object:

  $result = $service_obj->Method(...);
  $result->Att1->DataSourceArn

=head1 DESCRIPTION

Describes a data source.

=head1 ATTRIBUTES


=head2 DataSourceArn => Str

  The data source ARN.


=head2 Description => Str

  The description of the data source.


=head2 DynamodbConfig => L<Paws::AppSync::DynamodbDataSourceConfig>

  Amazon DynamoDB settings.


=head2 ElasticsearchConfig => L<Paws::AppSync::ElasticsearchDataSourceConfig>

  Amazon Elasticsearch Service settings.


=head2 HttpConfig => L<Paws::AppSync::HttpDataSourceConfig>

  HTTP endpoint settings.


=head2 LambdaConfig => L<Paws::AppSync::LambdaDataSourceConfig>

  AWS Lambda settings.


=head2 Name => Str

  The name of the data source.


=head2 RelationalDatabaseConfig => L<Paws::AppSync::RelationalDatabaseDataSourceConfig>

  Relational database settings.


=head2 ServiceRoleArn => Str

  The AWS IAM service role ARN for the data source. The system assumes
this role when accessing the data source.


=head2 Type => Str

  The type of the data source.

=over

=item *

B<AMAZON_DYNAMODB>: The data source is an Amazon DynamoDB table.

=item *

B<AMAZON_ELASTICSEARCH>: The data source is an Amazon Elasticsearch
Service domain.

=item *

B<AWS_LAMBDA>: The data source is an AWS Lambda function.

=item *

B<NONE>: There is no data source. This type is used when you wish to
invoke a GraphQL operation without connecting to a data source, such as
performing data transformation with resolvers or triggering a
subscription to be invoked from a mutation.

=item *

B<HTTP>: The data source is an HTTP endpoint.

=item *

B<RELATIONAL_DATABASE>: The data source is a relational database.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

