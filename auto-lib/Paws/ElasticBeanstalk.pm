package Paws::ElasticBeanstalk;
  use Moose;
  sub service { 'elasticbeanstalk' }
  sub version { '2010-12-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller', 'Paws::Net::XMLResponse';

  
  sub AbortEnvironmentUpdate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::AbortEnvironmentUpdate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ApplyEnvironmentManagedAction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::ApplyEnvironmentManagedAction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CheckDNSAvailability {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::CheckDNSAvailability', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ComposeEnvironments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::ComposeEnvironments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::CreateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateApplicationVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::CreateApplicationVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConfigurationTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::CreateConfigurationTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::CreateEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePlatformVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::CreatePlatformVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateStorageLocation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::CreateStorageLocation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::DeleteApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplicationVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::DeleteApplicationVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfigurationTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::DeleteConfigurationTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEnvironmentConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::DeleteEnvironmentConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePlatformVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::DeletePlatformVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::DescribeApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeApplicationVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::DescribeApplicationVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConfigurationOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::DescribeConfigurationOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConfigurationSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::DescribeConfigurationSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEnvironmentHealth {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::DescribeEnvironmentHealth', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEnvironmentManagedActionHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::DescribeEnvironmentManagedActionHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEnvironmentManagedActions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::DescribeEnvironmentManagedActions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEnvironmentResources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::DescribeEnvironmentResources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEnvironments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::DescribeEnvironments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::DescribeEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstancesHealth {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::DescribeInstancesHealth', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePlatformVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::DescribePlatformVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAvailableSolutionStacks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::ListAvailableSolutionStacks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPlatformVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::ListPlatformVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RebuildEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::RebuildEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RequestEnvironmentInfo {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::RequestEnvironmentInfo', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestartAppServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::RestartAppServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RetrieveEnvironmentInfo {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::RetrieveEnvironmentInfo', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SwapEnvironmentCNAMEs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::SwapEnvironmentCNAMEs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TerminateEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::TerminateEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::UpdateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApplicationResourceLifecycle {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::UpdateApplicationResourceLifecycle', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApplicationVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::UpdateApplicationVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConfigurationTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::UpdateConfigurationTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::UpdateEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ValidateConfigurationSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::ValidateConfigurationSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllEvents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEvents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeEvents(@_, NextToken => $next_result->NextToken);
        push @{ $result->Events }, @{ $next_result->Events };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Events') foreach (@{ $result->Events });
        $result = $self->DescribeEvents(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Events') foreach (@{ $result->Events });
    }

    return undef
  }


  sub operations { qw/AbortEnvironmentUpdate ApplyEnvironmentManagedAction CheckDNSAvailability ComposeEnvironments CreateApplication CreateApplicationVersion CreateConfigurationTemplate CreateEnvironment CreatePlatformVersion CreateStorageLocation DeleteApplication DeleteApplicationVersion DeleteConfigurationTemplate DeleteEnvironmentConfiguration DeletePlatformVersion DescribeApplications DescribeApplicationVersions DescribeConfigurationOptions DescribeConfigurationSettings DescribeEnvironmentHealth DescribeEnvironmentManagedActionHistory DescribeEnvironmentManagedActions DescribeEnvironmentResources DescribeEnvironments DescribeEvents DescribeInstancesHealth DescribePlatformVersion ListAvailableSolutionStacks ListPlatformVersions RebuildEnvironment RequestEnvironmentInfo RestartAppServer RetrieveEnvironmentInfo SwapEnvironmentCNAMEs TerminateEnvironment UpdateApplication UpdateApplicationResourceLifecycle UpdateApplicationVersion UpdateConfigurationTemplate UpdateEnvironment ValidateConfigurationSettings / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk - Perl Interface to AWS AWS Elastic Beanstalk

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ElasticBeanstalk');
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

AWS Elastic Beanstalk

AWS Elastic Beanstalk makes it easy for you to create, deploy, and
manage scalable, fault-tolerant applications running on the Amazon Web
Services cloud.

For more information about this product, go to the AWS Elastic
Beanstalk (http://aws.amazon.com/elasticbeanstalk/) details page. The
location of the latest AWS Elastic Beanstalk WSDL is
http://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl
(http://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl).
To install the Software Development Kits (SDKs), Integrated Development
Environment (IDE) Toolkits, and command line tools that enable you to
access the API, go to Tools for Amazon Web Services
(http://aws.amazon.com/tools/).

B<Endpoints>

For a list of region-specific endpoints that AWS Elastic Beanstalk
supports, go to Regions and Endpoints
(http://docs.aws.amazon.com/general/latest/gr/rande.html#elasticbeanstalk_region)
in the I<Amazon Web Services Glossary>.

=head1 METHODS

=head2 AbortEnvironmentUpdate([EnvironmentId => Str, EnvironmentName => Str])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::AbortEnvironmentUpdate>

Returns: nothing

  Cancels in-progress environment configuration update or application
version deployment.


=head2 ApplyEnvironmentManagedAction(ActionId => Str, [EnvironmentId => Str, EnvironmentName => Str])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::ApplyEnvironmentManagedAction>

Returns: a L<Paws::ElasticBeanstalk::ApplyEnvironmentManagedActionResult> instance

  Applies a scheduled managed action immediately. A managed action can be
applied only if its status is C<Scheduled>. Get the status and action
ID of a managed action with DescribeEnvironmentManagedActions.


=head2 CheckDNSAvailability(CNAMEPrefix => Str)

Each argument is described in detail in: L<Paws::ElasticBeanstalk::CheckDNSAvailability>

Returns: a L<Paws::ElasticBeanstalk::CheckDNSAvailabilityResultMessage> instance

  Checks if the specified CNAME is available.


=head2 ComposeEnvironments([ApplicationName => Str, GroupName => Str, VersionLabels => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::ComposeEnvironments>

Returns: a L<Paws::ElasticBeanstalk::EnvironmentDescriptionsMessage> instance

  Create or update a group of environments that each run a separate
component of a single application. Takes a list of version labels that
specify application source bundles for each of the environments to
create or update. The name of each environment and other required
information must be included in the source bundles in an environment
manifest named C<env.yaml>. See Compose Environments
(http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-mgmt-compose.html)
for details.


=head2 CreateApplication(ApplicationName => Str, [Description => Str, ResourceLifecycleConfig => L<Paws::ElasticBeanstalk::ApplicationResourceLifecycleConfig>])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::CreateApplication>

Returns: a L<Paws::ElasticBeanstalk::ApplicationDescriptionMessage> instance

  Creates an application that has one configuration template named
C<default> and no application versions.


=head2 CreateApplicationVersion(ApplicationName => Str, VersionLabel => Str, [AutoCreateApplication => Bool, BuildConfiguration => L<Paws::ElasticBeanstalk::BuildConfiguration>, Description => Str, Process => Bool, SourceBuildInformation => L<Paws::ElasticBeanstalk::SourceBuildInformation>, SourceBundle => L<Paws::ElasticBeanstalk::S3Location>])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::CreateApplicationVersion>

Returns: a L<Paws::ElasticBeanstalk::ApplicationVersionDescriptionMessage> instance

  Creates an application version for the specified application. You can
create an application version from a source bundle in Amazon S3, a
commit in AWS CodeCommit, or the output of an AWS CodeBuild build as
follows:

Specify a commit in an AWS CodeCommit repository with
C<SourceBuildInformation>.

Specify a build in an AWS CodeBuild with C<SourceBuildInformation> and
C<BuildConfiguration>.

Specify a source bundle in S3 with C<SourceBundle>

Omit both C<SourceBuildInformation> and C<SourceBundle> to use the
default sample application.

Once you create an application version with a specified Amazon S3
bucket and key location, you cannot change that Amazon S3 location. If
you change the Amazon S3 location, you receive an exception when you
attempt to launch an environment from the application version.


=head2 CreateConfigurationTemplate(ApplicationName => Str, TemplateName => Str, [Description => Str, EnvironmentId => Str, OptionSettings => ArrayRef[L<Paws::ElasticBeanstalk::ConfigurationOptionSetting>], PlatformArn => Str, SolutionStackName => Str, SourceConfiguration => L<Paws::ElasticBeanstalk::SourceConfiguration>])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::CreateConfigurationTemplate>

Returns: a L<Paws::ElasticBeanstalk::ConfigurationSettingsDescription> instance

  Creates a configuration template. Templates are associated with a
specific application and are used to deploy different versions of the
application with the same configuration settings.

Related Topics

=over

=item *

DescribeConfigurationOptions

=item *

DescribeConfigurationSettings

=item *

ListAvailableSolutionStacks

=back



=head2 CreateEnvironment(ApplicationName => Str, [CNAMEPrefix => Str, Description => Str, EnvironmentName => Str, GroupName => Str, OptionSettings => ArrayRef[L<Paws::ElasticBeanstalk::ConfigurationOptionSetting>], OptionsToRemove => ArrayRef[L<Paws::ElasticBeanstalk::OptionSpecification>], PlatformArn => Str, SolutionStackName => Str, Tags => ArrayRef[L<Paws::ElasticBeanstalk::Tag>], TemplateName => Str, Tier => L<Paws::ElasticBeanstalk::EnvironmentTier>, VersionLabel => Str])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::CreateEnvironment>

Returns: a L<Paws::ElasticBeanstalk::EnvironmentDescription> instance

  Launches an environment for the specified application using the
specified configuration.


=head2 CreatePlatformVersion(PlatformDefinitionBundle => L<Paws::ElasticBeanstalk::S3Location>, PlatformName => Str, PlatformVersion => Str, [EnvironmentName => Str, OptionSettings => ArrayRef[L<Paws::ElasticBeanstalk::ConfigurationOptionSetting>]])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::CreatePlatformVersion>

Returns: a L<Paws::ElasticBeanstalk::CreatePlatformVersionResult> instance

  Create a new version of your custom platform.


=head2 CreateStorageLocation( => )

Each argument is described in detail in: L<Paws::ElasticBeanstalk::CreateStorageLocation>

Returns: a L<Paws::ElasticBeanstalk::CreateStorageLocationResultMessage> instance

  Creates the Amazon S3 storage location for the account.

This location is used to store user log files.


=head2 DeleteApplication(ApplicationName => Str, [TerminateEnvByForce => Bool])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::DeleteApplication>

Returns: nothing

  Deletes the specified application along with all associated versions
and configurations. The application versions will not be deleted from
your Amazon S3 bucket.

You cannot delete an application that has a running environment.


=head2 DeleteApplicationVersion(ApplicationName => Str, VersionLabel => Str, [DeleteSourceBundle => Bool])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::DeleteApplicationVersion>

Returns: nothing

  Deletes the specified version from the specified application.

You cannot delete an application version that is associated with a
running environment.


=head2 DeleteConfigurationTemplate(ApplicationName => Str, TemplateName => Str)

Each argument is described in detail in: L<Paws::ElasticBeanstalk::DeleteConfigurationTemplate>

Returns: nothing

  Deletes the specified configuration template.

When you launch an environment using a configuration template, the
environment gets a copy of the template. You can delete or modify the
environment's copy of the template without affecting the running
environment.


=head2 DeleteEnvironmentConfiguration(ApplicationName => Str, EnvironmentName => Str)

Each argument is described in detail in: L<Paws::ElasticBeanstalk::DeleteEnvironmentConfiguration>

Returns: nothing

  Deletes the draft configuration associated with the running
environment.

Updating a running environment with any configuration changes creates a
draft configuration set. You can get the draft configuration using
DescribeConfigurationSettings while the update is in progress or if the
update fails. The C<DeploymentStatus> for the draft configuration
indicates whether the deployment is in process or has failed. The draft
configuration remains in existence until it is deleted with this
action.


=head2 DeletePlatformVersion([PlatformArn => Str])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::DeletePlatformVersion>

Returns: a L<Paws::ElasticBeanstalk::DeletePlatformVersionResult> instance

  Deletes the specified version of a custom platform.


=head2 DescribeApplications([ApplicationNames => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::DescribeApplications>

Returns: a L<Paws::ElasticBeanstalk::ApplicationDescriptionsMessage> instance

  Returns the descriptions of existing applications.


=head2 DescribeApplicationVersions([ApplicationName => Str, MaxRecords => Int, NextToken => Str, VersionLabels => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::DescribeApplicationVersions>

Returns: a L<Paws::ElasticBeanstalk::ApplicationVersionDescriptionsMessage> instance

  Retrieve a list of application versions.


=head2 DescribeConfigurationOptions([ApplicationName => Str, EnvironmentName => Str, Options => ArrayRef[L<Paws::ElasticBeanstalk::OptionSpecification>], PlatformArn => Str, SolutionStackName => Str, TemplateName => Str])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::DescribeConfigurationOptions>

Returns: a L<Paws::ElasticBeanstalk::ConfigurationOptionsDescription> instance

  Describes the configuration options that are used in a particular
configuration template or environment, or that a specified solution
stack defines. The description includes the values the options, their
default values, and an indication of the required action on a running
environment if an option value is changed.


=head2 DescribeConfigurationSettings(ApplicationName => Str, [EnvironmentName => Str, TemplateName => Str])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::DescribeConfigurationSettings>

Returns: a L<Paws::ElasticBeanstalk::ConfigurationSettingsDescriptions> instance

  Returns a description of the settings for the specified configuration
set, that is, either a configuration template or the configuration set
associated with a running environment.

When describing the settings for the configuration set associated with
a running environment, it is possible to receive two sets of setting
descriptions. One is the deployed configuration set, and the other is a
draft configuration of an environment that is either in the process of
deployment or that failed to deploy.

Related Topics

=over

=item *

DeleteEnvironmentConfiguration

=back



=head2 DescribeEnvironmentHealth([AttributeNames => ArrayRef[Str|Undef], EnvironmentId => Str, EnvironmentName => Str])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::DescribeEnvironmentHealth>

Returns: a L<Paws::ElasticBeanstalk::DescribeEnvironmentHealthResult> instance

  Returns information about the overall health of the specified
environment. The B<DescribeEnvironmentHealth> operation is only
available with AWS Elastic Beanstalk Enhanced Health.


=head2 DescribeEnvironmentManagedActionHistory([EnvironmentId => Str, EnvironmentName => Str, MaxItems => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::DescribeEnvironmentManagedActionHistory>

Returns: a L<Paws::ElasticBeanstalk::DescribeEnvironmentManagedActionHistoryResult> instance

  Lists an environment's completed and failed managed actions.


=head2 DescribeEnvironmentManagedActions([EnvironmentId => Str, EnvironmentName => Str, Status => Str])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::DescribeEnvironmentManagedActions>

Returns: a L<Paws::ElasticBeanstalk::DescribeEnvironmentManagedActionsResult> instance

  Lists an environment's upcoming and in-progress managed actions.


=head2 DescribeEnvironmentResources([EnvironmentId => Str, EnvironmentName => Str])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::DescribeEnvironmentResources>

Returns: a L<Paws::ElasticBeanstalk::EnvironmentResourceDescriptionsMessage> instance

  Returns AWS resources for this environment.


=head2 DescribeEnvironments([ApplicationName => Str, EnvironmentIds => ArrayRef[Str|Undef], EnvironmentNames => ArrayRef[Str|Undef], IncludedDeletedBackTo => Str, IncludeDeleted => Bool, MaxRecords => Int, NextToken => Str, VersionLabel => Str])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::DescribeEnvironments>

Returns: a L<Paws::ElasticBeanstalk::EnvironmentDescriptionsMessage> instance

  Returns descriptions for existing environments.


=head2 DescribeEvents([ApplicationName => Str, EndTime => Str, EnvironmentId => Str, EnvironmentName => Str, MaxRecords => Int, NextToken => Str, PlatformArn => Str, RequestId => Str, Severity => Str, StartTime => Str, TemplateName => Str, VersionLabel => Str])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::DescribeEvents>

Returns: a L<Paws::ElasticBeanstalk::EventDescriptionsMessage> instance

  Returns list of event descriptions matching criteria up to the last 6
weeks.

This action returns the most recent 1,000 events from the specified
C<NextToken>.


=head2 DescribeInstancesHealth([AttributeNames => ArrayRef[Str|Undef], EnvironmentId => Str, EnvironmentName => Str, NextToken => Str])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::DescribeInstancesHealth>

Returns: a L<Paws::ElasticBeanstalk::DescribeInstancesHealthResult> instance

  Retrives detailed information about the health of instances in your AWS
Elastic Beanstalk. This operation requires enhanced health reporting
(http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced.html).


=head2 DescribePlatformVersion([PlatformArn => Str])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::DescribePlatformVersion>

Returns: a L<Paws::ElasticBeanstalk::DescribePlatformVersionResult> instance

  Describes the version of the platform.


=head2 ListAvailableSolutionStacks( => )

Each argument is described in detail in: L<Paws::ElasticBeanstalk::ListAvailableSolutionStacks>

Returns: a L<Paws::ElasticBeanstalk::ListAvailableSolutionStacksResultMessage> instance

  Returns a list of the available solution stack names, with the public
version first and then in reverse chronological order.


=head2 ListPlatformVersions([Filters => ArrayRef[L<Paws::ElasticBeanstalk::PlatformFilter>], MaxRecords => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::ListPlatformVersions>

Returns: a L<Paws::ElasticBeanstalk::ListPlatformVersionsResult> instance

  Lists the available platforms.


=head2 RebuildEnvironment([EnvironmentId => Str, EnvironmentName => Str])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::RebuildEnvironment>

Returns: nothing

  Deletes and recreates all of the AWS resources (for example: the Auto
Scaling group, load balancer, etc.) for a specified environment and
forces a restart.


=head2 RequestEnvironmentInfo(InfoType => Str, [EnvironmentId => Str, EnvironmentName => Str])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::RequestEnvironmentInfo>

Returns: nothing

  Initiates a request to compile the specified type of information of the
deployed environment.

Setting the C<InfoType> to C<tail> compiles the last lines from the
application server log files of every Amazon EC2 instance in your
environment.

Setting the C<InfoType> to C<bundle> compresses the application server
log files for every Amazon EC2 instance into a C<.zip> file. Legacy and
.NET containers do not support bundle logs.

Use RetrieveEnvironmentInfo to obtain the set of logs.

Related Topics

=over

=item *

RetrieveEnvironmentInfo

=back



=head2 RestartAppServer([EnvironmentId => Str, EnvironmentName => Str])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::RestartAppServer>

Returns: nothing

  Causes the environment to restart the application container server
running on each Amazon EC2 instance.


=head2 RetrieveEnvironmentInfo(InfoType => Str, [EnvironmentId => Str, EnvironmentName => Str])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::RetrieveEnvironmentInfo>

Returns: a L<Paws::ElasticBeanstalk::RetrieveEnvironmentInfoResultMessage> instance

  Retrieves the compiled information from a RequestEnvironmentInfo
request.

Related Topics

=over

=item *

RequestEnvironmentInfo

=back



=head2 SwapEnvironmentCNAMEs([DestinationEnvironmentId => Str, DestinationEnvironmentName => Str, SourceEnvironmentId => Str, SourceEnvironmentName => Str])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::SwapEnvironmentCNAMEs>

Returns: nothing

  Swaps the CNAMEs of two environments.


=head2 TerminateEnvironment([EnvironmentId => Str, EnvironmentName => Str, ForceTerminate => Bool, TerminateResources => Bool])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::TerminateEnvironment>

Returns: a L<Paws::ElasticBeanstalk::EnvironmentDescription> instance

  Terminates the specified environment.


=head2 UpdateApplication(ApplicationName => Str, [Description => Str])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::UpdateApplication>

Returns: a L<Paws::ElasticBeanstalk::ApplicationDescriptionMessage> instance

  Updates the specified application to have the specified properties.

If a property (for example, C<description>) is not provided, the value
remains unchanged. To clear these properties, specify an empty string.


=head2 UpdateApplicationResourceLifecycle(ApplicationName => Str, ResourceLifecycleConfig => L<Paws::ElasticBeanstalk::ApplicationResourceLifecycleConfig>)

Each argument is described in detail in: L<Paws::ElasticBeanstalk::UpdateApplicationResourceLifecycle>

Returns: a L<Paws::ElasticBeanstalk::ApplicationResourceLifecycleDescriptionMessage> instance

  Modifies lifecycle settings for an application.


=head2 UpdateApplicationVersion(ApplicationName => Str, VersionLabel => Str, [Description => Str])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::UpdateApplicationVersion>

Returns: a L<Paws::ElasticBeanstalk::ApplicationVersionDescriptionMessage> instance

  Updates the specified application version to have the specified
properties.

If a property (for example, C<description>) is not provided, the value
remains unchanged. To clear properties, specify an empty string.


=head2 UpdateConfigurationTemplate(ApplicationName => Str, TemplateName => Str, [Description => Str, OptionSettings => ArrayRef[L<Paws::ElasticBeanstalk::ConfigurationOptionSetting>], OptionsToRemove => ArrayRef[L<Paws::ElasticBeanstalk::OptionSpecification>]])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::UpdateConfigurationTemplate>

Returns: a L<Paws::ElasticBeanstalk::ConfigurationSettingsDescription> instance

  Updates the specified configuration template to have the specified
properties or configuration option values.

If a property (for example, C<ApplicationName>) is not provided, its
value remains unchanged. To clear such properties, specify an empty
string.

Related Topics

=over

=item *

DescribeConfigurationOptions

=back



=head2 UpdateEnvironment([ApplicationName => Str, Description => Str, EnvironmentId => Str, EnvironmentName => Str, GroupName => Str, OptionSettings => ArrayRef[L<Paws::ElasticBeanstalk::ConfigurationOptionSetting>], OptionsToRemove => ArrayRef[L<Paws::ElasticBeanstalk::OptionSpecification>], PlatformArn => Str, SolutionStackName => Str, TemplateName => Str, Tier => L<Paws::ElasticBeanstalk::EnvironmentTier>, VersionLabel => Str])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::UpdateEnvironment>

Returns: a L<Paws::ElasticBeanstalk::EnvironmentDescription> instance

  Updates the environment description, deploys a new application version,
updates the configuration settings to an entirely new configuration
template, or updates select configuration option values in the running
environment.

Attempting to update both the release and configuration is not allowed
and AWS Elastic Beanstalk returns an C<InvalidParameterCombination>
error.

When updating the configuration settings to a new template or
individual settings, a draft configuration is created and
DescribeConfigurationSettings for this environment returns two setting
descriptions with different C<DeploymentStatus> values.


=head2 ValidateConfigurationSettings(ApplicationName => Str, OptionSettings => ArrayRef[L<Paws::ElasticBeanstalk::ConfigurationOptionSetting>], [EnvironmentName => Str, TemplateName => Str])

Each argument is described in detail in: L<Paws::ElasticBeanstalk::ValidateConfigurationSettings>

Returns: a L<Paws::ElasticBeanstalk::ConfigurationSettingsValidationMessages> instance

  Takes a set of configuration settings and either a configuration
template or environment, and determines whether those values are valid.

This action returns a list of messages indicating any errors or
warnings associated with the selection of option values.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllEvents(sub { },[ApplicationName => Str, EndTime => Str, EnvironmentId => Str, EnvironmentName => Str, MaxRecords => Int, NextToken => Str, PlatformArn => Str, RequestId => Str, Severity => Str, StartTime => Str, TemplateName => Str, VersionLabel => Str])

=head2 DescribeAllEvents([ApplicationName => Str, EndTime => Str, EnvironmentId => Str, EnvironmentName => Str, MaxRecords => Int, NextToken => Str, PlatformArn => Str, RequestId => Str, Severity => Str, StartTime => Str, TemplateName => Str, VersionLabel => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Events, passing the object as the first parameter, and the string 'Events' as the second parameter 

If not, it will return a a L<Paws::ElasticBeanstalk::EventDescriptionsMessage> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

