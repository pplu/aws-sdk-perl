package Paws::AmplifyBackend;
  use Moose;
  sub service { 'amplifybackend' }
  sub signing_name { 'amplifybackend' }
  sub version { '2020-08-11' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CloneBackend {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyBackend::CloneBackend', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBackend {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyBackend::CreateBackend', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBackendAPI {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyBackend::CreateBackendAPI', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBackendAuth {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyBackend::CreateBackendAuth', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBackendConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyBackend::CreateBackendConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyBackend::CreateToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBackend {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyBackend::DeleteBackend', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBackendAPI {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyBackend::DeleteBackendAPI', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBackendAuth {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyBackend::DeleteBackendAuth', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyBackend::DeleteToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GenerateBackendAPIModels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyBackend::GenerateBackendAPIModels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBackend {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyBackend::GetBackend', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBackendAPI {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyBackend::GetBackendAPI', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBackendAPIModels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyBackend::GetBackendAPIModels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBackendAuth {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyBackend::GetBackendAuth', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBackendJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyBackend::GetBackendJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyBackend::GetToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportBackendAuth {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyBackend::ImportBackendAuth', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBackendJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyBackend::ListBackendJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveAllBackends {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyBackend::RemoveAllBackends', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveBackendConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyBackend::RemoveBackendConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBackendAPI {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyBackend::UpdateBackendAPI', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBackendAuth {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyBackend::UpdateBackendAuth', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBackendConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyBackend::UpdateBackendConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBackendJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyBackend::UpdateBackendJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllBackendJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListBackendJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListBackendJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->Jobs }, @{ $next_result->Jobs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Jobs') foreach (@{ $result->Jobs });
        $result = $self->ListBackendJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Jobs') foreach (@{ $result->Jobs });
    }

    return undef
  }


  sub operations { qw/CloneBackend CreateBackend CreateBackendAPI CreateBackendAuth CreateBackendConfig CreateToken DeleteBackend DeleteBackendAPI DeleteBackendAuth DeleteToken GenerateBackendAPIModels GetBackend GetBackendAPI GetBackendAPIModels GetBackendAuth GetBackendJob GetToken ImportBackendAuth ListBackendJobs RemoveAllBackends RemoveBackendConfig UpdateBackendAPI UpdateBackendAuth UpdateBackendConfig UpdateBackendJob / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyBackend - Perl Interface to AWS AmplifyBackend

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('AmplifyBackend');
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

AWS Amplify Admin API

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplifybackend-2020-08-11>


=head1 METHODS

=head2 CloneBackend

=over

=item AppId => Str

=item BackendEnvironmentName => Str

=item TargetEnvironmentName => Str


=back

Each argument is described in detail in: L<Paws::AmplifyBackend::CloneBackend>

Returns: a L<Paws::AmplifyBackend::CloneBackendResponse> instance

This operation clones an existing backend.


=head2 CreateBackend

=over

=item AppId => Str

=item AppName => Str

=item BackendEnvironmentName => Str

=item [ResourceConfig => L<Paws::AmplifyBackend::ResourceConfig>]

=item [ResourceName => Str]


=back

Each argument is described in detail in: L<Paws::AmplifyBackend::CreateBackend>

Returns: a L<Paws::AmplifyBackend::CreateBackendResponse> instance

This operation creates a backend for an Amplify app. Backends are
automatically created at the time of app creation.


=head2 CreateBackendAPI

=over

=item AppId => Str

=item BackendEnvironmentName => Str

=item ResourceConfig => L<Paws::AmplifyBackend::BackendAPIResourceConfig>

=item ResourceName => Str


=back

Each argument is described in detail in: L<Paws::AmplifyBackend::CreateBackendAPI>

Returns: a L<Paws::AmplifyBackend::CreateBackendAPIResponse> instance

Creates a new backend API resource.


=head2 CreateBackendAuth

=over

=item AppId => Str

=item BackendEnvironmentName => Str

=item ResourceConfig => L<Paws::AmplifyBackend::CreateBackendAuthResourceConfig>

=item ResourceName => Str


=back

Each argument is described in detail in: L<Paws::AmplifyBackend::CreateBackendAuth>

Returns: a L<Paws::AmplifyBackend::CreateBackendAuthResponse> instance

Creates a new backend authentication resource.


=head2 CreateBackendConfig

=over

=item AppId => Str

=item [BackendManagerAppId => Str]


=back

Each argument is described in detail in: L<Paws::AmplifyBackend::CreateBackendConfig>

Returns: a L<Paws::AmplifyBackend::CreateBackendConfigResponse> instance

Creates a config object for a backend.


=head2 CreateToken

=over

=item AppId => Str


=back

Each argument is described in detail in: L<Paws::AmplifyBackend::CreateToken>

Returns: a L<Paws::AmplifyBackend::CreateTokenResponse> instance

Generates a one-time challenge code to authenticate a user into your
Amplify Admin UI.


=head2 DeleteBackend

=over

=item AppId => Str

=item BackendEnvironmentName => Str


=back

Each argument is described in detail in: L<Paws::AmplifyBackend::DeleteBackend>

Returns: a L<Paws::AmplifyBackend::DeleteBackendResponse> instance

Removes an existing environment from your Amplify project.


=head2 DeleteBackendAPI

=over

=item AppId => Str

=item BackendEnvironmentName => Str

=item ResourceName => Str

=item [ResourceConfig => L<Paws::AmplifyBackend::BackendAPIResourceConfig>]


=back

Each argument is described in detail in: L<Paws::AmplifyBackend::DeleteBackendAPI>

Returns: a L<Paws::AmplifyBackend::DeleteBackendAPIResponse> instance

Deletes an existing backend API resource.


=head2 DeleteBackendAuth

=over

=item AppId => Str

=item BackendEnvironmentName => Str

=item ResourceName => Str


=back

Each argument is described in detail in: L<Paws::AmplifyBackend::DeleteBackendAuth>

Returns: a L<Paws::AmplifyBackend::DeleteBackendAuthResponse> instance

Deletes an existing backend authentication resource.


=head2 DeleteToken

=over

=item AppId => Str

=item SessionId => Str


=back

Each argument is described in detail in: L<Paws::AmplifyBackend::DeleteToken>

Returns: a L<Paws::AmplifyBackend::DeleteTokenResponse> instance

Deletes the challenge token based on the given appId and sessionId.


=head2 GenerateBackendAPIModels

=over

=item AppId => Str

=item BackendEnvironmentName => Str

=item ResourceName => Str


=back

Each argument is described in detail in: L<Paws::AmplifyBackend::GenerateBackendAPIModels>

Returns: a L<Paws::AmplifyBackend::GenerateBackendAPIModelsResponse> instance

Generates a model schema for an existing backend API resource.


=head2 GetBackend

=over

=item AppId => Str

=item [BackendEnvironmentName => Str]


=back

Each argument is described in detail in: L<Paws::AmplifyBackend::GetBackend>

Returns: a L<Paws::AmplifyBackend::GetBackendResponse> instance

Provides project-level details for your Amplify UI project.


=head2 GetBackendAPI

=over

=item AppId => Str

=item BackendEnvironmentName => Str

=item ResourceName => Str

=item [ResourceConfig => L<Paws::AmplifyBackend::BackendAPIResourceConfig>]


=back

Each argument is described in detail in: L<Paws::AmplifyBackend::GetBackendAPI>

Returns: a L<Paws::AmplifyBackend::GetBackendAPIResponse> instance

Gets the details for a backend API.


=head2 GetBackendAPIModels

=over

=item AppId => Str

=item BackendEnvironmentName => Str

=item ResourceName => Str


=back

Each argument is described in detail in: L<Paws::AmplifyBackend::GetBackendAPIModels>

Returns: a L<Paws::AmplifyBackend::GetBackendAPIModelsResponse> instance

Generates a model schema for existing backend API resource.


=head2 GetBackendAuth

=over

=item AppId => Str

=item BackendEnvironmentName => Str

=item ResourceName => Str


=back

Each argument is described in detail in: L<Paws::AmplifyBackend::GetBackendAuth>

Returns: a L<Paws::AmplifyBackend::GetBackendAuthResponse> instance

Gets a backend auth details.


=head2 GetBackendJob

=over

=item AppId => Str

=item BackendEnvironmentName => Str

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::AmplifyBackend::GetBackendJob>

Returns: a L<Paws::AmplifyBackend::GetBackendJobResponse> instance

Returns information about a specific job.


=head2 GetToken

=over

=item AppId => Str

=item SessionId => Str


=back

Each argument is described in detail in: L<Paws::AmplifyBackend::GetToken>

Returns: a L<Paws::AmplifyBackend::GetTokenResponse> instance

Gets the challenge token based on the given appId and sessionId.


=head2 ImportBackendAuth

=over

=item AppId => Str

=item BackendEnvironmentName => Str

=item NativeClientId => Str

=item UserPoolId => Str

=item WebClientId => Str

=item [IdentityPoolId => Str]


=back

Each argument is described in detail in: L<Paws::AmplifyBackend::ImportBackendAuth>

Returns: a L<Paws::AmplifyBackend::ImportBackendAuthResponse> instance

Imports an existing backend authentication resource.


=head2 ListBackendJobs

=over

=item AppId => Str

=item BackendEnvironmentName => Str

=item [JobId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Operation => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::AmplifyBackend::ListBackendJobs>

Returns: a L<Paws::AmplifyBackend::ListBackendJobsResponse> instance

Lists the jobs for the backend of an Amplify app.


=head2 RemoveAllBackends

=over

=item AppId => Str

=item [CleanAmplifyApp => Bool]


=back

Each argument is described in detail in: L<Paws::AmplifyBackend::RemoveAllBackends>

Returns: a L<Paws::AmplifyBackend::RemoveAllBackendsResponse> instance

Removes all backend environments from your Amplify project.


=head2 RemoveBackendConfig

=over

=item AppId => Str


=back

Each argument is described in detail in: L<Paws::AmplifyBackend::RemoveBackendConfig>

Returns: a L<Paws::AmplifyBackend::RemoveBackendConfigResponse> instance

Removes the AWS resources required to access the Amplify Admin UI.


=head2 UpdateBackendAPI

=over

=item AppId => Str

=item BackendEnvironmentName => Str

=item ResourceName => Str

=item [ResourceConfig => L<Paws::AmplifyBackend::BackendAPIResourceConfig>]


=back

Each argument is described in detail in: L<Paws::AmplifyBackend::UpdateBackendAPI>

Returns: a L<Paws::AmplifyBackend::UpdateBackendAPIResponse> instance

Updates an existing backend API resource.


=head2 UpdateBackendAuth

=over

=item AppId => Str

=item BackendEnvironmentName => Str

=item ResourceConfig => L<Paws::AmplifyBackend::UpdateBackendAuthResourceConfig>

=item ResourceName => Str


=back

Each argument is described in detail in: L<Paws::AmplifyBackend::UpdateBackendAuth>

Returns: a L<Paws::AmplifyBackend::UpdateBackendAuthResponse> instance

Updates an existing backend authentication resource.


=head2 UpdateBackendConfig

=over

=item AppId => Str

=item [LoginAuthConfig => L<Paws::AmplifyBackend::LoginAuthConfigReqObj>]


=back

Each argument is described in detail in: L<Paws::AmplifyBackend::UpdateBackendConfig>

Returns: a L<Paws::AmplifyBackend::UpdateBackendConfigResponse> instance

Updates the AWS resources required to access the Amplify Admin UI.


=head2 UpdateBackendJob

=over

=item AppId => Str

=item BackendEnvironmentName => Str

=item JobId => Str

=item [Operation => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::AmplifyBackend::UpdateBackendJob>

Returns: a L<Paws::AmplifyBackend::UpdateBackendJobResponse> instance

Updates a specific job.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllBackendJobs(sub { },AppId => Str, BackendEnvironmentName => Str, [JobId => Str, MaxResults => Int, NextToken => Str, Operation => Str, Status => Str])

=head2 ListAllBackendJobs(AppId => Str, BackendEnvironmentName => Str, [JobId => Str, MaxResults => Int, NextToken => Str, Operation => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Jobs, passing the object as the first parameter, and the string 'Jobs' as the second parameter 

If not, it will return a a L<Paws::AmplifyBackend::ListBackendJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

