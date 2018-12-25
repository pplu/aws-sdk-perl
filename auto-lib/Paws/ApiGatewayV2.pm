package Paws::ApiGatewayV2;
  use Moose;
  sub service { 'apigateway' }
  sub signing_name { 'apigateway' }
  sub version { '2018-11-29' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateApi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::CreateApi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateApiMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::CreateApiMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAuthorizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::CreateAuthorizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::CreateDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDomainName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::CreateDomainName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::CreateIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIntegrationResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::CreateIntegrationResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::CreateModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::CreateRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRouteResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::CreateRouteResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::CreateStage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::DeleteApi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApiMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::DeleteApiMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAuthorizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::DeleteAuthorizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::DeleteDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDomainName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::DeleteDomainName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::DeleteIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIntegrationResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::DeleteIntegrationResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::DeleteModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::DeleteRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRouteResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::DeleteRouteResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::DeleteStage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::GetApi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApiMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::GetApiMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApiMappings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::GetApiMappings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApis {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::GetApis', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAuthorizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::GetAuthorizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAuthorizers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::GetAuthorizers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::GetDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeployments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::GetDeployments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDomainName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::GetDomainName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDomainNames {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::GetDomainNames', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::GetIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIntegrationResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::GetIntegrationResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIntegrationResponses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::GetIntegrationResponses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetIntegrations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::GetIntegrations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::GetModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetModels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::GetModels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetModelTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::GetModelTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::GetRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRouteResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::GetRouteResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRouteResponses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::GetRouteResponses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRoutes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::GetRoutes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::GetStage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetStages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::GetStages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApi {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::UpdateApi', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApiMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::UpdateApiMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAuthorizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::UpdateAuthorizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::UpdateDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDomainName {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::UpdateDomainName', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIntegration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::UpdateIntegration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIntegrationResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::UpdateIntegrationResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::UpdateModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::UpdateRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRouteResponse {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::UpdateRouteResponse', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ApiGatewayV2::UpdateStage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllApis {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetApis(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetApis(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->GetApis(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub GetAllAuthorizers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetAuthorizers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetAuthorizers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->GetAuthorizers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub GetAllDeployments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetDeployments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetDeployments(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->GetDeployments(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub GetAllDomainNames {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetDomainNames(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetDomainNames(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->GetDomainNames(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub GetAllIntegrationResponses {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetIntegrationResponses(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetIntegrationResponses(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->GetIntegrationResponses(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub GetAllIntegrations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetIntegrations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetIntegrations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->GetIntegrations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub GetAllModels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetModels(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetModels(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->GetModels(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub GetAllRouteResponses {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetRouteResponses(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetRouteResponses(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->GetRouteResponses(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub GetAllRoutes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetRoutes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetRoutes(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->GetRoutes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }
  sub GetAllStages {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetStages(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetStages(@_, NextToken => $next_result->NextToken);
        push @{ $result->Items }, @{ $next_result->Items };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Items') foreach (@{ $result->Items });
        $result = $self->GetStages(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Items') foreach (@{ $result->Items });
    }

    return undef
  }


  sub operations { qw/CreateApi CreateApiMapping CreateAuthorizer CreateDeployment CreateDomainName CreateIntegration CreateIntegrationResponse CreateModel CreateRoute CreateRouteResponse CreateStage DeleteApi DeleteApiMapping DeleteAuthorizer DeleteDeployment DeleteDomainName DeleteIntegration DeleteIntegrationResponse DeleteModel DeleteRoute DeleteRouteResponse DeleteStage GetApi GetApiMapping GetApiMappings GetApis GetAuthorizer GetAuthorizers GetDeployment GetDeployments GetDomainName GetDomainNames GetIntegration GetIntegrationResponse GetIntegrationResponses GetIntegrations GetModel GetModels GetModelTemplate GetRoute GetRouteResponse GetRouteResponses GetRoutes GetStage GetStages UpdateApi UpdateApiMapping UpdateAuthorizer UpdateDeployment UpdateDomainName UpdateIntegration UpdateIntegrationResponse UpdateModel UpdateRoute UpdateRouteResponse UpdateStage / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2 - Perl Interface to AWS AmazonApiGatewayV2

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ApiGatewayV2');
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

Amazon API Gateway V2

For the AWS API documentation, see L<https://docs.aws.amazon.com/apigateway/>


=head1 METHODS

=head2 CreateApi

=over

=item Name => Str

=item ProtocolType => Str

=item RouteSelectionExpression => Str

=item [ApiKeySelectionExpression => Str]

=item [Description => Str]

=item [DisableSchemaValidation => Bool]

=item [Version => Str]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::CreateApi>

Returns: a L<Paws::ApiGatewayV2::CreateApiResponse> instance

Creates an Api resource.


=head2 CreateApiMapping

=over

=item ApiId => Str

=item DomainName => Str

=item Stage => Str

=item [ApiMappingKey => Str]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::CreateApiMapping>

Returns: a L<Paws::ApiGatewayV2::CreateApiMappingResponse> instance

Creates an API mapping.


=head2 CreateAuthorizer

=over

=item ApiId => Str

=item AuthorizerType => Str

=item AuthorizerUri => Str

=item IdentitySource => ArrayRef[Str|Undef]

=item Name => Str

=item [AuthorizerCredentialsArn => Str]

=item [AuthorizerResultTtlInSeconds => Int]

=item [IdentityValidationExpression => Str]

=item [ProviderArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::CreateAuthorizer>

Returns: a L<Paws::ApiGatewayV2::CreateAuthorizerResponse> instance

Creates an Authorizer for an API.


=head2 CreateDeployment

=over

=item ApiId => Str

=item [Description => Str]

=item [StageName => Str]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::CreateDeployment>

Returns: a L<Paws::ApiGatewayV2::CreateDeploymentResponse> instance

Creates a Deployment for an API.


=head2 CreateDomainName

=over

=item DomainName => Str

=item [DomainNameConfigurations => ArrayRef[L<Paws::ApiGatewayV2::DomainNameConfiguration>]]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::CreateDomainName>

Returns: a L<Paws::ApiGatewayV2::CreateDomainNameResponse> instance

Creates a domain name.


=head2 CreateIntegration

=over

=item ApiId => Str

=item [ConnectionId => Str]

=item [ConnectionType => Str]

=item [ContentHandlingStrategy => Str]

=item [CredentialsArn => Str]

=item [Description => Str]

=item [IntegrationMethod => Str]

=item [IntegrationType => Str]

=item [IntegrationUri => Str]

=item [PassthroughBehavior => Str]

=item [RequestParameters => L<Paws::ApiGatewayV2::IntegrationParameters>]

=item [RequestTemplates => L<Paws::ApiGatewayV2::TemplateMap>]

=item [TemplateSelectionExpression => Str]

=item [TimeoutInMillis => Int]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::CreateIntegration>

Returns: a L<Paws::ApiGatewayV2::CreateIntegrationResult> instance

Creates an Integration.


=head2 CreateIntegrationResponse

=over

=item ApiId => Str

=item IntegrationId => Str

=item IntegrationResponseKey => Str

=item [ContentHandlingStrategy => Str]

=item [ResponseParameters => L<Paws::ApiGatewayV2::IntegrationParameters>]

=item [ResponseTemplates => L<Paws::ApiGatewayV2::TemplateMap>]

=item [TemplateSelectionExpression => Str]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::CreateIntegrationResponse>

Returns: a L<Paws::ApiGatewayV2::CreateIntegrationResponseResponse> instance

Creates an IntegrationResponses.


=head2 CreateModel

=over

=item ApiId => Str

=item Name => Str

=item [ContentType => Str]

=item [Description => Str]

=item [Schema => Str]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::CreateModel>

Returns: a L<Paws::ApiGatewayV2::CreateModelResponse> instance

Creates a Model for an API.


=head2 CreateRoute

=over

=item ApiId => Str

=item RouteKey => Str

=item [ApiKeyRequired => Bool]

=item [AuthorizationScopes => ArrayRef[Str|Undef]]

=item [AuthorizationType => Str]

=item [AuthorizerId => Str]

=item [ModelSelectionExpression => Str]

=item [OperationName => Str]

=item [RequestModels => L<Paws::ApiGatewayV2::RouteModels>]

=item [RequestParameters => L<Paws::ApiGatewayV2::RouteParameters>]

=item [RouteResponseSelectionExpression => Str]

=item [Target => Str]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::CreateRoute>

Returns: a L<Paws::ApiGatewayV2::CreateRouteResult> instance

Creates a Route for an API.


=head2 CreateRouteResponse

=over

=item ApiId => Str

=item RouteId => Str

=item RouteResponseKey => Str

=item [ModelSelectionExpression => Str]

=item [ResponseModels => L<Paws::ApiGatewayV2::RouteModels>]

=item [ResponseParameters => L<Paws::ApiGatewayV2::RouteParameters>]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::CreateRouteResponse>

Returns: a L<Paws::ApiGatewayV2::CreateRouteResponseResponse> instance

Creates a RouteResponse for a Route.


=head2 CreateStage

=over

=item ApiId => Str

=item StageName => Str

=item [AccessLogSettings => L<Paws::ApiGatewayV2::AccessLogSettings>]

=item [ClientCertificateId => Str]

=item [DefaultRouteSettings => L<Paws::ApiGatewayV2::RouteSettings>]

=item [DeploymentId => Str]

=item [Description => Str]

=item [RouteSettings => L<Paws::ApiGatewayV2::RouteSettingsMap>]

=item [StageVariables => L<Paws::ApiGatewayV2::StageVariablesMap>]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::CreateStage>

Returns: a L<Paws::ApiGatewayV2::CreateStageResponse> instance

Creates a Stage for an API.


=head2 DeleteApi

=over

=item ApiId => Str


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::DeleteApi>

Returns: nothing

Deletes an Api resource.


=head2 DeleteApiMapping

=over

=item ApiId => Str

=item ApiMappingId => Str

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::DeleteApiMapping>

Returns: nothing

Deletes an API mapping.


=head2 DeleteAuthorizer

=over

=item ApiId => Str

=item AuthorizerId => Str


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::DeleteAuthorizer>

Returns: nothing

Deletes an Authorizer.


=head2 DeleteDeployment

=over

=item ApiId => Str

=item DeploymentId => Str


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::DeleteDeployment>

Returns: nothing

Deletes a Deployment.


=head2 DeleteDomainName

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::DeleteDomainName>

Returns: nothing

Deletes a domain name.


=head2 DeleteIntegration

=over

=item ApiId => Str

=item IntegrationId => Str


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::DeleteIntegration>

Returns: nothing

Deletes an Integration.


=head2 DeleteIntegrationResponse

=over

=item ApiId => Str

=item IntegrationId => Str

=item IntegrationResponseId => Str


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::DeleteIntegrationResponse>

Returns: nothing

Deletes an IntegrationResponses.


=head2 DeleteModel

=over

=item ApiId => Str

=item ModelId => Str


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::DeleteModel>

Returns: nothing

Deletes a Model.


=head2 DeleteRoute

=over

=item ApiId => Str

=item RouteId => Str


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::DeleteRoute>

Returns: nothing

Deletes a Route.


=head2 DeleteRouteResponse

=over

=item ApiId => Str

=item RouteId => Str

=item RouteResponseId => Str


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::DeleteRouteResponse>

Returns: nothing

Deletes a RouteResponse.


=head2 DeleteStage

=over

=item ApiId => Str

=item StageName => Str


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::DeleteStage>

Returns: nothing

Deletes a Stage.


=head2 GetApi

=over

=item ApiId => Str


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::GetApi>

Returns: a L<Paws::ApiGatewayV2::GetApiResponse> instance

Gets an Api resource.


=head2 GetApiMapping

=over

=item ApiId => Str

=item ApiMappingId => Str

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::GetApiMapping>

Returns: a L<Paws::ApiGatewayV2::GetApiMappingResponse> instance

The API mapping.


=head2 GetApiMappings

=over

=item DomainName => Str

=item [MaxResults => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::GetApiMappings>

Returns: a L<Paws::ApiGatewayV2::GetApiMappingsResponse> instance

The API mappings.


=head2 GetApis

=over

=item [MaxResults => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::GetApis>

Returns: a L<Paws::ApiGatewayV2::GetApisResponse> instance

Gets a collection of Api resources.


=head2 GetAuthorizer

=over

=item ApiId => Str

=item AuthorizerId => Str


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::GetAuthorizer>

Returns: a L<Paws::ApiGatewayV2::GetAuthorizerResponse> instance

Gets an Authorizer.


=head2 GetAuthorizers

=over

=item ApiId => Str

=item [MaxResults => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::GetAuthorizers>

Returns: a L<Paws::ApiGatewayV2::GetAuthorizersResponse> instance

Gets the Authorizers for an API.


=head2 GetDeployment

=over

=item ApiId => Str

=item DeploymentId => Str


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::GetDeployment>

Returns: a L<Paws::ApiGatewayV2::GetDeploymentResponse> instance

Gets a Deployment.


=head2 GetDeployments

=over

=item ApiId => Str

=item [MaxResults => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::GetDeployments>

Returns: a L<Paws::ApiGatewayV2::GetDeploymentsResponse> instance

Gets the Deployments for an API.


=head2 GetDomainName

=over

=item DomainName => Str


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::GetDomainName>

Returns: a L<Paws::ApiGatewayV2::GetDomainNameResponse> instance

Gets a domain name.


=head2 GetDomainNames

=over

=item [MaxResults => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::GetDomainNames>

Returns: a L<Paws::ApiGatewayV2::GetDomainNamesResponse> instance

Gets the domain names for an AWS account.


=head2 GetIntegration

=over

=item ApiId => Str

=item IntegrationId => Str


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::GetIntegration>

Returns: a L<Paws::ApiGatewayV2::GetIntegrationResult> instance

Gets an Integration.


=head2 GetIntegrationResponse

=over

=item ApiId => Str

=item IntegrationId => Str

=item IntegrationResponseId => Str


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::GetIntegrationResponse>

Returns: a L<Paws::ApiGatewayV2::GetIntegrationResponseResponse> instance

Gets an IntegrationResponses.


=head2 GetIntegrationResponses

=over

=item ApiId => Str

=item IntegrationId => Str

=item [MaxResults => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::GetIntegrationResponses>

Returns: a L<Paws::ApiGatewayV2::GetIntegrationResponsesResponse> instance

Gets the IntegrationResponses for an Integration.


=head2 GetIntegrations

=over

=item ApiId => Str

=item [MaxResults => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::GetIntegrations>

Returns: a L<Paws::ApiGatewayV2::GetIntegrationsResponse> instance

Gets the Integrations for an API.


=head2 GetModel

=over

=item ApiId => Str

=item ModelId => Str


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::GetModel>

Returns: a L<Paws::ApiGatewayV2::GetModelResponse> instance

Gets a Model.


=head2 GetModels

=over

=item ApiId => Str

=item [MaxResults => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::GetModels>

Returns: a L<Paws::ApiGatewayV2::GetModelsResponse> instance

Gets the Models for an API.


=head2 GetModelTemplate

=over

=item ApiId => Str

=item ModelId => Str


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::GetModelTemplate>

Returns: a L<Paws::ApiGatewayV2::GetModelTemplateResponse> instance

Gets a model template.


=head2 GetRoute

=over

=item ApiId => Str

=item RouteId => Str


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::GetRoute>

Returns: a L<Paws::ApiGatewayV2::GetRouteResult> instance

Gets a Route.


=head2 GetRouteResponse

=over

=item ApiId => Str

=item RouteId => Str

=item RouteResponseId => Str


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::GetRouteResponse>

Returns: a L<Paws::ApiGatewayV2::GetRouteResponseResponse> instance

Gets a RouteResponse.


=head2 GetRouteResponses

=over

=item ApiId => Str

=item RouteId => Str

=item [MaxResults => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::GetRouteResponses>

Returns: a L<Paws::ApiGatewayV2::GetRouteResponsesResponse> instance

Gets the RouteResponses for a Route.


=head2 GetRoutes

=over

=item ApiId => Str

=item [MaxResults => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::GetRoutes>

Returns: a L<Paws::ApiGatewayV2::GetRoutesResponse> instance

Gets the Routes for an API.


=head2 GetStage

=over

=item ApiId => Str

=item StageName => Str


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::GetStage>

Returns: a L<Paws::ApiGatewayV2::GetStageResponse> instance

Gets a Stage.


=head2 GetStages

=over

=item ApiId => Str

=item [MaxResults => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::GetStages>

Returns: a L<Paws::ApiGatewayV2::GetStagesResponse> instance

Gets the Stages for an API.


=head2 UpdateApi

=over

=item ApiId => Str

=item [ApiKeySelectionExpression => Str]

=item [Description => Str]

=item [DisableSchemaValidation => Bool]

=item [Name => Str]

=item [RouteSelectionExpression => Str]

=item [Version => Str]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::UpdateApi>

Returns: a L<Paws::ApiGatewayV2::UpdateApiResponse> instance

Updates an Api resource.


=head2 UpdateApiMapping

=over

=item ApiId => Str

=item ApiMappingId => Str

=item DomainName => Str

=item [ApiMappingKey => Str]

=item [Stage => Str]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::UpdateApiMapping>

Returns: a L<Paws::ApiGatewayV2::UpdateApiMappingResponse> instance

The API mapping.


=head2 UpdateAuthorizer

=over

=item ApiId => Str

=item AuthorizerId => Str

=item [AuthorizerCredentialsArn => Str]

=item [AuthorizerResultTtlInSeconds => Int]

=item [AuthorizerType => Str]

=item [AuthorizerUri => Str]

=item [IdentitySource => ArrayRef[Str|Undef]]

=item [IdentityValidationExpression => Str]

=item [Name => Str]

=item [ProviderArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::UpdateAuthorizer>

Returns: a L<Paws::ApiGatewayV2::UpdateAuthorizerResponse> instance

Updates an Authorizer.


=head2 UpdateDeployment

=over

=item ApiId => Str

=item DeploymentId => Str

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::UpdateDeployment>

Returns: a L<Paws::ApiGatewayV2::UpdateDeploymentResponse> instance

Updates a Deployment.


=head2 UpdateDomainName

=over

=item DomainName => Str

=item [DomainNameConfigurations => ArrayRef[L<Paws::ApiGatewayV2::DomainNameConfiguration>]]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::UpdateDomainName>

Returns: a L<Paws::ApiGatewayV2::UpdateDomainNameResponse> instance

Updates a domain name.


=head2 UpdateIntegration

=over

=item ApiId => Str

=item IntegrationId => Str

=item [ConnectionId => Str]

=item [ConnectionType => Str]

=item [ContentHandlingStrategy => Str]

=item [CredentialsArn => Str]

=item [Description => Str]

=item [IntegrationMethod => Str]

=item [IntegrationType => Str]

=item [IntegrationUri => Str]

=item [PassthroughBehavior => Str]

=item [RequestParameters => L<Paws::ApiGatewayV2::IntegrationParameters>]

=item [RequestTemplates => L<Paws::ApiGatewayV2::TemplateMap>]

=item [TemplateSelectionExpression => Str]

=item [TimeoutInMillis => Int]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::UpdateIntegration>

Returns: a L<Paws::ApiGatewayV2::UpdateIntegrationResult> instance

Updates an Integration.


=head2 UpdateIntegrationResponse

=over

=item ApiId => Str

=item IntegrationId => Str

=item IntegrationResponseId => Str

=item [ContentHandlingStrategy => Str]

=item [IntegrationResponseKey => Str]

=item [ResponseParameters => L<Paws::ApiGatewayV2::IntegrationParameters>]

=item [ResponseTemplates => L<Paws::ApiGatewayV2::TemplateMap>]

=item [TemplateSelectionExpression => Str]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::UpdateIntegrationResponse>

Returns: a L<Paws::ApiGatewayV2::UpdateIntegrationResponseResponse> instance

Updates an IntegrationResponses.


=head2 UpdateModel

=over

=item ApiId => Str

=item ModelId => Str

=item [ContentType => Str]

=item [Description => Str]

=item [Name => Str]

=item [Schema => Str]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::UpdateModel>

Returns: a L<Paws::ApiGatewayV2::UpdateModelResponse> instance

Updates a Model.


=head2 UpdateRoute

=over

=item ApiId => Str

=item RouteId => Str

=item [ApiKeyRequired => Bool]

=item [AuthorizationScopes => ArrayRef[Str|Undef]]

=item [AuthorizationType => Str]

=item [AuthorizerId => Str]

=item [ModelSelectionExpression => Str]

=item [OperationName => Str]

=item [RequestModels => L<Paws::ApiGatewayV2::RouteModels>]

=item [RequestParameters => L<Paws::ApiGatewayV2::RouteParameters>]

=item [RouteKey => Str]

=item [RouteResponseSelectionExpression => Str]

=item [Target => Str]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::UpdateRoute>

Returns: a L<Paws::ApiGatewayV2::UpdateRouteResult> instance

Updates a Route.


=head2 UpdateRouteResponse

=over

=item ApiId => Str

=item RouteId => Str

=item RouteResponseId => Str

=item [ModelSelectionExpression => Str]

=item [ResponseModels => L<Paws::ApiGatewayV2::RouteModels>]

=item [ResponseParameters => L<Paws::ApiGatewayV2::RouteParameters>]

=item [RouteResponseKey => Str]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::UpdateRouteResponse>

Returns: a L<Paws::ApiGatewayV2::UpdateRouteResponseResponse> instance

Updates a RouteResponse.


=head2 UpdateStage

=over

=item ApiId => Str

=item StageName => Str

=item [AccessLogSettings => L<Paws::ApiGatewayV2::AccessLogSettings>]

=item [ClientCertificateId => Str]

=item [DefaultRouteSettings => L<Paws::ApiGatewayV2::RouteSettings>]

=item [DeploymentId => Str]

=item [Description => Str]

=item [RouteSettings => L<Paws::ApiGatewayV2::RouteSettingsMap>]

=item [StageVariables => L<Paws::ApiGatewayV2::StageVariablesMap>]


=back

Each argument is described in detail in: L<Paws::ApiGatewayV2::UpdateStage>

Returns: a L<Paws::ApiGatewayV2::UpdateStageResponse> instance

Updates a Stage.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllApis(sub { },[MaxResults => Str, NextToken => Str])

=head2 GetAllApis([MaxResults => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::ApiGatewayV2::GetApisResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllAuthorizers(sub { },ApiId => Str, [MaxResults => Str, NextToken => Str])

=head2 GetAllAuthorizers(ApiId => Str, [MaxResults => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::ApiGatewayV2::GetAuthorizersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllDeployments(sub { },ApiId => Str, [MaxResults => Str, NextToken => Str])

=head2 GetAllDeployments(ApiId => Str, [MaxResults => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::ApiGatewayV2::GetDeploymentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllDomainNames(sub { },[MaxResults => Str, NextToken => Str])

=head2 GetAllDomainNames([MaxResults => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::ApiGatewayV2::GetDomainNamesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllIntegrationResponses(sub { },ApiId => Str, IntegrationId => Str, [MaxResults => Str, NextToken => Str])

=head2 GetAllIntegrationResponses(ApiId => Str, IntegrationId => Str, [MaxResults => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::ApiGatewayV2::GetIntegrationResponsesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllIntegrations(sub { },ApiId => Str, [MaxResults => Str, NextToken => Str])

=head2 GetAllIntegrations(ApiId => Str, [MaxResults => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::ApiGatewayV2::GetIntegrationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllModels(sub { },ApiId => Str, [MaxResults => Str, NextToken => Str])

=head2 GetAllModels(ApiId => Str, [MaxResults => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::ApiGatewayV2::GetModelsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllRouteResponses(sub { },ApiId => Str, RouteId => Str, [MaxResults => Str, NextToken => Str])

=head2 GetAllRouteResponses(ApiId => Str, RouteId => Str, [MaxResults => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::ApiGatewayV2::GetRouteResponsesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllRoutes(sub { },ApiId => Str, [MaxResults => Str, NextToken => Str])

=head2 GetAllRoutes(ApiId => Str, [MaxResults => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::ApiGatewayV2::GetRoutesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllStages(sub { },ApiId => Str, [MaxResults => Str, NextToken => Str])

=head2 GetAllStages(ApiId => Str, [MaxResults => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Items, passing the object as the first parameter, and the string 'Items' as the second parameter 

If not, it will return a a L<Paws::ApiGatewayV2::GetStagesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

