package Paws::SSM;
  use Moose;
  sub service { 'ssm' }
  sub version { '2014-11-06' }
  sub target_prefix { 'AmazonSSM' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub AddTagsToResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::AddTagsToResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelCommand {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::CancelCommand', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateActivation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::CreateActivation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::CreateAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAssociationBatch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::CreateAssociationBatch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::CreateDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteActivation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DeleteActivation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DeleteAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DeleteDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterManagedInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DeregisterManagedInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeActivations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribeActivations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribeAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribeDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDocumentPermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribeDocumentPermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceInformation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribeInstanceInformation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::GetDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::ListAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCommandInvocations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::ListCommandInvocations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCommands {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::ListCommands', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDocuments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::ListDocuments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDocumentPermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::ModifyDocumentPermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveTagsFromResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::RemoveTagsFromResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendCommand {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::SendCommand', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAssociationStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::UpdateAssociationStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateManagedInstanceRole {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::UpdateManagedInstanceRole', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssociations(@_);

    if (not defined $callback) {
      while ($result->NextToken) {
        $result = $self->ListAssociations(@_, NextToken => $result->NextToken);
        push @{ $result->Associations }, @{ $result->Associations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $result = $self->ListAssociations(@_, NextToken => $result->NextToken);
        $callback->($_ => 'Associations') foreach (@{ $result->Associations });
      }
    }

    return undef
  }
  sub ListAllCommandInvocations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCommandInvocations(@_);

    if (not defined $callback) {
      while ($result->NextToken) {
        $result = $self->ListCommandInvocations(@_, NextToken => $result->NextToken);
        push @{ $result->CommandInvocations }, @{ $result->CommandInvocations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $result = $self->ListCommandInvocations(@_, NextToken => $result->NextToken);
        $callback->($_ => 'CommandInvocations') foreach (@{ $result->CommandInvocations });
      }
    }

    return undef
  }
  sub ListAllCommands {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCommands(@_);

    if (not defined $callback) {
      while ($result->NextToken) {
        $result = $self->ListCommands(@_, NextToken => $result->NextToken);
        push @{ $result->Commands }, @{ $result->Commands };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $result = $self->ListCommands(@_, NextToken => $result->NextToken);
        $callback->($_ => 'Commands') foreach (@{ $result->Commands });
      }
    }

    return undef
  }
  sub ListAllDocuments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDocuments(@_);

    if (not defined $callback) {
      while ($result->NextToken) {
        $result = $self->ListDocuments(@_, NextToken => $result->NextToken);
        push @{ $result->DocumentIdentifiers }, @{ $result->DocumentIdentifiers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $result = $self->ListDocuments(@_, NextToken => $result->NextToken);
        $callback->($_ => 'DocumentIdentifiers') foreach (@{ $result->DocumentIdentifiers });
      }
    }

    return undef
  }


  sub operations { qw/AddTagsToResource CancelCommand CreateActivation CreateAssociation CreateAssociationBatch CreateDocument DeleteActivation DeleteAssociation DeleteDocument DeregisterManagedInstance DescribeActivations DescribeAssociation DescribeDocument DescribeDocumentPermission DescribeInstanceInformation GetDocument ListAssociations ListCommandInvocations ListCommands ListDocuments ListTagsForResource ModifyDocumentPermission RemoveTagsFromResource SendCommand UpdateAssociationStatus UpdateManagedInstanceRole / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM - Perl Interface to AWS Amazon Simple Systems Management Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SSM');
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

Amazon EC2 Simple Systems Manager (SSM) enables you to remotely manage
the configuration of your Amazon EC2 instances, virtual machines (VMs),
or servers in your on-premises environment or in an environment
provided by other cloud providers using scripts, commands, or the
Amazon EC2 console. SSM includes an on-demand solution called I<Amazon
EC2 Run Command> and a lightweight instance configuration solution
called I<SSM Config>.

This references is intended to be used with the EC2 Run Command User
Guide for Linux or Windows.

You must register your on-premises servers and VMs through an
activation process before you can configure them using Run Command.
Registered servers and VMs are called I<managed instances>. For more
information, see Setting Up Run Command On Managed Instances
(On-Premises Servers and VMs) on Linux or Setting Up Run Command On
Managed Instances (On-Premises Servers and VMs) on Windows.

B<Run Command>

Run Command provides an on-demand experience for executing commands.
You can use pre-defined SSM documents to perform the actions listed
later in this section, or you can create your own documents. With these
documents, you can remotely configure your instances by sending
commands using the B<Commands> page in the Amazon EC2 console, AWS
Tools for Windows PowerShell, the AWS CLI, or AWS SDKs.

Run Command reports the status of the command execution for each
instance targeted by a command. You can also audit the command
execution to understand who executed commands, when, and what changes
were made. By switching between different SSM documents, you can
quickly configure your instances with different types of commands. To
get started with Run Command, verify that your environment meets the
prerequisites for remotely running commands on EC2 instances (Linux or
Windows).

B<SSM Config>

SSM Config is a lightweight instance configuration solution. SSM Config
is currently only available for Windows instances. With SSM Config, you
can specify a setup configuration for your instances. SSM Config is
similar to EC2 User Data, which is another way of running one-time
scripts or applying settings during instance launch. SSM Config is an
extension of this capability. Using SSM documents, you can specify
which actions the system should perform on your instances, including
which applications to install, which AWS Directory Service directory to
join, which Microsoft PowerShell modules to install, etc. If an
instance is missing one or more of these configurations, the system
makes those changes. By default, the system checks every five minutes
to see if there is a new configuration to apply as defined in a new SSM
document. If so, the system updates the instances accordingly. In this
way, you can remotely maintain a consistent configuration baseline on
your instances. SSM Config is available using the AWS CLI or the AWS
Tools for Windows PowerShell. For more information, see Managing
Windows Instance Configuration.

SSM Config and Run Command include the following pre-defined documents.

B<Linux>

=over

=item *

B<AWS-RunShellScript> to run shell scripts

=item *

B<AWS-UpdateSSMAgent> to update the Amazon SSM agent

=back

B<Windows>

=over

=item *

B<AWS-JoinDirectoryServiceDomain> to join an AWS Directory

=item *

B<AWS-RunPowerShellScript> to run PowerShell commands or scripts

=item *

B<AWS-UpdateEC2Config> to update the EC2Config service

=item *

B<AWS-ConfigureWindowsUpdate> to configure Windows Update settings

=item *

B<AWS-InstallApplication> to install, repair, or uninstall software
using an MSI package

=item *

B<AWS-InstallPowerShellModule> to install PowerShell modules

=item *

B<AWS-ConfigureCloudWatch> to configure Amazon CloudWatch Logs to
monitor applications and systems

=item *

B<AWS-ListWindowsInventory> to collect information about an EC2
instance running in Windows.

=item *

B<AWS-FindWindowsUpdates> to scan an instance and determines which
updates are missing.

=item *

B<AWS-InstallMissingWindowsUpdates> to install missing updates on your
EC2 instance.

=item *

B<AWS-InstallSpecificWindowsUpdates> to install one or more specific
updates.

=back

The commands or scripts specified in SSM documents run with
administrative privilege on your instances because the Amazon SSM agent
runs as root on Linux and the EC2Config service runs in the Local
System account on Windows. If a user has permission to execute any of
the pre-defined SSM documents (any document that begins with AWS-*)
then that user also has administrator access to the instance. Delegate
access to Run Command and SSM Config judiciously. This becomes
extremely important if you create your own SSM documents. Amazon Web
Services does not provide guidance about how to create secure SSM
documents. You create SSM documents and delegate access to Run Command
at your own risk. As a security best practice, we recommend that you
assign access to "AWS-*" documents, especially the AWS-RunShellScript
document on Linux and the AWS-RunPowerShellScript document on Windows,
to trusted administrators only. You can create SSM documents for
specific tasks and delegate access to non-administrators.

For information about creating and sharing SSM documents, see the
following topics in the SSM User Guide:

=over

=item *

Creating SSM Documents and Sharing SSM Documents (Linux)

=item *

Creating SSM Documents and Sharing SSM Documents (Windows)

=back


=head1 METHODS

=head2 AddTagsToResource(ResourceId => Str, ResourceType => Str, Tags => ArrayRef[L<Paws::SSM::Tag>])

Each argument is described in detail in: L<Paws::SSM::AddTagsToResource>

Returns: a L<Paws::SSM::AddTagsToResourceResult> instance

  Adds or overwrites one or more tags for the specified resource. Tags
are metadata that you assign to your managed instances. Tags enable you
to categorize your managed instances in different ways, for example, by
purpose, owner, or environment. Each tag consists of a key and an
optional value, both of which you define. For example, you could define
a set of tags for your account's managed instances that helps you track
each instance's owner and stack level. For example: Key=Owner and
Value=DbAdmin, SysAdmin, or Dev. Or Key=Stack and Value=Production,
Pre-Production, or Test. Each resource can have a maximum of 10 tags.

We recommend that you devise a set of tag keys that meets your needs
for each resource type. Using a consistent set of tag keys makes it
easier for you to manage your resources. You can search and filter the
resources based on the tags you add. Tags don't have any semantic
meaning to Amazon EC2 and are interpreted strictly as a string of
characters.

For more information about tags, see Tagging Your Amazon EC2 Resources
in the Amazon EC2 User Guide.


=head2 CancelCommand(CommandId => Str, [InstanceIds => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::SSM::CancelCommand>

Returns: a L<Paws::SSM::CancelCommandResult> instance

  Attempts to cancel the command specified by the Command ID. There is no
guarantee that the command will be terminated and the underlying
process stopped.


=head2 CreateActivation(IamRole => Str, [DefaultInstanceName => Str, Description => Str, ExpirationDate => Str, RegistrationLimit => Int])

Each argument is described in detail in: L<Paws::SSM::CreateActivation>

Returns: a L<Paws::SSM::CreateActivationResult> instance

  Registers your on-premises server or virtual machine with Amazon EC2 so
that you can manage these resources using Run Command. An on-premises
server or virtual machine that has been registered with EC2 is called a
managed instance. For more information about activations, see Setting
Up Managed Instances (Linux) or Setting Up Managed Instances (Windows)
in the Amazon EC2 User Guide.


=head2 CreateAssociation(InstanceId => Str, Name => Str, [Parameters => L<Paws::SSM::Parameters>])

Each argument is described in detail in: L<Paws::SSM::CreateAssociation>

Returns: a L<Paws::SSM::CreateAssociationResult> instance

  Associates the specified SSM document with the specified instance.

When you associate an SSM document with an instance, the configuration
agent on the instance (SSM agent for Linux and EC2Config service for
Windows) processes the document and configures the instance as
specified.

If you associate a document with an instance that already has an
associated document, the system throws the AssociationAlreadyExists
exception.


=head2 CreateAssociationBatch(Entries => ArrayRef[L<Paws::SSM::CreateAssociationBatchRequestEntry>])

Each argument is described in detail in: L<Paws::SSM::CreateAssociationBatch>

Returns: a L<Paws::SSM::CreateAssociationBatchResult> instance

  Associates the specified SSM document with the specified instances.

When you associate an SSM document with an instance, the configuration
agent on the instance (SSM agent for Linux and EC2Config service for
Windows) processes the document and configures the instance as
specified.

If you associate a document with an instance that already has an
associated document, the system throws the AssociationAlreadyExists
exception.


=head2 CreateDocument(Content => Str, Name => Str)

Each argument is described in detail in: L<Paws::SSM::CreateDocument>

Returns: a L<Paws::SSM::CreateDocumentResult> instance

  Creates an SSM document.

After you create an SSM document, you can use CreateAssociation to
associate it with one or more running instances.


=head2 DeleteActivation(ActivationId => Str)

Each argument is described in detail in: L<Paws::SSM::DeleteActivation>

Returns: a L<Paws::SSM::DeleteActivationResult> instance

  Deletes an activation. You are not required to delete an activation. If
you delete an activation, you can no longer use it to register
additional managed instances. Deleting an activation does not
de-register managed instances. You must manually de-register managed
instances.


=head2 DeleteAssociation(InstanceId => Str, Name => Str)

Each argument is described in detail in: L<Paws::SSM::DeleteAssociation>

Returns: a L<Paws::SSM::DeleteAssociationResult> instance

  Disassociates the specified SSM document from the specified instance.

When you disassociate an SSM document from an instance, it does not
change the configuration of the instance. To change the configuration
state of an instance after you disassociate a document, you must create
a new document with the desired configuration and associate it with the
instance.


=head2 DeleteDocument(Name => Str)

Each argument is described in detail in: L<Paws::SSM::DeleteDocument>

Returns: a L<Paws::SSM::DeleteDocumentResult> instance

  Deletes the SSM document and all instance associations to the document.

Before you delete the SSM document, we recommend that you use
DeleteAssociation to disassociate all instances that are associated
with the document.


=head2 DeregisterManagedInstance(InstanceId => Str)

Each argument is described in detail in: L<Paws::SSM::DeregisterManagedInstance>

Returns: a L<Paws::SSM::DeregisterManagedInstanceResult> instance

  Removes the server or virtual machine from the list of registered
servers. You can reregister the instance again at any time. If you
donE<rsquo>t plan to use Run Command on the server, we suggest
uninstalling the SSM agent first.


=head2 DescribeActivations([Filters => ArrayRef[L<Paws::SSM::DescribeActivationsFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::DescribeActivations>

Returns: a L<Paws::SSM::DescribeActivationsResult> instance

  Details about the activation, including: the date and time the
activation was created, the expiration date, the IAM role assigned to
the instances in the activation, and the number of instances activated
by this registration.


=head2 DescribeAssociation(InstanceId => Str, Name => Str)

Each argument is described in detail in: L<Paws::SSM::DescribeAssociation>

Returns: a L<Paws::SSM::DescribeAssociationResult> instance

  Describes the associations for the specified SSM document or instance.


=head2 DescribeDocument(Name => Str)

Each argument is described in detail in: L<Paws::SSM::DescribeDocument>

Returns: a L<Paws::SSM::DescribeDocumentResult> instance

  Describes the specified SSM document.


=head2 DescribeDocumentPermission(Name => Str, PermissionType => Str)

Each argument is described in detail in: L<Paws::SSM::DescribeDocumentPermission>

Returns: a L<Paws::SSM::DescribeDocumentPermissionResponse> instance

  Describes the permissions for an SSM document. If you created the
document, you are the owner. If a document is shared, it can either be
shared privately (by specifying a userE<rsquo>s AWS account ID) or
publicly (I<All>).


=head2 DescribeInstanceInformation([InstanceInformationFilterList => ArrayRef[L<Paws::SSM::InstanceInformationFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::DescribeInstanceInformation>

Returns: a L<Paws::SSM::DescribeInstanceInformationResult> instance

  Describes one or more of your instances. You can use this to get
information about instances like the operating system platform, the SSM
agent version (Linux), status etc. If you specify one or more instance
IDs, it returns information for those instances. If you do not specify
instance IDs, it returns information for all your instances. If you
specify an instance ID that is not valid or an instance that you do not
own, you receive an error.


=head2 GetDocument(Name => Str)

Each argument is described in detail in: L<Paws::SSM::GetDocument>

Returns: a L<Paws::SSM::GetDocumentResult> instance

  Gets the contents of the specified SSM document.


=head2 ListAssociations(AssociationFilterList => ArrayRef[L<Paws::SSM::AssociationFilter>], [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::ListAssociations>

Returns: a L<Paws::SSM::ListAssociationsResult> instance

  Lists the associations for the specified SSM document or instance.


=head2 ListCommandInvocations([CommandId => Str, Details => Bool, Filters => ArrayRef[L<Paws::SSM::CommandFilter>], InstanceId => Str, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::ListCommandInvocations>

Returns: a L<Paws::SSM::ListCommandInvocationsResult> instance

  An invocation is copy of a command sent to a specific instance. A
command can apply to one or more instances. A command invocation
applies to one instance. For example, if a user executes SendCommand
against three instances, then a command invocation is created for each
requested instance ID. ListCommandInvocations provide status about
command execution.


=head2 ListCommands([CommandId => Str, Filters => ArrayRef[L<Paws::SSM::CommandFilter>], InstanceId => Str, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::ListCommands>

Returns: a L<Paws::SSM::ListCommandsResult> instance

  Lists the commands requested by users of the AWS account.


=head2 ListDocuments([DocumentFilterList => ArrayRef[L<Paws::SSM::DocumentFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::ListDocuments>

Returns: a L<Paws::SSM::ListDocumentsResult> instance

  Describes one or more of your SSM documents.


=head2 ListTagsForResource(ResourceId => Str, ResourceType => Str)

Each argument is described in detail in: L<Paws::SSM::ListTagsForResource>

Returns: a L<Paws::SSM::ListTagsForResourceResult> instance

  Returns a list of the tags assigned to the specified resource.


=head2 ModifyDocumentPermission(Name => Str, PermissionType => Str, [AccountIdsToAdd => ArrayRef[Str], AccountIdsToRemove => ArrayRef[Str]])

Each argument is described in detail in: L<Paws::SSM::ModifyDocumentPermission>

Returns: a L<Paws::SSM::ModifyDocumentPermissionResponse> instance

  Share a document publicly or privately. If you share a document
privately, you must specify the AWS user account IDs for those people
who can use the document. If you share a document publicly, you must
specify I<All> as the account ID.


=head2 RemoveTagsFromResource(ResourceId => Str, ResourceType => Str, TagKeys => ArrayRef[Str])

Each argument is described in detail in: L<Paws::SSM::RemoveTagsFromResource>

Returns: a L<Paws::SSM::RemoveTagsFromResourceResult> instance

  Removes all tags from the specified resource.


=head2 SendCommand(DocumentName => Str, InstanceIds => ArrayRef[Str], [Comment => Str, DocumentHash => Str, DocumentHashType => Str, NotificationConfig => L<Paws::SSM::NotificationConfig>, OutputS3BucketName => Str, OutputS3KeyPrefix => Str, Parameters => L<Paws::SSM::Parameters>, ServiceRoleArn => Str, TimeoutSeconds => Int])

Each argument is described in detail in: L<Paws::SSM::SendCommand>

Returns: a L<Paws::SSM::SendCommandResult> instance

  Executes commands on one or more remote instances.


=head2 UpdateAssociationStatus(AssociationStatus => L<Paws::SSM::AssociationStatus>, InstanceId => Str, Name => Str)

Each argument is described in detail in: L<Paws::SSM::UpdateAssociationStatus>

Returns: a L<Paws::SSM::UpdateAssociationStatusResult> instance

  Updates the status of the SSM document associated with the specified
instance.


=head2 UpdateManagedInstanceRole(IamRole => Str, InstanceId => Str)

Each argument is described in detail in: L<Paws::SSM::UpdateManagedInstanceRole>

Returns: a L<Paws::SSM::UpdateManagedInstanceRoleResult> instance

  Assigns or changes an Amazon Identity and Access Management (IAM) role
to the managed instance.


=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

