package Paws::MigrationHub;
  use Moose;
  sub service { 'mgh' }
  sub version { '2017-05-31' }
  sub target_prefix { 'AWSMigrationHub' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub AssociateCreatedArtifact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHub::AssociateCreatedArtifact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateDiscoveredResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHub::AssociateDiscoveredResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateProgressUpdateStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHub::CreateProgressUpdateStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteProgressUpdateStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHub::DeleteProgressUpdateStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeApplicationState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHub::DescribeApplicationState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMigrationTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHub::DescribeMigrationTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateCreatedArtifact {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHub::DisassociateCreatedArtifact', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateDiscoveredResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHub::DisassociateDiscoveredResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportMigrationTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHub::ImportMigrationTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCreatedArtifacts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHub::ListCreatedArtifacts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDiscoveredResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHub::ListDiscoveredResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMigrationTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHub::ListMigrationTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListProgressUpdateStreams {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHub::ListProgressUpdateStreams', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub NotifyApplicationState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHub::NotifyApplicationState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub NotifyMigrationTaskState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHub::NotifyMigrationTaskState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutResourceAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MigrationHub::PutResourceAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AssociateCreatedArtifact AssociateDiscoveredResource CreateProgressUpdateStream DeleteProgressUpdateStream DescribeApplicationState DescribeMigrationTask DisassociateCreatedArtifact DisassociateDiscoveredResource ImportMigrationTask ListCreatedArtifacts ListDiscoveredResources ListMigrationTasks ListProgressUpdateStreams NotifyApplicationState NotifyMigrationTaskState PutResourceAttributes / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub - Perl Interface to AWS AWS Migration Hub

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MigrationHub');
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



=head1 METHODS

=head2 AssociateCreatedArtifact(CreatedArtifact => L<Paws::MigrationHub::CreatedArtifact>, MigrationTaskName => Str, ProgressUpdateStream => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::MigrationHub::AssociateCreatedArtifact>

Returns: a L<Paws::MigrationHub::AssociateCreatedArtifactResult> instance

  Associates a created artifact of an AWS cloud resource, the target
receiving the migration, with the migration task performed by a
migration tool. This API has the following traits:

=over

=item *

Migration tools can call the C<AssociateCreatedArtifact> operation to
indicate which AWS artifact is associated with a migration task.

=item *

The created artifact name must be provided in ARN (Amazon Resource
Name) format which will contain information about type and region; for
example: C<arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b>.

=item *

Examples of the AWS resource behind the created artifact are, AMI's,
EC2 instance, or DMS endpoint, etc.

=back



=head2 AssociateDiscoveredResource(DiscoveredResource => L<Paws::MigrationHub::DiscoveredResource>, MigrationTaskName => Str, ProgressUpdateStream => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::MigrationHub::AssociateDiscoveredResource>

Returns: a L<Paws::MigrationHub::AssociateDiscoveredResourceResult> instance

  Associates a discovered resource ID from Application Discovery Service
(ADS) with a migration task.


=head2 CreateProgressUpdateStream(ProgressUpdateStreamName => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::MigrationHub::CreateProgressUpdateStream>

Returns: a L<Paws::MigrationHub::CreateProgressUpdateStreamResult> instance

  Creates a progress update stream which is an AWS resource used for
access control as well as a namespace for migration task names that is
implicitly linked to your AWS account. It must uniquely identify the
migration tool as it is used for all updates made by the tool; however,
it does not need to be unique for each AWS account because it is scoped
to the AWS account.


=head2 DeleteProgressUpdateStream(ProgressUpdateStreamName => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::MigrationHub::DeleteProgressUpdateStream>

Returns: a L<Paws::MigrationHub::DeleteProgressUpdateStreamResult> instance

  Deletes a progress update stream, including all of its tasks, which was
previously created as an AWS resource used for access control. This API
has the following traits:

=over

=item *

The only parameter needed for C<DeleteProgressUpdateStream> is the
stream name (same as a C<CreateProgressUpdateStream> call).

=item *

The call will return, and a background process will asynchronously be
doing the actual delete of the stream and all of its resources (tasks,
associated resources, resource attributes, created artifacts).

=item *

If the stream takes time to be deleted, it might still show up on a
C<ListProgressUpdateStreams> call.

=item *

C<CreateProgressUpdateStream>, C<ImportMigrationTask>,
C<NotifyMigrationTaskState>, and all Associate[*] APIs realted to the
tasks belonging to the stream will throw "InvalidInputException" if the
stream of the same name is in the process of being deleted.

=item *

Once the stream and all of its resources are deleted,
C<CreateProgressUpdateStream> for a stream of the same name will
succeed, and that stream will be an entirely new logical resource
(without any resources associated with the old stream).

=back



=head2 DescribeApplicationState(ApplicationId => Str)

Each argument is described in detail in: L<Paws::MigrationHub::DescribeApplicationState>

Returns: a L<Paws::MigrationHub::DescribeApplicationStateResult> instance

  Gets the migration status of an application.


=head2 DescribeMigrationTask(MigrationTaskName => Str, ProgressUpdateStream => Str)

Each argument is described in detail in: L<Paws::MigrationHub::DescribeMigrationTask>

Returns: a L<Paws::MigrationHub::DescribeMigrationTaskResult> instance

  Retrieves a list of all attributes associated with a specific migration
task.


=head2 DisassociateCreatedArtifact(CreatedArtifactName => Str, MigrationTaskName => Str, ProgressUpdateStream => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::MigrationHub::DisassociateCreatedArtifact>

Returns: a L<Paws::MigrationHub::DisassociateCreatedArtifactResult> instance

  Disassociates a created artifact of an AWS resource with a migration
task performed by a migration tool that was previously associated. This
API has the following traits:

=over

=item *

A migration user can call the C<DisassociateCreatedArtifacts> operation
to disassociate a created AWS Artifact from a migration task.

=item *

The created artifact name must be provided in ARN (Amazon Resource
Name) format which will contain information about type and region; for
example: C<arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b>.

=item *

Examples of the AWS resource behind the created artifact are, AMI's,
EC2 instance, or RDS instance, etc.

=back



=head2 DisassociateDiscoveredResource(ConfigurationId => Str, MigrationTaskName => Str, ProgressUpdateStream => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::MigrationHub::DisassociateDiscoveredResource>

Returns: a L<Paws::MigrationHub::DisassociateDiscoveredResourceResult> instance

  Disassociate an Application Discovery Service (ADS) discovered resource
from a migration task.


=head2 ImportMigrationTask(MigrationTaskName => Str, ProgressUpdateStream => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::MigrationHub::ImportMigrationTask>

Returns: a L<Paws::MigrationHub::ImportMigrationTaskResult> instance

  Registers a new migration task which represents a server, database,
etc., being migrated to AWS by a migration tool.

This API is a prerequisite to calling the C<NotifyMigrationTaskState>
API as the migration tool must first register the migration task with
Migration Hub.


=head2 ListCreatedArtifacts(MigrationTaskName => Str, ProgressUpdateStream => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::MigrationHub::ListCreatedArtifacts>

Returns: a L<Paws::MigrationHub::ListCreatedArtifactsResult> instance

  Lists the created artifacts attached to a given migration task in an
update stream. This API has the following traits:

=over

=item *

Gets the list of the created artifacts while migration is taking place.

=item *

Shows the artifacts created by the migration tool that was associated
by the C<AssociateCreatedArtifact> API.

=item *

Lists created artifacts in a paginated interface.

=back



=head2 ListDiscoveredResources(MigrationTaskName => Str, ProgressUpdateStream => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::MigrationHub::ListDiscoveredResources>

Returns: a L<Paws::MigrationHub::ListDiscoveredResourcesResult> instance

  Lists discovered resources associated with the given C<MigrationTask>.


=head2 ListMigrationTasks([MaxResults => Int, NextToken => Str, ResourceName => Str])

Each argument is described in detail in: L<Paws::MigrationHub::ListMigrationTasks>

Returns: a L<Paws::MigrationHub::ListMigrationTasksResult> instance

  Lists all, or filtered by resource name, migration tasks associated
with the user account making this call. This API has the following
traits:

=over

=item *

Can show a summary list of the most recent migration tasks.

=item *

Can show a summary list of migration tasks associated with a given
discovered resource.

=item *

Lists migration tasks in a paginated interface.

=back



=head2 ListProgressUpdateStreams([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::MigrationHub::ListProgressUpdateStreams>

Returns: a L<Paws::MigrationHub::ListProgressUpdateStreamsResult> instance

  Lists progress update streams associated with the user account making
this call.


=head2 NotifyApplicationState(ApplicationId => Str, Status => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::MigrationHub::NotifyApplicationState>

Returns: a L<Paws::MigrationHub::NotifyApplicationStateResult> instance

  Sets the migration state of an application. For a given application
identified by the value passed to C<ApplicationId>, its status is set
or updated by passing one of three values to C<Status>: C<NOT_STARTED |
IN_PROGRESS | COMPLETED>.


=head2 NotifyMigrationTaskState(MigrationTaskName => Str, NextUpdateSeconds => Int, ProgressUpdateStream => Str, Task => L<Paws::MigrationHub::Task>, UpdateDateTime => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::MigrationHub::NotifyMigrationTaskState>

Returns: a L<Paws::MigrationHub::NotifyMigrationTaskStateResult> instance

  Notifies Migration Hub of the current status, progress, or other detail
regarding a migration task. This API has the following traits:

=over

=item *

Migration tools will call the C<NotifyMigrationTaskState> API to share
the latest progress and status.

=item *

C<MigrationTaskName> is used for addressing updates to the correct
target.

=item *

C<ProgressUpdateStream> is used for access control and to provide a
namespace for each migration tool.

=back



=head2 PutResourceAttributes(MigrationTaskName => Str, ProgressUpdateStream => Str, ResourceAttributeList => ArrayRef[L<Paws::MigrationHub::ResourceAttribute>], [DryRun => Bool])

Each argument is described in detail in: L<Paws::MigrationHub::PutResourceAttributes>

Returns: a L<Paws::MigrationHub::PutResourceAttributesResult> instance

  Provides identifying details of the resource being migrated so that it
can be associated in the Application Discovery Service (ADS)'s
repository. This association occurs asynchronously after
C<PutResourceAttributes> returns.

Keep in mind that subsequent calls to PutResourceAttributes will
override previously stored attributes. For example, if it is first
called with a MAC address, but later, it is desired to I<add> an IP
address, it will then be required to call it with I<both> the IP and
MAC addresses to prevent overiding the MAC address.

Because this is an asynchronous call, it will always return 200,
whether an association occurs or not. To confirm if an association was
found based on the provided details, call C<ListAssociatedResource>.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

