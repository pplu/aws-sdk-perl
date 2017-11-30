package Paws::AppSync;
  use Moose;
  sub service { 'appsync' }
  sub version { '2017-07-25' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateApiKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::CreateApiKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::CreateDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateGraphqlApi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::CreateGraphqlApi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResolver {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::CreateResolver', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::CreateType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApiKey {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::DeleteApiKey', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::DeleteDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteGraphqlApi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::DeleteGraphqlApi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResolver {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::DeleteResolver', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::DeleteType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::GetDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGraphqlApi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::GetGraphqlApi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIntrospectionSchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::GetIntrospectionSchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetResolver {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::GetResolver', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSchemaCreationStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::GetSchemaCreationStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::GetType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApiKeys {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::ListApiKeys', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataSources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::ListDataSources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListGraphqlApis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::ListGraphqlApis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResolvers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::ListResolvers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTypes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::ListTypes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartSchemaCreation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::StartSchemaCreation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::UpdateDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGraphqlApi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::UpdateGraphqlApi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateResolver {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::UpdateResolver', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateType {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppSync::UpdateType', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateApiKey CreateDataSource CreateGraphqlApi CreateResolver CreateType DeleteApiKey DeleteDataSource DeleteGraphqlApi DeleteResolver DeleteType GetDataSource GetGraphqlApi GetIntrospectionSchema GetResolver GetSchemaCreationStatus GetType ListApiKeys ListDataSources ListGraphqlApis ListResolvers ListTypes StartSchemaCreation UpdateDataSource UpdateGraphqlApi UpdateResolver UpdateType / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync - Perl Interface to AWS AWS AppSync

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('AppSync');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS AppSync provides API actions for creating and interacting with data
sources using GraphQL from your application.

=head1 METHODS

=head2 CreateApiKey(ApiId => Str, [Description => Str])

Each argument is described in detail in: L<Paws::AppSync::CreateApiKey>

Returns: a L<Paws::AppSync::CreateApiKeyResponse> instance

Creates a unique key that you can distribute to clients who are
executing your API.


=head2 CreateDataSource(ApiId => Str, Name => Str, Type => Str, [Description => Str, DynamodbConfig => L<Paws::AppSync::DynamodbDataSourceConfig>, ElasticsearchConfig => L<Paws::AppSync::ElasticsearchDataSourceConfig>, LambdaConfig => L<Paws::AppSync::LambdaDataSourceConfig>, ServiceRoleArn => Str])

Each argument is described in detail in: L<Paws::AppSync::CreateDataSource>

Returns: a L<Paws::AppSync::CreateDataSourceResponse> instance

Creates a C<DataSource> object.


=head2 CreateGraphqlApi(AuthenticationType => Str, Name => Str, [UserPoolConfig => L<Paws::AppSync::UserPoolConfig>])

Each argument is described in detail in: L<Paws::AppSync::CreateGraphqlApi>

Returns: a L<Paws::AppSync::CreateGraphqlApiResponse> instance

Creates a C<GraphqlApi> object.


=head2 CreateResolver(ApiId => Str, DataSourceName => Str, FieldName => Str, RequestMappingTemplate => Str, TypeName => Str, [ResponseMappingTemplate => Str])

Each argument is described in detail in: L<Paws::AppSync::CreateResolver>

Returns: a L<Paws::AppSync::CreateResolverResponse> instance

Creates a C<Resolver> object.

A resolver converts incoming requests into a format that a data source
can understand and converts the data source's responses into GraphQL.


=head2 CreateType(ApiId => Str, Definition => Str, Format => Str)

Each argument is described in detail in: L<Paws::AppSync::CreateType>

Returns: a L<Paws::AppSync::CreateTypeResponse> instance

Creates a C<Type> object.


=head2 DeleteApiKey(ApiId => Str, Id => Str)

Each argument is described in detail in: L<Paws::AppSync::DeleteApiKey>

Returns: a L<Paws::AppSync::DeleteApiKeyResponse> instance

Deletes an API key.


=head2 DeleteDataSource(ApiId => Str, Name => Str)

Each argument is described in detail in: L<Paws::AppSync::DeleteDataSource>

Returns: a L<Paws::AppSync::DeleteDataSourceResponse> instance

Deletes a C<DataSource> object.


=head2 DeleteGraphqlApi(ApiId => Str)

Each argument is described in detail in: L<Paws::AppSync::DeleteGraphqlApi>

Returns: a L<Paws::AppSync::DeleteGraphqlApiResponse> instance

Deletes a C<GraphqlApi> object.


=head2 DeleteResolver(ApiId => Str, FieldName => Str, TypeName => Str)

Each argument is described in detail in: L<Paws::AppSync::DeleteResolver>

Returns: a L<Paws::AppSync::DeleteResolverResponse> instance

Deletes a C<Resolver> object.


=head2 DeleteType(ApiId => Str, TypeName => Str)

Each argument is described in detail in: L<Paws::AppSync::DeleteType>

Returns: a L<Paws::AppSync::DeleteTypeResponse> instance

Deletes a C<Type> object.


=head2 GetDataSource(ApiId => Str, Name => Str)

Each argument is described in detail in: L<Paws::AppSync::GetDataSource>

Returns: a L<Paws::AppSync::GetDataSourceResponse> instance

Retrieves a C<DataSource> object.


=head2 GetGraphqlApi(ApiId => Str)

Each argument is described in detail in: L<Paws::AppSync::GetGraphqlApi>

Returns: a L<Paws::AppSync::GetGraphqlApiResponse> instance

Retrieves a C<GraphqlApi> object.


=head2 GetIntrospectionSchema(ApiId => Str, Format => Str)

Each argument is described in detail in: L<Paws::AppSync::GetIntrospectionSchema>

Returns: a L<Paws::AppSync::GetIntrospectionSchemaResponse> instance

Retrieves the introspection schema for a GraphQL API.


=head2 GetResolver(ApiId => Str, FieldName => Str, TypeName => Str)

Each argument is described in detail in: L<Paws::AppSync::GetResolver>

Returns: a L<Paws::AppSync::GetResolverResponse> instance

Retrieves a C<Resolver> object.


=head2 GetSchemaCreationStatus(ApiId => Str)

Each argument is described in detail in: L<Paws::AppSync::GetSchemaCreationStatus>

Returns: a L<Paws::AppSync::GetSchemaCreationStatusResponse> instance

Retrieves the current status of a schema creation operation.


=head2 GetType(ApiId => Str, Format => Str, TypeName => Str)

Each argument is described in detail in: L<Paws::AppSync::GetType>

Returns: a L<Paws::AppSync::GetTypeResponse> instance

Retrieves a C<Type> object.


=head2 ListApiKeys(ApiId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::AppSync::ListApiKeys>

Returns: a L<Paws::AppSync::ListApiKeysResponse> instance

Lists the API keys for a given API.


=head2 ListDataSources(ApiId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::AppSync::ListDataSources>

Returns: a L<Paws::AppSync::ListDataSourcesResponse> instance

Lists the data sources for a given API.


=head2 ListGraphqlApis([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::AppSync::ListGraphqlApis>

Returns: a L<Paws::AppSync::ListGraphqlApisResponse> instance

Lists your GraphQL APIs.


=head2 ListResolvers(ApiId => Str, TypeName => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::AppSync::ListResolvers>

Returns: a L<Paws::AppSync::ListResolversResponse> instance

Lists the resolvers for a given API and type.


=head2 ListTypes(ApiId => Str, Format => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::AppSync::ListTypes>

Returns: a L<Paws::AppSync::ListTypesResponse> instance

Lists the types for a given API.


=head2 StartSchemaCreation(ApiId => Str, Definition => Str)

Each argument is described in detail in: L<Paws::AppSync::StartSchemaCreation>

Returns: a L<Paws::AppSync::StartSchemaCreationResponse> instance

Adds a new schema to your GraphQL API.

This operation is asynchronous. Use to determine when it has completed.


=head2 UpdateDataSource(ApiId => Str, Name => Str, Type => Str, [Description => Str, DynamodbConfig => L<Paws::AppSync::DynamodbDataSourceConfig>, ElasticsearchConfig => L<Paws::AppSync::ElasticsearchDataSourceConfig>, LambdaConfig => L<Paws::AppSync::LambdaDataSourceConfig>, ServiceRoleArn => Str])

Each argument is described in detail in: L<Paws::AppSync::UpdateDataSource>

Returns: a L<Paws::AppSync::UpdateDataSourceResponse> instance

Updates a C<DataSource> object.


=head2 UpdateGraphqlApi(ApiId => Str, Name => Str, [AuthenticationType => Str, UserPoolConfig => L<Paws::AppSync::UserPoolConfig>])

Each argument is described in detail in: L<Paws::AppSync::UpdateGraphqlApi>

Returns: a L<Paws::AppSync::UpdateGraphqlApiResponse> instance

Updates a C<GraphqlApi> object.


=head2 UpdateResolver(ApiId => Str, DataSourceName => Str, FieldName => Str, RequestMappingTemplate => Str, TypeName => Str, [ResponseMappingTemplate => Str])

Each argument is described in detail in: L<Paws::AppSync::UpdateResolver>

Returns: a L<Paws::AppSync::UpdateResolverResponse> instance

Updates a C<Resolver> object.


=head2 UpdateType(ApiId => Str, Format => Str, TypeName => Str, [Definition => Str])

Each argument is described in detail in: L<Paws::AppSync::UpdateType>

Returns: a L<Paws::AppSync::UpdateTypeResponse> instance

Updates a C<Type> object.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

