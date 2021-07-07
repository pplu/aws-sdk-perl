package Paws::Proton;
  use Moose;
  sub service { 'proton' }
  sub signing_name { 'proton' }
  sub version { '2020-07-20' }
  sub target_prefix { 'AwsProton20200720' }
  sub json_version { "1.0" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AcceptEnvironmentAccountConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::AcceptEnvironmentAccountConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelEnvironmentDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::CancelEnvironmentDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelServiceInstanceDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::CancelServiceInstanceDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelServicePipelineDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::CancelServicePipelineDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::CreateEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEnvironmentAccountConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::CreateEnvironmentAccountConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEnvironmentTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::CreateEnvironmentTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEnvironmentTemplateVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::CreateEnvironmentTemplateVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::CreateService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateServiceTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::CreateServiceTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateServiceTemplateVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::CreateServiceTemplateVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::DeleteEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEnvironmentAccountConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::DeleteEnvironmentAccountConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEnvironmentTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::DeleteEnvironmentTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEnvironmentTemplateVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::DeleteEnvironmentTemplateVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::DeleteService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteServiceTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::DeleteServiceTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteServiceTemplateVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::DeleteServiceTemplateVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccountSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::GetAccountSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::GetEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnvironmentAccountConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::GetEnvironmentAccountConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnvironmentTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::GetEnvironmentTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnvironmentTemplateVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::GetEnvironmentTemplateVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::GetService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServiceInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::GetServiceInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServiceTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::GetServiceTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetServiceTemplateVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::GetServiceTemplateVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnvironmentAccountConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListEnvironmentAccountConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnvironments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListEnvironments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnvironmentTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListEnvironmentTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnvironmentTemplateVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListEnvironmentTemplateVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServiceInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListServiceInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListServices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServiceTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListServiceTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListServiceTemplateVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListServiceTemplateVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectEnvironmentAccountConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::RejectEnvironmentAccountConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAccountSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::UpdateAccountSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::UpdateEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEnvironmentAccountConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::UpdateEnvironmentAccountConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEnvironmentTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::UpdateEnvironmentTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEnvironmentTemplateVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::UpdateEnvironmentTemplateVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateService {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::UpdateService', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServiceInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::UpdateServiceInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServicePipeline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::UpdateServicePipeline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServiceTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::UpdateServiceTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServiceTemplateVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Proton::UpdateServiceTemplateVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllEnvironmentAccountConnections {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEnvironmentAccountConnections(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEnvironmentAccountConnections(@_, nextToken => $next_result->nextToken);
        push @{ $result->environmentAccountConnections }, @{ $next_result->environmentAccountConnections };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'environmentAccountConnections') foreach (@{ $result->environmentAccountConnections });
        $result = $self->ListEnvironmentAccountConnections(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'environmentAccountConnections') foreach (@{ $result->environmentAccountConnections });
    }

    return undef
  }
  sub ListAllEnvironments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEnvironments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEnvironments(@_, nextToken => $next_result->nextToken);
        push @{ $result->environments }, @{ $next_result->environments };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'environments') foreach (@{ $result->environments });
        $result = $self->ListEnvironments(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'environments') foreach (@{ $result->environments });
    }

    return undef
  }
  sub ListAllEnvironmentTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEnvironmentTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEnvironmentTemplates(@_, nextToken => $next_result->nextToken);
        push @{ $result->templates }, @{ $next_result->templates };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'templates') foreach (@{ $result->templates });
        $result = $self->ListEnvironmentTemplates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'templates') foreach (@{ $result->templates });
    }

    return undef
  }
  sub ListAllEnvironmentTemplateVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEnvironmentTemplateVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListEnvironmentTemplateVersions(@_, nextToken => $next_result->nextToken);
        push @{ $result->templateVersions }, @{ $next_result->templateVersions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'templateVersions') foreach (@{ $result->templateVersions });
        $result = $self->ListEnvironmentTemplateVersions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'templateVersions') foreach (@{ $result->templateVersions });
    }

    return undef
  }
  sub ListAllServiceInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServiceInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListServiceInstances(@_, nextToken => $next_result->nextToken);
        push @{ $result->serviceInstances }, @{ $next_result->serviceInstances };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'serviceInstances') foreach (@{ $result->serviceInstances });
        $result = $self->ListServiceInstances(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'serviceInstances') foreach (@{ $result->serviceInstances });
    }

    return undef
  }
  sub ListAllServices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListServices(@_, nextToken => $next_result->nextToken);
        push @{ $result->services }, @{ $next_result->services };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'services') foreach (@{ $result->services });
        $result = $self->ListServices(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'services') foreach (@{ $result->services });
    }

    return undef
  }
  sub ListAllServiceTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServiceTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListServiceTemplates(@_, nextToken => $next_result->nextToken);
        push @{ $result->templates }, @{ $next_result->templates };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'templates') foreach (@{ $result->templates });
        $result = $self->ListServiceTemplates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'templates') foreach (@{ $result->templates });
    }

    return undef
  }
  sub ListAllServiceTemplateVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListServiceTemplateVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListServiceTemplateVersions(@_, nextToken => $next_result->nextToken);
        push @{ $result->templateVersions }, @{ $next_result->templateVersions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'templateVersions') foreach (@{ $result->templateVersions });
        $result = $self->ListServiceTemplateVersions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'templateVersions') foreach (@{ $result->templateVersions });
    }

    return undef
  }
  sub ListAllTagsForResource {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTagsForResource(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListTagsForResource(@_, nextToken => $next_result->nextToken);
        push @{ $result->tags }, @{ $next_result->tags };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'tags') foreach (@{ $result->tags });
        $result = $self->ListTagsForResource(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'tags') foreach (@{ $result->tags });
    }

    return undef
  }


  sub operations { qw/AcceptEnvironmentAccountConnection CancelEnvironmentDeployment CancelServiceInstanceDeployment CancelServicePipelineDeployment CreateEnvironment CreateEnvironmentAccountConnection CreateEnvironmentTemplate CreateEnvironmentTemplateVersion CreateService CreateServiceTemplate CreateServiceTemplateVersion DeleteEnvironment DeleteEnvironmentAccountConnection DeleteEnvironmentTemplate DeleteEnvironmentTemplateVersion DeleteService DeleteServiceTemplate DeleteServiceTemplateVersion GetAccountSettings GetEnvironment GetEnvironmentAccountConnection GetEnvironmentTemplate GetEnvironmentTemplateVersion GetService GetServiceInstance GetServiceTemplate GetServiceTemplateVersion ListEnvironmentAccountConnections ListEnvironments ListEnvironmentTemplates ListEnvironmentTemplateVersions ListServiceInstances ListServices ListServiceTemplates ListServiceTemplateVersions ListTagsForResource RejectEnvironmentAccountConnection TagResource UntagResource UpdateAccountSettings UpdateEnvironment UpdateEnvironmentAccountConnection UpdateEnvironmentTemplate UpdateEnvironmentTemplateVersion UpdateService UpdateServiceInstance UpdateServicePipeline UpdateServiceTemplate UpdateServiceTemplateVersion / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Proton - Perl Interface to AWS AWS Proton

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Proton');
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

This is the AWS Proton Service API Reference. It provides descriptions,
syntax and usage examples for each of the actions
(https://docs.aws.amazon.com/proton/latest/APIReference/API_Operations.html)
and data types
(https://docs.aws.amazon.com/proton/latest/APIReference/API_Types.html)
for the AWS Proton service.

The documentation for each action shows the Query API request
parameters and the XML response.

Alternatively, you can use the AWS CLI to access an API. For more
information, see the AWS Command Line Interface User Guide
(https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html).

The AWS Proton service is a two-pronged automation framework.
Administrators create service templates to provide standardized
infrastructure and deployment tooling for serverless and container
based applications. Developers, in turn, select from the available
service templates to automate their application or service deployments.

Because administrators define the infrastructure and tooling that AWS
Proton deploys and manages, they need permissions to use all of the
listed API operations.

When developers select a specific infrastructure and tooling set, AWS
Proton deploys their applications. To monitor their applications that
are running on AWS Proton, developers need permissions to the service
I<create>, I<list>, I<update> and I<delete> API operations and the
service instance I<list> and I<update> API operations.

To learn more about AWS Proton administration, see the AWS Proton
Administration Guide
(https://docs.aws.amazon.com/proton/latest/adminguide/Welcome.html).

To learn more about deploying serverless and containerized applications
on AWS Proton, see the AWS Proton User Guide
(https://docs.aws.amazon.com/proton/latest/userguide/Welcome.html).

B<Ensuring Idempotency>

When you make a mutating API request, the request typically returns a
result before the asynchronous workflows of the operation are complete.
Operations might also time out or encounter other server issues before
they're complete, even if the request already returned a result. This
might make it difficult to determine whether the request succeeded.
Moreover, you might need to retry the request multiple times to ensure
that the operation completes successfully. However, if the original
request and the subsequent retries are successful, the operation occurs
multiple times. This means that you might create more resources than
you intended.

I<Idempotency> ensures that an API request action completes no more
than one time. With an idempotent request, if the original request
action completes successfully, any subsequent retries complete
successfully without performing any further actions. However, the
result might contain updated information, such as the current creation
status.

The following lists of APIs are grouped according to methods that
ensure idempotency.

B<Idempotent create APIs with a client token>

The API actions in this list support idempotency with the use of a
I<client token>. The corresponding AWS CLI commands also support
idempotency using a client token. A client token is a unique,
case-sensitive string of up to 64 ASCII characters. To make an
idempotent API request using one of these actions, specify a client
token in the request. We recommend that you I<don't> reuse the same
client token for other API requests. If you donE<rsquo>t provide a
client token for these APIs, a default client token is automatically
provided by SDKs.

Given a request action that has succeeded:

If you retry the request using the same client token and the same
parameters, the retry succeeds without performing any further actions
other than returning the original resource detail data in the response.

If you retry the request using the same client token, but one or more
of the parameters are different, the retry throws a
C<ValidationException> with an C<IdempotentParameterMismatch> error.

Client tokens expire eight hours after a request is made. If you retry
the request with the expired token, a new resource is created.

If the original resource is deleted and you retry the request, a new
resource is created.

Idempotent create APIs with a client token:

=over

=item *

CreateEnvironmentTemplateVersion

=item *

CreateServiceTemplateVersion

=item *

CreateEnvironmentAccountConnection

=back

 <p> <b>Idempotent delete APIs</b> </p> <p>Given a request action that has succeeded:</p> <p>When you retry the request with an API from this group and the resource was deleted, its metadata is returned in the response.</p> <p>If you retry and the resource doesn't exist, the response is empty.</p> <p>In both cases, the retry succeeds.</p> <p>Idempotent delete APIs:</p> <ul> <li> <p>DeleteEnvironmentTemplate</p> </li> <li> <p>DeleteEnvironmentTemplateVersion</p> </li> <li> <p>DeleteServiceTemplate</p> </li> <li> <p>DeleteServiceTemplateVersion</p> </li> <li> <p>DeleteEnvironmentAccountConnection</p> </li> </ul> <p> <b>Asynchronous idempotent delete APIs</b> </p> <p>Given a request action that has succeeded:</p> <p>If you retry the request with an API from this group, if the original request delete operation status is <code>DELETE_IN_PROGRESS</code>, the retry returns the resource detail data in the response without performing any further actions.</p> <p>If the original request delete operation is complete, a retry returns an empty response.</p> <p>Asynchronous idempotent delete APIs:</p> <ul> <li> <p>DeleteEnvironment</p> </li> <li> <p>DeleteService</p> </li> </ul>

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/proton-2020-07-20>


=head1 METHODS

=head2 AcceptEnvironmentAccountConnection

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Proton::AcceptEnvironmentAccountConnection>

Returns: a L<Paws::Proton::AcceptEnvironmentAccountConnectionOutput> instance

In a management account, an environment account connection request is
accepted. When the environment account connection request is accepted,
AWS Proton can use the associated IAM role to provision environment
infrastructure resources in the associated environment account.

For more information, see Environment account connections in the I<AWS
Proton Administration guide>.


=head2 CancelEnvironmentDeployment

=over

=item EnvironmentName => Str


=back

Each argument is described in detail in: L<Paws::Proton::CancelEnvironmentDeployment>

Returns: a L<Paws::Proton::CancelEnvironmentDeploymentOutput> instance

Attempts to cancel an environment deployment on an UpdateEnvironment
action, if the deployment is C<IN_PROGRESS>. For more information, see
Update an environment
(https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-update.html)
in the I<AWS Proton Administration guide>.

The following list includes potential cancellation scenarios.

=over

=item *

If the cancellation attempt succeeds, the resulting deployment state is
C<CANCELLED>.

=item *

If the cancellation attempt fails, the resulting deployment state is
C<FAILED>.

=item *

If the current UpdateEnvironment action succeeds before the
cancellation attempt starts, the resulting deployment state is
C<SUCCEEDED> and the cancellation attempt has no effect.

=back



=head2 CancelServiceInstanceDeployment

=over

=item ServiceInstanceName => Str

=item ServiceName => Str


=back

Each argument is described in detail in: L<Paws::Proton::CancelServiceInstanceDeployment>

Returns: a L<Paws::Proton::CancelServiceInstanceDeploymentOutput> instance

Attempts to cancel a service instance deployment on an
UpdateServiceInstance action, if the deployment is C<IN_PROGRESS>. For
more information, see I<Update a service instance> in the AWS Proton
Administration guide
(https://docs.aws.amazon.com/proton/latest/adminguide/ag-svc-instance-update.html)
or the AWS Proton User guide
(https://docs.aws.amazon.com/proton/latest/userguide/ug-svc-instance-update.html).

The following list includes potential cancellation scenarios.

=over

=item *

If the cancellation attempt succeeds, the resulting deployment state is
C<CANCELLED>.

=item *

If the cancellation attempt fails, the resulting deployment state is
C<FAILED>.

=item *

If the current UpdateServiceInstance action succeeds before the
cancellation attempt starts, the resulting deployment state is
C<SUCCEEDED> and the cancellation attempt has no effect.

=back



=head2 CancelServicePipelineDeployment

=over

=item ServiceName => Str


=back

Each argument is described in detail in: L<Paws::Proton::CancelServicePipelineDeployment>

Returns: a L<Paws::Proton::CancelServicePipelineDeploymentOutput> instance

Attempts to cancel a service pipeline deployment on an
UpdateServicePipeline action, if the deployment is C<IN_PROGRESS>. For
more information, see I<Update a service pipeline> in the AWS Proton
Administration guide
(https://docs.aws.amazon.com/proton/latest/adminguide/ag-svc-pipeline-update.html)
or the AWS Proton User guide
(https://docs.aws.amazon.com/proton/latest/userguide/ug-svc-pipeline-update.html).

The following list includes potential cancellation scenarios.

=over

=item *

If the cancellation attempt succeeds, the resulting deployment state is
C<CANCELLED>.

=item *

If the cancellation attempt fails, the resulting deployment state is
C<FAILED>.

=item *

If the current UpdateServicePipeline action succeeds before the
cancellation attempt starts, the resulting deployment state is
C<SUCCEEDED> and the cancellation attempt has no effect.

=back



=head2 CreateEnvironment

=over

=item Name => Str

=item Spec => Str

=item TemplateMajorVersion => Str

=item TemplateName => Str

=item [Description => Str]

=item [EnvironmentAccountConnectionId => Str]

=item [ProtonServiceRoleArn => Str]

=item [Tags => ArrayRef[L<Paws::Proton::Tag>]]

=item [TemplateMinorVersion => Str]


=back

Each argument is described in detail in: L<Paws::Proton::CreateEnvironment>

Returns: a L<Paws::Proton::CreateEnvironmentOutput> instance

Deploy a new environment. An AWS Proton environment is created from an
environment template that defines infrastructure and resources that can
be shared across services. For more information, see the Environments
(https://docs.aws.amazon.com/proton/latest/adminguide/ag-environments.html)
in the I<AWS Proton Administration Guide.>


=head2 CreateEnvironmentAccountConnection

=over

=item EnvironmentName => Str

=item ManagementAccountId => Str

=item RoleArn => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::Proton::CreateEnvironmentAccountConnection>

Returns: a L<Paws::Proton::CreateEnvironmentAccountConnectionOutput> instance

Create an environment account connection in an environment account so
that environment infrastructure resources can be provisioned in the
environment account from the management account.

An environment account connection is a secure bi-directional connection
between a I<management account> and an I<environment account> that
maintains authorization and permissions. For more information, see
Environment account connections in the I<AWS Proton Administration
guide>.


=head2 CreateEnvironmentTemplate

=over

=item Name => Str

=item [Description => Str]

=item [DisplayName => Str]

=item [EncryptionKey => Str]

=item [Provisioning => Str]

=item [Tags => ArrayRef[L<Paws::Proton::Tag>]]


=back

Each argument is described in detail in: L<Paws::Proton::CreateEnvironmentTemplate>

Returns: a L<Paws::Proton::CreateEnvironmentTemplateOutput> instance

Create an environment template for AWS Proton. For more information,
see Environment Templates
(https://docs.aws.amazon.com/proton/latest/adminguide/ag-env-templates.html)
in the I<AWS Proton Administration Guide>.

You can create an environment template in one of the two following
ways:

=over

=item *

Register and publish a I<standard> environment template that instructs
AWS Proton to deploy and manage environment infrastructure.

=item *

Register and publish a I<customer managed> environment template that
connects AWS Proton to your existing provisioned infrastructure that
you manage. AWS Proton I<doesn't> manage your existing provisioned
infrastructure. To create an environment template for customer
provisioned and managed infrastructure, include the C<provisioning>
parameter and set the value to C<CUSTOMER_MANAGED>. For more
information, see Register and publish an environment template
(https://docs.aws.amazon.com/proton/latest/adminguide/env-template-v1.html)
in the I<AWS Proton Administration Guide>.

=back



=head2 CreateEnvironmentTemplateVersion

=over

=item Source => L<Paws::Proton::TemplateVersionSourceInput>

=item TemplateName => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [MajorVersion => Str]

=item [Tags => ArrayRef[L<Paws::Proton::Tag>]]


=back

Each argument is described in detail in: L<Paws::Proton::CreateEnvironmentTemplateVersion>

Returns: a L<Paws::Proton::CreateEnvironmentTemplateVersionOutput> instance

Create a new major or minor version of an environment template. A major
version of an environment template is a version that I<isn't> backwards
compatible. A minor version of an environment template is a version
that's backwards compatible within its major version.


=head2 CreateService

=over

=item Name => Str

=item Spec => Str

=item TemplateMajorVersion => Str

=item TemplateName => Str

=item [BranchName => Str]

=item [Description => Str]

=item [RepositoryConnectionArn => Str]

=item [RepositoryId => Str]

=item [Tags => ArrayRef[L<Paws::Proton::Tag>]]

=item [TemplateMinorVersion => Str]


=back

Each argument is described in detail in: L<Paws::Proton::CreateService>

Returns: a L<Paws::Proton::CreateServiceOutput> instance

Create an AWS Proton service. An AWS Proton service is an instantiation
of a service template and often includes several service instances and
pipeline. For more information, see Services
(https://docs.aws.amazon.com/proton/latest/adminguide/ag-services.html)
in the I<AWS Proton Administration Guide> and Services
(https://docs.aws.amazon.com/proton/latest/userguide/ug-service.html)
in the I<AWS Proton User Guide>.


=head2 CreateServiceTemplate

=over

=item Name => Str

=item [Description => Str]

=item [DisplayName => Str]

=item [EncryptionKey => Str]

=item [PipelineProvisioning => Str]

=item [Tags => ArrayRef[L<Paws::Proton::Tag>]]


=back

Each argument is described in detail in: L<Paws::Proton::CreateServiceTemplate>

Returns: a L<Paws::Proton::CreateServiceTemplateOutput> instance

Create a service template. The administrator creates a service template
to define standardized infrastructure and an optional CICD service
pipeline. Developers, in turn, select the service template from AWS
Proton. If the selected service template includes a service pipeline
definition, they provide a link to their source code repository. AWS
Proton then deploys and manages the infrastructure defined by the
selected service template. For more information, see Service Templates
(https://docs.aws.amazon.com/proton/latest/adminguide/managing-svc-templates.html)
in the I<AWS Proton Administration Guide>.


=head2 CreateServiceTemplateVersion

=over

=item CompatibleEnvironmentTemplates => ArrayRef[L<Paws::Proton::CompatibleEnvironmentTemplateInput>]

=item Source => L<Paws::Proton::TemplateVersionSourceInput>

=item TemplateName => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [MajorVersion => Str]

=item [Tags => ArrayRef[L<Paws::Proton::Tag>]]


=back

Each argument is described in detail in: L<Paws::Proton::CreateServiceTemplateVersion>

Returns: a L<Paws::Proton::CreateServiceTemplateVersionOutput> instance

Create a new major or minor version of a service template. A major
version of a service template is a version that I<isn't> backwards
compatible. A minor version of a service template is a version that's
backwards compatible within its major version.


=head2 DeleteEnvironment

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Proton::DeleteEnvironment>

Returns: a L<Paws::Proton::DeleteEnvironmentOutput> instance

Delete an environment.


=head2 DeleteEnvironmentAccountConnection

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Proton::DeleteEnvironmentAccountConnection>

Returns: a L<Paws::Proton::DeleteEnvironmentAccountConnectionOutput> instance

In an environment account, delete an environment account connection.

After you delete an environment account connection thatE<rsquo>s in use
by an AWS Proton environment, AWS Proton I<canE<rsquo>t> manage the
environment infrastructure resources until a new environment account
connection is accepted for the environment account and associated
environment. You're responsible for cleaning up provisioned resources
that remain without an environment connection.

For more information, see Environment account connections in the I<AWS
Proton Administration guide>.


=head2 DeleteEnvironmentTemplate

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Proton::DeleteEnvironmentTemplate>

Returns: a L<Paws::Proton::DeleteEnvironmentTemplateOutput> instance

If no other major or minor versions of an environment template exist,
delete the environment template.


=head2 DeleteEnvironmentTemplateVersion

=over

=item MajorVersion => Str

=item MinorVersion => Str

=item TemplateName => Str


=back

Each argument is described in detail in: L<Paws::Proton::DeleteEnvironmentTemplateVersion>

Returns: a L<Paws::Proton::DeleteEnvironmentTemplateVersionOutput> instance

If no other minor versions of an environment template exist, delete a
major version of the environment template if it's not the
C<Recommended> version. Delete the C<Recommended> version of the
environment template if no other major versions or minor versions of
the environment template exist. A major version of an environment
template is a version that's not backwards compatible.

Delete a minor version of an environment template if it I<isn't> the
C<Recommended> version. Delete a C<Recommended> minor version of the
environment template if no other minor versions of the environment
template exist. A minor version of an environment template is a version
that's backwards compatible.


=head2 DeleteService

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Proton::DeleteService>

Returns: a L<Paws::Proton::DeleteServiceOutput> instance

Delete a service.


=head2 DeleteServiceTemplate

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Proton::DeleteServiceTemplate>

Returns: a L<Paws::Proton::DeleteServiceTemplateOutput> instance

If no other major or minor versions of the service template exist,
delete the service template.


=head2 DeleteServiceTemplateVersion

=over

=item MajorVersion => Str

=item MinorVersion => Str

=item TemplateName => Str


=back

Each argument is described in detail in: L<Paws::Proton::DeleteServiceTemplateVersion>

Returns: a L<Paws::Proton::DeleteServiceTemplateVersionOutput> instance

If no other minor versions of a service template exist, delete a major
version of the service template if it's not the C<Recommended> version.
Delete the C<Recommended> version of the service template if no other
major versions or minor versions of the service template exist. A major
version of a service template is a version that I<isn't> backwards
compatible.

Delete a minor version of a service template if it's not the
C<Recommended> version. Delete a C<Recommended> minor version of the
service template if no other minor versions of the service template
exist. A minor version of a service template is a version that's
backwards compatible.


=head2 GetAccountSettings






Each argument is described in detail in: L<Paws::Proton::GetAccountSettings>

Returns: a L<Paws::Proton::GetAccountSettingsOutput> instance

Get detail data for the AWS Proton pipeline service role.


=head2 GetEnvironment

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Proton::GetEnvironment>

Returns: a L<Paws::Proton::GetEnvironmentOutput> instance

Get detail data for an environment.


=head2 GetEnvironmentAccountConnection

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Proton::GetEnvironmentAccountConnection>

Returns: a L<Paws::Proton::GetEnvironmentAccountConnectionOutput> instance

In an environment account, view the detail data for an environment
account connection.

For more information, see Environment account connections in the I<AWS
Proton Administration guide>.


=head2 GetEnvironmentTemplate

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Proton::GetEnvironmentTemplate>

Returns: a L<Paws::Proton::GetEnvironmentTemplateOutput> instance

Get detail data for an environment template.


=head2 GetEnvironmentTemplateVersion

=over

=item MajorVersion => Str

=item MinorVersion => Str

=item TemplateName => Str


=back

Each argument is described in detail in: L<Paws::Proton::GetEnvironmentTemplateVersion>

Returns: a L<Paws::Proton::GetEnvironmentTemplateVersionOutput> instance

View detail data for a major or minor version of an environment
template.


=head2 GetService

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Proton::GetService>

Returns: a L<Paws::Proton::GetServiceOutput> instance

Get detail data for a service.


=head2 GetServiceInstance

=over

=item Name => Str

=item ServiceName => Str


=back

Each argument is described in detail in: L<Paws::Proton::GetServiceInstance>

Returns: a L<Paws::Proton::GetServiceInstanceOutput> instance

Get detail data for a service instance. A service instance is an
instantiation of service template, which is running in a specific
environment.


=head2 GetServiceTemplate

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Proton::GetServiceTemplate>

Returns: a L<Paws::Proton::GetServiceTemplateOutput> instance

Get detail data for a service template.


=head2 GetServiceTemplateVersion

=over

=item MajorVersion => Str

=item MinorVersion => Str

=item TemplateName => Str


=back

Each argument is described in detail in: L<Paws::Proton::GetServiceTemplateVersion>

Returns: a L<Paws::Proton::GetServiceTemplateVersionOutput> instance

View detail data for a major or minor version of a service template.


=head2 ListEnvironmentAccountConnections

=over

=item RequestedBy => Str

=item [EnvironmentName => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Statuses => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Proton::ListEnvironmentAccountConnections>

Returns: a L<Paws::Proton::ListEnvironmentAccountConnectionsOutput> instance

View a list of environment account connections.

For more information, see Environment account connections in the I<AWS
Proton Administration guide>.


=head2 ListEnvironments

=over

=item [EnvironmentTemplates => ArrayRef[L<Paws::Proton::EnvironmentTemplateFilter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Proton::ListEnvironments>

Returns: a L<Paws::Proton::ListEnvironmentsOutput> instance

List environments with detail data summaries.


=head2 ListEnvironmentTemplates

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Proton::ListEnvironmentTemplates>

Returns: a L<Paws::Proton::ListEnvironmentTemplatesOutput> instance

List environment templates.


=head2 ListEnvironmentTemplateVersions

=over

=item TemplateName => Str

=item [MajorVersion => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Proton::ListEnvironmentTemplateVersions>

Returns: a L<Paws::Proton::ListEnvironmentTemplateVersionsOutput> instance

List major or minor versions of an environment template with detail
data.


=head2 ListServiceInstances

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ServiceName => Str]


=back

Each argument is described in detail in: L<Paws::Proton::ListServiceInstances>

Returns: a L<Paws::Proton::ListServiceInstancesOutput> instance

List service instances with summaries of detail data.


=head2 ListServices

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Proton::ListServices>

Returns: a L<Paws::Proton::ListServicesOutput> instance

List services with summaries of detail data.


=head2 ListServiceTemplates

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Proton::ListServiceTemplates>

Returns: a L<Paws::Proton::ListServiceTemplatesOutput> instance

List service templates with detail data.


=head2 ListServiceTemplateVersions

=over

=item TemplateName => Str

=item [MajorVersion => Str]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Proton::ListServiceTemplateVersions>

Returns: a L<Paws::Proton::ListServiceTemplateVersionsOutput> instance

List major or minor versions of a service template with detail data.


=head2 ListTagsForResource

=over

=item ResourceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Proton::ListTagsForResource>

Returns: a L<Paws::Proton::ListTagsForResourceOutput> instance

List tags for a resource. For more information, see I<AWS Proton
resources and tagging> in the AWS Proton Administration Guide
(https://docs.aws.amazon.com/proton/latest/adminguide/resources.html)
or AWS Proton User Guide
(https://docs.aws.amazon.com/proton/latest/userguide/resources.html).


=head2 RejectEnvironmentAccountConnection

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Proton::RejectEnvironmentAccountConnection>

Returns: a L<Paws::Proton::RejectEnvironmentAccountConnectionOutput> instance

In a management account, reject an environment account connection from
another environment account.

After you reject an environment account connection request, you
I<wonE<rsquo>t> be able to accept or use the rejected environment
account connection.

You I<canE<rsquo>t> reject an environment account connection that is
connected to an environment.

For more information, see Environment account connections in the I<AWS
Proton Administration guide>.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::Proton::Tag>]


=back

Each argument is described in detail in: L<Paws::Proton::TagResource>

Returns: a L<Paws::Proton::TagResourceOutput> instance

Tag a resource. For more information, see I<AWS Proton resources and
tagging> in the AWS Proton Administration Guide
(https://docs.aws.amazon.com/proton/latest/adminguide/resources.html)
or AWS Proton User Guide
(https://docs.aws.amazon.com/proton/latest/userguide/resources.html).


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Proton::UntagResource>

Returns: a L<Paws::Proton::UntagResourceOutput> instance

Remove a tag from a resource. For more information, see I<AWS Proton
resources and tagging> in the AWS Proton Administration Guide
(https://docs.aws.amazon.com/proton/latest/adminguide/resources.html)
or AWS Proton User Guide
(https://docs.aws.amazon.com/proton/latest/userguide/resources.html).


=head2 UpdateAccountSettings

=over

=item [PipelineServiceRoleArn => Str]


=back

Each argument is described in detail in: L<Paws::Proton::UpdateAccountSettings>

Returns: a L<Paws::Proton::UpdateAccountSettingsOutput> instance

Update the AWS Proton pipeline service account settings.


=head2 UpdateEnvironment

=over

=item DeploymentType => Str

=item Name => Str

=item [Description => Str]

=item [EnvironmentAccountConnectionId => Str]

=item [ProtonServiceRoleArn => Str]

=item [Spec => Str]

=item [TemplateMajorVersion => Str]

=item [TemplateMinorVersion => Str]


=back

Each argument is described in detail in: L<Paws::Proton::UpdateEnvironment>

Returns: a L<Paws::Proton::UpdateEnvironmentOutput> instance

Update an environment.

If the environment is associated with an environment account
connection, I<don't> update or include the C<protonServiceRoleArn>
parameter to update or connect to an environment account connection.

You can only update to a new environment account connection if it was
created in the same environment account that the current environment
account connection was created in and associated with the current
environment.

If the environment I<isn't> associated with an environment account
connection, I<don't> update or include the
C<environmentAccountConnectionId> parameter to update or connect to an
environment account connection.

You can update either the C<environmentAccountConnectionId> or
C<protonServiceRoleArn> parameter and value. You canE<rsquo>t update
both.

There are four modes for updating an environment as described in the
following. The C<deploymentType> field defines the mode.

=over

=item C<NONE>

In this mode, a deployment I<doesn't> occur. Only the requested
metadata parameters are updated.

=item C<CURRENT_VERSION>

In this mode, the environment is deployed and updated with the new spec
that you provide. Only requested parameters are updated.
I<DonE<rsquo>t> include minor or major version parameters when you use
this C<deployment-type>.

=item C<MINOR_VERSION>

In this mode, the environment is deployed and updated with the
published, recommended (latest) minor version of the current major
version in use, by default. You can also specify a different minor
version of the current major version in use.

=item C<MAJOR_VERSION>

In this mode, the environment is deployed and updated with the
published, recommended (latest) major and minor version of the current
template, by default. You can also specify a different major version
that's higher than the major version in use and a minor version
(optional).

=back



=head2 UpdateEnvironmentAccountConnection

=over

=item Id => Str

=item RoleArn => Str


=back

Each argument is described in detail in: L<Paws::Proton::UpdateEnvironmentAccountConnection>

Returns: a L<Paws::Proton::UpdateEnvironmentAccountConnectionOutput> instance

In an environment account, update an environment account connection to
use a new IAM role.

For more information, see Environment account connections in the I<AWS
Proton Administration guide>.


=head2 UpdateEnvironmentTemplate

=over

=item Name => Str

=item [Description => Str]

=item [DisplayName => Str]


=back

Each argument is described in detail in: L<Paws::Proton::UpdateEnvironmentTemplate>

Returns: a L<Paws::Proton::UpdateEnvironmentTemplateOutput> instance

Update an environment template.


=head2 UpdateEnvironmentTemplateVersion

=over

=item MajorVersion => Str

=item MinorVersion => Str

=item TemplateName => Str

=item [Description => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Proton::UpdateEnvironmentTemplateVersion>

Returns: a L<Paws::Proton::UpdateEnvironmentTemplateVersionOutput> instance

Update a major or minor version of an environment template.


=head2 UpdateService

=over

=item Name => Str

=item [Description => Str]

=item [Spec => Str]


=back

Each argument is described in detail in: L<Paws::Proton::UpdateService>

Returns: a L<Paws::Proton::UpdateServiceOutput> instance

Edit a service description or use a spec to add and delete service
instances.

Existing service instances and the service pipeline I<can't> be edited
using this API. They can only be deleted.

Use the C<description> parameter to modify the description.

Edit the C<spec> parameter to add or delete instances.


=head2 UpdateServiceInstance

=over

=item DeploymentType => Str

=item Name => Str

=item ServiceName => Str

=item [Spec => Str]

=item [TemplateMajorVersion => Str]

=item [TemplateMinorVersion => Str]


=back

Each argument is described in detail in: L<Paws::Proton::UpdateServiceInstance>

Returns: a L<Paws::Proton::UpdateServiceInstanceOutput> instance

Update a service instance.

There are four modes for updating a service instance as described in
the following. The C<deploymentType> field defines the mode.

=over

=item C<NONE>

In this mode, a deployment I<doesn't> occur. Only the requested
metadata parameters are updated.

=item C<CURRENT_VERSION>

In this mode, the service instance is deployed and updated with the new
spec that you provide. Only requested parameters are updated.
I<DonE<rsquo>t> include minor or major version parameters when you use
this C<deployment-type>.

=item C<MINOR_VERSION>

In this mode, the service instance is deployed and updated with the
published, recommended (latest) minor version of the current major
version in use, by default. You can also specify a different minor
version of the current major version in use.

=item C<MAJOR_VERSION>

In this mode, the service instance is deployed and updated with the
published, recommended (latest) major and minor version of the current
template, by default. You can also specify a different major version
that is higher than the major version in use and a minor version
(optional).

=back



=head2 UpdateServicePipeline

=over

=item DeploymentType => Str

=item ServiceName => Str

=item Spec => Str

=item [TemplateMajorVersion => Str]

=item [TemplateMinorVersion => Str]


=back

Each argument is described in detail in: L<Paws::Proton::UpdateServicePipeline>

Returns: a L<Paws::Proton::UpdateServicePipelineOutput> instance

Update the service pipeline.

There are four modes for updating a service pipeline as described in
the following. The C<deploymentType> field defines the mode.

=over

=item C<NONE>

In this mode, a deployment I<doesn't> occur. Only the requested
metadata parameters are updated.

=item C<CURRENT_VERSION>

In this mode, the service pipeline is deployed and updated with the new
spec that you provide. Only requested parameters are updated.
I<DonE<rsquo>t> include minor or major version parameters when you use
this C<deployment-type>.

=item C<MINOR_VERSION>

In this mode, the service pipeline is deployed and updated with the
published, recommended (latest) minor version of the current major
version in use, by default. You can also specify a different minor
version of the current major version in use.

=item C<MAJOR_VERSION>

In this mode, the service pipeline is deployed and updated with the
published, recommended (latest) major and minor version of the current
template by default. You can also specify a different major version
that is higher than the major version in use and a minor version
(optional).

=back



=head2 UpdateServiceTemplate

=over

=item Name => Str

=item [Description => Str]

=item [DisplayName => Str]


=back

Each argument is described in detail in: L<Paws::Proton::UpdateServiceTemplate>

Returns: a L<Paws::Proton::UpdateServiceTemplateOutput> instance

Update a service template.


=head2 UpdateServiceTemplateVersion

=over

=item MajorVersion => Str

=item MinorVersion => Str

=item TemplateName => Str

=item [CompatibleEnvironmentTemplates => ArrayRef[L<Paws::Proton::CompatibleEnvironmentTemplateInput>]]

=item [Description => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Proton::UpdateServiceTemplateVersion>

Returns: a L<Paws::Proton::UpdateServiceTemplateVersionOutput> instance

Update a major or minor version of a service template.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllEnvironmentAccountConnections(sub { },RequestedBy => Str, [EnvironmentName => Str, MaxResults => Int, NextToken => Str, Statuses => ArrayRef[Str|Undef]])

=head2 ListAllEnvironmentAccountConnections(RequestedBy => Str, [EnvironmentName => Str, MaxResults => Int, NextToken => Str, Statuses => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - environmentAccountConnections, passing the object as the first parameter, and the string 'environmentAccountConnections' as the second parameter 

If not, it will return a a L<Paws::Proton::ListEnvironmentAccountConnectionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEnvironments(sub { },[EnvironmentTemplates => ArrayRef[L<Paws::Proton::EnvironmentTemplateFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllEnvironments([EnvironmentTemplates => ArrayRef[L<Paws::Proton::EnvironmentTemplateFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - environments, passing the object as the first parameter, and the string 'environments' as the second parameter 

If not, it will return a a L<Paws::Proton::ListEnvironmentsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEnvironmentTemplates(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllEnvironmentTemplates([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - templates, passing the object as the first parameter, and the string 'templates' as the second parameter 

If not, it will return a a L<Paws::Proton::ListEnvironmentTemplatesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEnvironmentTemplateVersions(sub { },TemplateName => Str, [MajorVersion => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllEnvironmentTemplateVersions(TemplateName => Str, [MajorVersion => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - templateVersions, passing the object as the first parameter, and the string 'templateVersions' as the second parameter 

If not, it will return a a L<Paws::Proton::ListEnvironmentTemplateVersionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServiceInstances(sub { },[MaxResults => Int, NextToken => Str, ServiceName => Str])

=head2 ListAllServiceInstances([MaxResults => Int, NextToken => Str, ServiceName => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - serviceInstances, passing the object as the first parameter, and the string 'serviceInstances' as the second parameter 

If not, it will return a a L<Paws::Proton::ListServiceInstancesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServices(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllServices([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - services, passing the object as the first parameter, and the string 'services' as the second parameter 

If not, it will return a a L<Paws::Proton::ListServicesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServiceTemplates(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllServiceTemplates([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - templates, passing the object as the first parameter, and the string 'templates' as the second parameter 

If not, it will return a a L<Paws::Proton::ListServiceTemplatesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllServiceTemplateVersions(sub { },TemplateName => Str, [MajorVersion => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllServiceTemplateVersions(TemplateName => Str, [MajorVersion => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - templateVersions, passing the object as the first parameter, and the string 'templateVersions' as the second parameter 

If not, it will return a a L<Paws::Proton::ListServiceTemplateVersionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTagsForResource(sub { },ResourceArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTagsForResource(ResourceArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - tags, passing the object as the first parameter, and the string 'tags' as the second parameter 

If not, it will return a a L<Paws::Proton::ListTagsForResourceOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

