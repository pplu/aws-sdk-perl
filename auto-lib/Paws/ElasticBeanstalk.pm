
use Paws::API;


package Paws::ElasticBeanstalk {
  use Moose;
  sub service { 'elasticbeanstalk' }
  sub version { '2010-12-01' }
  sub flattened_arrays { 0 }

  with 'Paws::API::Caller', 'Paws::API::RegionalEndpointCaller', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller', 'Paws::Net::XMLResponse';

  
  sub CheckDNSAvailability {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::CheckDNSAvailability', @_);
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
  sub ListAvailableSolutionStacks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ElasticBeanstalk::ListAvailableSolutionStacks', @_);
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

    my $result = $self->DescribeEvents(@_);
    my $array = [];
    push @$array, @{ $result->Events };

    while ($result->NextToken) {
      $result = $self->DescribeEvents(@_, NextToken => $result->NextToken);
      push @$array, @{ $result->Events };
    }

    return 'Paws::ElasticBeanstalk::DescribeEvents'->_returns->new(Events => $array);
  }
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk - Perl Interface to AWS AWS Elastic Beanstalk

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



AWS Elastic Beanstalk

This is the AWS Elastic Beanstalk API Reference. This guide provides
detailed information about AWS Elastic Beanstalk actions, data types,
parameters, and errors.

AWS Elastic Beanstalk is a tool that makes it easy for you to create,
deploy, and manage scalable, fault-tolerant applications running on
Amazon Web Services cloud resources.

For more information about this product, go to the AWS Elastic
Beanstalk details page. The location of the latest AWS Elastic
Beanstalk WSDL is
http://elasticbeanstalk.s3.amazonaws.com/doc/2010-12-01/AWSElasticBeanstalk.wsdl.

B<Endpoints>

For a list of region-specific endpoints that AWS Elastic Beanstalk
supports, go to Regions and Endpoints in the I<Amazon Web Services
Glossary>.










=head1 METHODS

=head2 CheckDNSAvailability()

  Arguments described in: L<Paws::ElasticBeanstalk::CheckDNSAvailability>

  Returns: L<Paws::ElasticBeanstalk::CheckDNSAvailabilityResultMessage>

  

Checks if the specified CNAME is available.











=head2 CreateApplication()

  Arguments described in: L<Paws::ElasticBeanstalk::CreateApplication>

  Returns: L<Paws::ElasticBeanstalk::ApplicationDescriptionMessage>

  

Creates an application that has one configuration template named
C<default> and no application versions.











=head2 CreateApplicationVersion()

  Arguments described in: L<Paws::ElasticBeanstalk::CreateApplicationVersion>

  Returns: L<Paws::ElasticBeanstalk::ApplicationVersionDescriptionMessage>

  

Creates an application version for the specified application.











=head2 CreateConfigurationTemplate()

  Arguments described in: L<Paws::ElasticBeanstalk::CreateConfigurationTemplate>

  Returns: L<Paws::ElasticBeanstalk::ConfigurationSettingsDescription>

  

Creates a configuration template. Templates are associated with a
specific application and are used to deploy different versions of the
application with the same configuration settings.

Related Topics

=over

=item * DescribeConfigurationOptions

=item * DescribeConfigurationSettings

=item * ListAvailableSolutionStacks

=back











=head2 CreateEnvironment()

  Arguments described in: L<Paws::ElasticBeanstalk::CreateEnvironment>

  Returns: L<Paws::ElasticBeanstalk::EnvironmentDescription>

  

Launches an environment for the specified application using the
specified configuration.











=head2 CreateStorageLocation()

  Arguments described in: L<Paws::ElasticBeanstalk::CreateStorageLocation>

  Returns: L<Paws::ElasticBeanstalk::CreateStorageLocationResultMessage>

  

Creates the Amazon S3 storage location for the account.

This location is used to store user log files.











=head2 DeleteApplication()

  Arguments described in: L<Paws::ElasticBeanstalk::DeleteApplication>

  Returns: nothing

  

Deletes the specified application along with all associated versions
and configurations. The application versions will not be deleted from
your Amazon S3 bucket.











=head2 DeleteApplicationVersion()

  Arguments described in: L<Paws::ElasticBeanstalk::DeleteApplicationVersion>

  Returns: nothing

  

Deletes the specified version from the specified application.











=head2 DeleteConfigurationTemplate()

  Arguments described in: L<Paws::ElasticBeanstalk::DeleteConfigurationTemplate>

  Returns: nothing

  

Deletes the specified configuration template.











=head2 DeleteEnvironmentConfiguration()

  Arguments described in: L<Paws::ElasticBeanstalk::DeleteEnvironmentConfiguration>

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











=head2 DescribeApplications()

  Arguments described in: L<Paws::ElasticBeanstalk::DescribeApplications>

  Returns: L<Paws::ElasticBeanstalk::ApplicationDescriptionsMessage>

  

Returns the descriptions of existing applications.











=head2 DescribeApplicationVersions()

  Arguments described in: L<Paws::ElasticBeanstalk::DescribeApplicationVersions>

  Returns: L<Paws::ElasticBeanstalk::ApplicationVersionDescriptionsMessage>

  

Returns descriptions for existing application versions.











=head2 DescribeConfigurationOptions()

  Arguments described in: L<Paws::ElasticBeanstalk::DescribeConfigurationOptions>

  Returns: L<Paws::ElasticBeanstalk::ConfigurationOptionsDescription>

  

Describes the configuration options that are used in a particular
configuration template or environment, or that a specified solution
stack defines. The description includes the values the options, their
default values, and an indication of the required action on a running
environment if an option value is changed.











=head2 DescribeConfigurationSettings()

  Arguments described in: L<Paws::ElasticBeanstalk::DescribeConfigurationSettings>

  Returns: L<Paws::ElasticBeanstalk::ConfigurationSettingsDescriptions>

  

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

=item * DeleteEnvironmentConfiguration

=back











=head2 DescribeEnvironmentResources()

  Arguments described in: L<Paws::ElasticBeanstalk::DescribeEnvironmentResources>

  Returns: L<Paws::ElasticBeanstalk::EnvironmentResourceDescriptionsMessage>

  

Returns AWS resources for this environment.











=head2 DescribeEnvironments()

  Arguments described in: L<Paws::ElasticBeanstalk::DescribeEnvironments>

  Returns: L<Paws::ElasticBeanstalk::EnvironmentDescriptionsMessage>

  

Returns descriptions for existing environments.











=head2 DescribeEvents()

  Arguments described in: L<Paws::ElasticBeanstalk::DescribeEvents>

  Returns: L<Paws::ElasticBeanstalk::EventDescriptionsMessage>

  

Returns list of event descriptions matching criteria up to the last 6
weeks.











=head2 ListAvailableSolutionStacks()

  Arguments described in: L<Paws::ElasticBeanstalk::ListAvailableSolutionStacks>

  Returns: L<Paws::ElasticBeanstalk::ListAvailableSolutionStacksResultMessage>

  

Returns a list of the available solution stack names.











=head2 RebuildEnvironment()

  Arguments described in: L<Paws::ElasticBeanstalk::RebuildEnvironment>

  Returns: nothing

  

Deletes and recreates all of the AWS resources (for example: the Auto
Scaling group, load balancer, etc.) for a specified environment and
forces a restart.











=head2 RequestEnvironmentInfo()

  Arguments described in: L<Paws::ElasticBeanstalk::RequestEnvironmentInfo>

  Returns: nothing

  

Initiates a request to compile the specified type of information of the
deployed environment.

Setting the C<InfoType> to C<tail> compiles the last lines from the
application server log files of every Amazon EC2 instance in your
environment. Use RetrieveEnvironmentInfo to access the compiled
information.

Related Topics

=over

=item * RetrieveEnvironmentInfo

=back











=head2 RestartAppServer()

  Arguments described in: L<Paws::ElasticBeanstalk::RestartAppServer>

  Returns: nothing

  

Causes the environment to restart the application container server
running on each Amazon EC2 instance.











=head2 RetrieveEnvironmentInfo()

  Arguments described in: L<Paws::ElasticBeanstalk::RetrieveEnvironmentInfo>

  Returns: L<Paws::ElasticBeanstalk::RetrieveEnvironmentInfoResultMessage>

  

Retrieves the compiled information from a RequestEnvironmentInfo
request.

Related Topics

=over

=item * RequestEnvironmentInfo

=back











=head2 SwapEnvironmentCNAMEs()

  Arguments described in: L<Paws::ElasticBeanstalk::SwapEnvironmentCNAMEs>

  Returns: nothing

  

Swaps the CNAMEs of two environments.











=head2 TerminateEnvironment()

  Arguments described in: L<Paws::ElasticBeanstalk::TerminateEnvironment>

  Returns: L<Paws::ElasticBeanstalk::EnvironmentDescription>

  

Terminates the specified environment.











=head2 UpdateApplication()

  Arguments described in: L<Paws::ElasticBeanstalk::UpdateApplication>

  Returns: L<Paws::ElasticBeanstalk::ApplicationDescriptionMessage>

  

Updates the specified application to have the specified properties.











=head2 UpdateApplicationVersion()

  Arguments described in: L<Paws::ElasticBeanstalk::UpdateApplicationVersion>

  Returns: L<Paws::ElasticBeanstalk::ApplicationVersionDescriptionMessage>

  

Updates the specified application version to have the specified
properties.











=head2 UpdateConfigurationTemplate()

  Arguments described in: L<Paws::ElasticBeanstalk::UpdateConfigurationTemplate>

  Returns: L<Paws::ElasticBeanstalk::ConfigurationSettingsDescription>

  

Updates the specified configuration template to have the specified
properties or configuration option values.

Related Topics

=over

=item * DescribeConfigurationOptions

=back











=head2 UpdateEnvironment()

  Arguments described in: L<Paws::ElasticBeanstalk::UpdateEnvironment>

  Returns: L<Paws::ElasticBeanstalk::EnvironmentDescription>

  

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











=head2 ValidateConfigurationSettings()

  Arguments described in: L<Paws::ElasticBeanstalk::ValidateConfigurationSettings>

  Returns: L<Paws::ElasticBeanstalk::ConfigurationSettingsValidationMessages>

  

Takes a set of configuration settings and either a configuration
template or environment, and determines whether those values are valid.

This action returns a list of messages indicating any errors or
warnings associated with the selection of option values.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

