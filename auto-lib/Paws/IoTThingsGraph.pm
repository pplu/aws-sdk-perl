# Generated from json/service_class.tt
package Paws::IoTThingsGraph;
  use Moo;
  use Types::Standard qw/Int HashRef ArrayRef/;
  sub service { 'iotthingsgraph' }
  sub signing_name { 'iotthingsgraph' }
  sub version { '2018-09-06' }
  sub target_prefix { 'IotThingsGraphFrontEndService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => Int, default => 5);
  has retry => (is => 'ro', isa => HashRef, default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => ArrayRef, default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AssociateEntityToThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::AssociateEntityToThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFlowTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::CreateFlowTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSystemInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::CreateSystemInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSystemTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::CreateSystemTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFlowTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::DeleteFlowTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::DeleteNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSystemInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::DeleteSystemInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSystemTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::DeleteSystemTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeploySystemInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::DeploySystemInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeprecateFlowTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::DeprecateFlowTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeprecateSystemTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::DeprecateSystemTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNamespace {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::DescribeNamespace', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DissociateEntityFromThing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::DissociateEntityFromThing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEntities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::GetEntities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFlowTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::GetFlowTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFlowTemplateRevisions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::GetFlowTemplateRevisions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetNamespaceDeletionStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::GetNamespaceDeletionStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSystemInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::GetSystemInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSystemTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::GetSystemTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSystemTemplateRevisions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::GetSystemTemplateRevisions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUploadStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::GetUploadStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFlowExecutionMessages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::ListFlowExecutionMessages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchEntities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::SearchEntities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchFlowExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::SearchFlowExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchFlowTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::SearchFlowTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchSystemInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::SearchSystemInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchSystemTemplates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::SearchSystemTemplates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchThings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::SearchThings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UndeploySystemInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::UndeploySystemInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFlowTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::UpdateFlowTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSystemTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::UpdateSystemTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UploadEntityDefinitions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::IoTThingsGraph::UploadEntityDefinitions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub GetAllFlowTemplateRevisions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetFlowTemplateRevisions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetFlowTemplateRevisions(@_, nextToken => $next_result->nextToken);
        push @{ $result->summaries }, @{ $next_result->summaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'summaries') foreach (@{ $result->summaries });
        $result = $self->GetFlowTemplateRevisions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'summaries') foreach (@{ $result->summaries });
    }

    return undef
  }
  sub GetAllSystemTemplateRevisions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetSystemTemplateRevisions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->GetSystemTemplateRevisions(@_, nextToken => $next_result->nextToken);
        push @{ $result->summaries }, @{ $next_result->summaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'summaries') foreach (@{ $result->summaries });
        $result = $self->GetSystemTemplateRevisions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'summaries') foreach (@{ $result->summaries });
    }

    return undef
  }
  sub ListAllFlowExecutionMessages {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFlowExecutionMessages(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListFlowExecutionMessages(@_, nextToken => $next_result->nextToken);
        push @{ $result->messages }, @{ $next_result->messages };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'messages') foreach (@{ $result->messages });
        $result = $self->ListFlowExecutionMessages(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'messages') foreach (@{ $result->messages });
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
  sub SearchAllEntities {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchEntities(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->SearchEntities(@_, nextToken => $next_result->nextToken);
        push @{ $result->descriptions }, @{ $next_result->descriptions };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'descriptions') foreach (@{ $result->descriptions });
        $result = $self->SearchEntities(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'descriptions') foreach (@{ $result->descriptions });
    }

    return undef
  }
  sub SearchAllFlowExecutions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchFlowExecutions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->SearchFlowExecutions(@_, nextToken => $next_result->nextToken);
        push @{ $result->summaries }, @{ $next_result->summaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'summaries') foreach (@{ $result->summaries });
        $result = $self->SearchFlowExecutions(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'summaries') foreach (@{ $result->summaries });
    }

    return undef
  }
  sub SearchAllFlowTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchFlowTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->SearchFlowTemplates(@_, nextToken => $next_result->nextToken);
        push @{ $result->summaries }, @{ $next_result->summaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'summaries') foreach (@{ $result->summaries });
        $result = $self->SearchFlowTemplates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'summaries') foreach (@{ $result->summaries });
    }

    return undef
  }
  sub SearchAllSystemInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchSystemInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->SearchSystemInstances(@_, nextToken => $next_result->nextToken);
        push @{ $result->summaries }, @{ $next_result->summaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'summaries') foreach (@{ $result->summaries });
        $result = $self->SearchSystemInstances(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'summaries') foreach (@{ $result->summaries });
    }

    return undef
  }
  sub SearchAllSystemTemplates {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchSystemTemplates(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->SearchSystemTemplates(@_, nextToken => $next_result->nextToken);
        push @{ $result->summaries }, @{ $next_result->summaries };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'summaries') foreach (@{ $result->summaries });
        $result = $self->SearchSystemTemplates(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'summaries') foreach (@{ $result->summaries });
    }

    return undef
  }
  sub SearchAllThings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->SearchThings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->SearchThings(@_, nextToken => $next_result->nextToken);
        push @{ $result->things }, @{ $next_result->things };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'things') foreach (@{ $result->things });
        $result = $self->SearchThings(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'things') foreach (@{ $result->things });
    }

    return undef
  }


  sub operations { qw/AssociateEntityToThing CreateFlowTemplate CreateSystemInstance CreateSystemTemplate DeleteFlowTemplate DeleteNamespace DeleteSystemInstance DeleteSystemTemplate DeploySystemInstance DeprecateFlowTemplate DeprecateSystemTemplate DescribeNamespace DissociateEntityFromThing GetEntities GetFlowTemplate GetFlowTemplateRevisions GetNamespaceDeletionStatus GetSystemInstance GetSystemTemplate GetSystemTemplateRevisions GetUploadStatus ListFlowExecutionMessages ListTagsForResource SearchEntities SearchFlowExecutions SearchFlowTemplates SearchSystemInstances SearchSystemTemplates SearchThings TagResource UndeploySystemInstance UntagResource UpdateFlowTemplate UpdateSystemTemplate UploadEntityDefinitions / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph - Perl Interface to AWS AWS IoT Things Graph

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('IoTThingsGraph');
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

AWS IoT Things Graph

AWS IoT Things Graph provides an integrated set of tools that enable
developers to connect devices and services that use different
standards, such as units of measure and communication protocols. AWS
IoT Things Graph makes it possible to build IoT applications with
little to no code by connecting devices and services and defining how
they interact at an abstract level.

For more information about how AWS IoT Things Graph works, see the User
Guide
(https://docs.aws.amazon.com/thingsgraph/latest/ug/iot-tg-whatis.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iotthingsgraph-2018-09-06>


=head1 METHODS

=head2 AssociateEntityToThing

=over

=item EntityId => Str

=item ThingName => Str

=item [NamespaceVersion => Int]


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::AssociateEntityToThing>

Returns: a L<Paws::IoTThingsGraph::AssociateEntityToThingResponse> instance

Associates a device with a concrete thing that is in the user's
registry.

A thing can be associated with only one device at a time. If you
associate a thing with a new device id, its previous association will
be removed.


=head2 CreateFlowTemplate

=over

=item Definition => IoTThingsGraph_DefinitionDocument

=item [CompatibleNamespaceVersion => Int]


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::CreateFlowTemplate>

Returns: a L<Paws::IoTThingsGraph::CreateFlowTemplateResponse> instance

Creates a workflow template. Workflows can be created only in the
user's namespace. (The public namespace contains only entities.) The
workflow can contain only entities in the specified namespace. The
workflow is validated against the entities in the latest version of the
user's namespace unless another namespace version is specified in the
request.


=head2 CreateSystemInstance

=over

=item Definition => IoTThingsGraph_DefinitionDocument

=item Target => Str

=item [FlowActionsRoleArn => Str]

=item [GreengrassGroupName => Str]

=item [MetricsConfiguration => IoTThingsGraph_MetricsConfiguration]

=item [S3BucketName => Str]

=item [Tags => ArrayRef[IoTThingsGraph_Tag]]


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::CreateSystemInstance>

Returns: a L<Paws::IoTThingsGraph::CreateSystemInstanceResponse> instance

Creates a system instance.

This action validates the system instance, prepares the
deployment-related resources. For Greengrass deployments, it updates
the Greengrass group that is specified by the C<greengrassGroupName>
parameter. It also adds a file to the S3 bucket specified by the
C<s3BucketName> parameter. You need to call C<DeploySystemInstance>
after running this action.

For Greengrass deployments, since this action modifies and adds
resources to a Greengrass group and an S3 bucket on the caller's
behalf, the calling identity must have write permissions to both the
specified Greengrass group and S3 bucket. Otherwise, the call will fail
with an authorization error.

For cloud deployments, this action requires a C<flowActionsRoleArn>
value. This is an IAM role that has permissions to access AWS services,
such as AWS Lambda and AWS IoT, that the flow uses when it executes.

If the definition document doesn't specify a version of the user's
namespace, the latest version will be used by default.


=head2 CreateSystemTemplate

=over

=item Definition => IoTThingsGraph_DefinitionDocument

=item [CompatibleNamespaceVersion => Int]


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::CreateSystemTemplate>

Returns: a L<Paws::IoTThingsGraph::CreateSystemTemplateResponse> instance

Creates a system. The system is validated against the entities in the
latest version of the user's namespace unless another namespace version
is specified in the request.


=head2 DeleteFlowTemplate

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::DeleteFlowTemplate>

Returns: a L<Paws::IoTThingsGraph::DeleteFlowTemplateResponse> instance

Deletes a workflow. Any new system or deployment that contains this
workflow will fail to update or deploy. Existing deployments that
contain the workflow will continue to run (since they use a snapshot of
the workflow taken at the time of deployment).


=head2 DeleteNamespace






Each argument is described in detail in: L<Paws::IoTThingsGraph::DeleteNamespace>

Returns: a L<Paws::IoTThingsGraph::DeleteNamespaceResponse> instance

Deletes the specified namespace. This action deletes all of the
entities in the namespace. Delete the systems and flows that use
entities in the namespace before performing this action.


=head2 DeleteSystemInstance

=over

=item [Id => Str]


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::DeleteSystemInstance>

Returns: a L<Paws::IoTThingsGraph::DeleteSystemInstanceResponse> instance

Deletes a system instance. Only system instances that have never been
deployed, or that have been undeployed can be deleted.

Users can create a new system instance that has the same ID as a
deleted system instance.


=head2 DeleteSystemTemplate

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::DeleteSystemTemplate>

Returns: a L<Paws::IoTThingsGraph::DeleteSystemTemplateResponse> instance

Deletes a system. New deployments can't contain the system after its
deletion. Existing deployments that contain the system will continue to
work because they use a snapshot of the system that is taken when it is
deployed.


=head2 DeploySystemInstance

=over

=item [Id => Str]


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::DeploySystemInstance>

Returns: a L<Paws::IoTThingsGraph::DeploySystemInstanceResponse> instance

B<Greengrass and Cloud Deployments>

Deploys the system instance to the target specified in
C<CreateSystemInstance>.

B<Greengrass Deployments>

If the system or any workflows and entities have been updated before
this action is called, then the deployment will create a new Amazon
Simple Storage Service resource file and then deploy it.

Since this action creates a Greengrass deployment on the caller's
behalf, the calling identity must have write permissions to the
specified Greengrass group. Otherwise, the call will fail with an
authorization error.

For information about the artifacts that get added to your Greengrass
core device when you use this API, see AWS IoT Things Graph and AWS IoT
Greengrass
(https://docs.aws.amazon.com/thingsgraph/latest/ug/iot-tg-greengrass.html).


=head2 DeprecateFlowTemplate

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::DeprecateFlowTemplate>

Returns: a L<Paws::IoTThingsGraph::DeprecateFlowTemplateResponse> instance

Deprecates the specified workflow. This action marks the workflow for
deletion. Deprecated flows can't be deployed, but existing deployments
will continue to run.


=head2 DeprecateSystemTemplate

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::DeprecateSystemTemplate>

Returns: a L<Paws::IoTThingsGraph::DeprecateSystemTemplateResponse> instance

Deprecates the specified system.


=head2 DescribeNamespace

=over

=item [NamespaceName => Str]


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::DescribeNamespace>

Returns: a L<Paws::IoTThingsGraph::DescribeNamespaceResponse> instance

Gets the latest version of the user's namespace and the public version
that it is tracking.


=head2 DissociateEntityFromThing

=over

=item EntityType => Str

=item ThingName => Str


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::DissociateEntityFromThing>

Returns: a L<Paws::IoTThingsGraph::DissociateEntityFromThingResponse> instance

Dissociates a device entity from a concrete thing. The action takes
only the type of the entity that you need to dissociate because only
one entity of a particular type can be associated with a thing.


=head2 GetEntities

=over

=item Ids => ArrayRef[Str|Undef]

=item [NamespaceVersion => Int]


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::GetEntities>

Returns: a L<Paws::IoTThingsGraph::GetEntitiesResponse> instance

Gets definitions of the specified entities. Uses the latest version of
the user's namespace by default. This API returns the following TDM
entities.

=over

=item *

Properties

=item *

States

=item *

Events

=item *

Actions

=item *

Capabilities

=item *

Mappings

=item *

Devices

=item *

Device Models

=item *

Services

=back

This action doesn't return definitions for systems, flows, and
deployments.


=head2 GetFlowTemplate

=over

=item Id => Str

=item [RevisionNumber => Int]


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::GetFlowTemplate>

Returns: a L<Paws::IoTThingsGraph::GetFlowTemplateResponse> instance

Gets the latest version of the C<DefinitionDocument> and
C<FlowTemplateSummary> for the specified workflow.


=head2 GetFlowTemplateRevisions

=over

=item Id => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::GetFlowTemplateRevisions>

Returns: a L<Paws::IoTThingsGraph::GetFlowTemplateRevisionsResponse> instance

Gets revisions of the specified workflow. Only the last 100 revisions
are stored. If the workflow has been deprecated, this action will
return revisions that occurred before the deprecation. This action
won't work for workflows that have been deleted.


=head2 GetNamespaceDeletionStatus






Each argument is described in detail in: L<Paws::IoTThingsGraph::GetNamespaceDeletionStatus>

Returns: a L<Paws::IoTThingsGraph::GetNamespaceDeletionStatusResponse> instance

Gets the status of a namespace deletion task.


=head2 GetSystemInstance

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::GetSystemInstance>

Returns: a L<Paws::IoTThingsGraph::GetSystemInstanceResponse> instance

Gets a system instance.


=head2 GetSystemTemplate

=over

=item Id => Str

=item [RevisionNumber => Int]


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::GetSystemTemplate>

Returns: a L<Paws::IoTThingsGraph::GetSystemTemplateResponse> instance

Gets a system.


=head2 GetSystemTemplateRevisions

=over

=item Id => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::GetSystemTemplateRevisions>

Returns: a L<Paws::IoTThingsGraph::GetSystemTemplateRevisionsResponse> instance

Gets revisions made to the specified system template. Only the previous
100 revisions are stored. If the system has been deprecated, this
action will return the revisions that occurred before its deprecation.
This action won't work with systems that have been deleted.


=head2 GetUploadStatus

=over

=item UploadId => Str


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::GetUploadStatus>

Returns: a L<Paws::IoTThingsGraph::GetUploadStatusResponse> instance

Gets the status of the specified upload.


=head2 ListFlowExecutionMessages

=over

=item FlowExecutionId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::ListFlowExecutionMessages>

Returns: a L<Paws::IoTThingsGraph::ListFlowExecutionMessagesResponse> instance

Returns a list of objects that contain information about events in a
flow execution.


=head2 ListTagsForResource

=over

=item ResourceArn => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::ListTagsForResource>

Returns: a L<Paws::IoTThingsGraph::ListTagsForResourceResponse> instance

Lists all tags on an AWS IoT Things Graph resource.


=head2 SearchEntities

=over

=item EntityTypes => ArrayRef[Str|Undef]

=item [Filters => ArrayRef[IoTThingsGraph_EntityFilter]]

=item [MaxResults => Int]

=item [NamespaceVersion => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::SearchEntities>

Returns: a L<Paws::IoTThingsGraph::SearchEntitiesResponse> instance

Searches for entities of the specified type. You can search for
entities in your namespace and the public namespace that you're
tracking.


=head2 SearchFlowExecutions

=over

=item SystemInstanceId => Str

=item [EndTime => Str]

=item [FlowExecutionId => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StartTime => Str]


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::SearchFlowExecutions>

Returns: a L<Paws::IoTThingsGraph::SearchFlowExecutionsResponse> instance

Searches for AWS IoT Things Graph workflow execution instances.


=head2 SearchFlowTemplates

=over

=item [Filters => ArrayRef[IoTThingsGraph_FlowTemplateFilter]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::SearchFlowTemplates>

Returns: a L<Paws::IoTThingsGraph::SearchFlowTemplatesResponse> instance

Searches for summary information about workflows.


=head2 SearchSystemInstances

=over

=item [Filters => ArrayRef[IoTThingsGraph_SystemInstanceFilter]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::SearchSystemInstances>

Returns: a L<Paws::IoTThingsGraph::SearchSystemInstancesResponse> instance

Searches for system instances in the user's account.


=head2 SearchSystemTemplates

=over

=item [Filters => ArrayRef[IoTThingsGraph_SystemTemplateFilter]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::SearchSystemTemplates>

Returns: a L<Paws::IoTThingsGraph::SearchSystemTemplatesResponse> instance

Searches for summary information about systems in the user's account.
You can filter by the ID of a workflow to return only systems that use
the specified workflow.


=head2 SearchThings

=over

=item EntityId => Str

=item [MaxResults => Int]

=item [NamespaceVersion => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::SearchThings>

Returns: a L<Paws::IoTThingsGraph::SearchThingsResponse> instance

Searches for things associated with the specified entity. You can
search by both device and device model.

For example, if two different devices, camera1 and camera2, implement
the camera device model, the user can associate thing1 to camera1 and
thing2 to camera2. C<SearchThings(camera2)> will return only thing2,
but C<SearchThings(camera)> will return both thing1 and thing2.

This action searches for exact matches and doesn't perform partial text
matching.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[IoTThingsGraph_Tag]


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::TagResource>

Returns: a L<Paws::IoTThingsGraph::TagResourceResponse> instance

Creates a tag for the specified resource.


=head2 UndeploySystemInstance

=over

=item [Id => Str]


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::UndeploySystemInstance>

Returns: a L<Paws::IoTThingsGraph::UndeploySystemInstanceResponse> instance

Removes a system instance from its target (Cloud or Greengrass).


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::UntagResource>

Returns: a L<Paws::IoTThingsGraph::UntagResourceResponse> instance

Removes a tag from the specified resource.


=head2 UpdateFlowTemplate

=over

=item Definition => IoTThingsGraph_DefinitionDocument

=item Id => Str

=item [CompatibleNamespaceVersion => Int]


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::UpdateFlowTemplate>

Returns: a L<Paws::IoTThingsGraph::UpdateFlowTemplateResponse> instance

Updates the specified workflow. All deployed systems and system
instances that use the workflow will see the changes in the flow when
it is redeployed. If you don't want this behavior, copy the workflow
(creating a new workflow with a different ID), and update the copy. The
workflow can contain only entities in the specified namespace.


=head2 UpdateSystemTemplate

=over

=item Definition => IoTThingsGraph_DefinitionDocument

=item Id => Str

=item [CompatibleNamespaceVersion => Int]


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::UpdateSystemTemplate>

Returns: a L<Paws::IoTThingsGraph::UpdateSystemTemplateResponse> instance

Updates the specified system. You don't need to run this action after
updating a workflow. Any deployment that uses the system will see the
changes in the system when it is redeployed.


=head2 UploadEntityDefinitions

=over

=item [DeprecateExistingEntities => Bool]

=item [Document => IoTThingsGraph_DefinitionDocument]

=item [SyncWithPublicNamespace => Bool]


=back

Each argument is described in detail in: L<Paws::IoTThingsGraph::UploadEntityDefinitions>

Returns: a L<Paws::IoTThingsGraph::UploadEntityDefinitionsResponse> instance

Asynchronously uploads one or more entity definitions to the user's
namespace. The C<document> parameter is required if
C<syncWithPublicNamespace> and C<deleteExistingEntites> are false. If
the C<syncWithPublicNamespace> parameter is set to C<true>, the user's
namespace will synchronize with the latest version of the public
namespace. If C<deprecateExistingEntities> is set to true, all entities
in the latest version will be deleted before the new
C<DefinitionDocument> is uploaded.

When a user uploads entity definitions for the first time, the service
creates a new namespace for the user. The new namespace tracks the
public namespace. Currently users can have only one namespace. The
namespace version increments whenever a user uploads entity definitions
that are backwards-incompatible and whenever a user sets the
C<syncWithPublicNamespace> parameter or the
C<deprecateExistingEntities> parameter to C<true>.

The IDs for all of the entities should be in URN format. Each entity
must be in the user's namespace. Users can't create entities in the
public namespace, but entity definitions can refer to entities in the
public namespace.

Valid entities are C<Device>, C<DeviceModel>, C<Service>,
C<Capability>, C<State>, C<Action>, C<Event>, C<Property>, C<Mapping>,
C<Enum>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 GetAllFlowTemplateRevisions(sub { },Id => Str, [MaxResults => Int, NextToken => Str])

=head2 GetAllFlowTemplateRevisions(Id => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - summaries, passing the object as the first parameter, and the string 'summaries' as the second parameter 

If not, it will return a a L<Paws::IoTThingsGraph::GetFlowTemplateRevisionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllSystemTemplateRevisions(sub { },Id => Str, [MaxResults => Int, NextToken => Str])

=head2 GetAllSystemTemplateRevisions(Id => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - summaries, passing the object as the first parameter, and the string 'summaries' as the second parameter 

If not, it will return a a L<Paws::IoTThingsGraph::GetSystemTemplateRevisionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFlowExecutionMessages(sub { },FlowExecutionId => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllFlowExecutionMessages(FlowExecutionId => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - messages, passing the object as the first parameter, and the string 'messages' as the second parameter 

If not, it will return a a L<Paws::IoTThingsGraph::ListFlowExecutionMessagesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTagsForResource(sub { },ResourceArn => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllTagsForResource(ResourceArn => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - tags, passing the object as the first parameter, and the string 'tags' as the second parameter 

If not, it will return a a L<Paws::IoTThingsGraph::ListTagsForResourceResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllEntities(sub { },EntityTypes => ArrayRef[Str|Undef], [Filters => ArrayRef[IoTThingsGraph_EntityFilter], MaxResults => Int, NamespaceVersion => Int, NextToken => Str])

=head2 SearchAllEntities(EntityTypes => ArrayRef[Str|Undef], [Filters => ArrayRef[IoTThingsGraph_EntityFilter], MaxResults => Int, NamespaceVersion => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - descriptions, passing the object as the first parameter, and the string 'descriptions' as the second parameter 

If not, it will return a a L<Paws::IoTThingsGraph::SearchEntitiesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllFlowExecutions(sub { },SystemInstanceId => Str, [EndTime => Str, FlowExecutionId => Str, MaxResults => Int, NextToken => Str, StartTime => Str])

=head2 SearchAllFlowExecutions(SystemInstanceId => Str, [EndTime => Str, FlowExecutionId => Str, MaxResults => Int, NextToken => Str, StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - summaries, passing the object as the first parameter, and the string 'summaries' as the second parameter 

If not, it will return a a L<Paws::IoTThingsGraph::SearchFlowExecutionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllFlowTemplates(sub { },[Filters => ArrayRef[IoTThingsGraph_FlowTemplateFilter], MaxResults => Int, NextToken => Str])

=head2 SearchAllFlowTemplates([Filters => ArrayRef[IoTThingsGraph_FlowTemplateFilter], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - summaries, passing the object as the first parameter, and the string 'summaries' as the second parameter 

If not, it will return a a L<Paws::IoTThingsGraph::SearchFlowTemplatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllSystemInstances(sub { },[Filters => ArrayRef[IoTThingsGraph_SystemInstanceFilter], MaxResults => Int, NextToken => Str])

=head2 SearchAllSystemInstances([Filters => ArrayRef[IoTThingsGraph_SystemInstanceFilter], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - summaries, passing the object as the first parameter, and the string 'summaries' as the second parameter 

If not, it will return a a L<Paws::IoTThingsGraph::SearchSystemInstancesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllSystemTemplates(sub { },[Filters => ArrayRef[IoTThingsGraph_SystemTemplateFilter], MaxResults => Int, NextToken => Str])

=head2 SearchAllSystemTemplates([Filters => ArrayRef[IoTThingsGraph_SystemTemplateFilter], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - summaries, passing the object as the first parameter, and the string 'summaries' as the second parameter 

If not, it will return a a L<Paws::IoTThingsGraph::SearchSystemTemplatesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 SearchAllThings(sub { },EntityId => Str, [MaxResults => Int, NamespaceVersion => Int, NextToken => Str])

=head2 SearchAllThings(EntityId => Str, [MaxResults => Int, NamespaceVersion => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - things, passing the object as the first parameter, and the string 'things' as the second parameter 

If not, it will return a a L<Paws::IoTThingsGraph::SearchThingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

