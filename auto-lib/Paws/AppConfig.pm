package Paws::AppConfig;
  use Moose;
  sub service { 'appconfig' }
  sub signing_name { 'appconfig' }
  sub version { '2019-10-09' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::CreateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateConfigurationProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::CreateConfigurationProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDeploymentStrategy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::CreateDeploymentStrategy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::CreateEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::DeleteApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteConfigurationProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::DeleteConfigurationProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDeploymentStrategy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::DeleteDeploymentStrategy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::DeleteEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::GetApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::GetConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConfigurationProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::GetConfigurationProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::GetDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeploymentStrategy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::GetDeploymentStrategy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::GetEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::ListApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListConfigurationProfiles {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::ListConfigurationProfiles', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeployments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::ListDeployments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDeploymentStrategies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::ListDeploymentStrategies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEnvironments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::ListEnvironments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::StartDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopDeployment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::StopDeployment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::UpdateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateConfigurationProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::UpdateConfigurationProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDeploymentStrategy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::UpdateDeploymentStrategy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEnvironment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::UpdateEnvironment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ValidateConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AppConfig::ValidateConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateApplication CreateConfigurationProfile CreateDeploymentStrategy CreateEnvironment DeleteApplication DeleteConfigurationProfile DeleteDeploymentStrategy DeleteEnvironment GetApplication GetConfiguration GetConfigurationProfile GetDeployment GetDeploymentStrategy GetEnvironment ListApplications ListConfigurationProfiles ListDeployments ListDeploymentStrategies ListEnvironments ListTagsForResource StartDeployment StopDeployment TagResource UntagResource UpdateApplication UpdateConfigurationProfile UpdateDeploymentStrategy UpdateEnvironment ValidateConfiguration / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig - Perl Interface to AWS Amazon AppConfig

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('AppConfig');
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

AWS AppConfig

Use AWS AppConfig, a capability of AWS Systems Manager, to create,
manage, and quickly deploy application configurations. AppConfig
supports controlled deployments to applications of any size and
includes built-in validation checks and monitoring. You can use
AppConfig with applications hosted on Amazon EC2 instances, AWS Lambda,
containers, mobile applications, or IoT devices.

To prevent errors when deploying application configurations, especially
for production systems where a simple typo could cause an unexpected
outage, AppConfig includes validators. A validator provides a syntactic
or semantic check to ensure that the configuration you want to deploy
works as intended. To validate your application configuration data, you
provide a schema or a Lambda function that runs against the
configuration. The configuration deployment or update can only proceed
when the configuration data is valid.

During a configuration deployment, AppConfig monitors the application
to ensure that the deployment is successful. If the system encounters
an error, AppConfig rolls back the change to minimize impact for your
application users. You can configure a deployment strategy for each
application or environment that includes deployment criteria, including
velocity, bake time, and alarms to monitor. Similar to error
monitoring, if a deployment triggers an alarm, AppConfig automatically
rolls back to the previous version.

AppConfig supports multiple use cases. Here are some examples.

=over

=item *

B<Application tuning>: Use AppConfig to carefully introduce changes to
your application that can only be tested with production traffic.

=item *

B<Feature toggle>: Use AppConfig to turn on new features that require a
timely deployment, such as a product launch or announcement.

=item *

B<User membership>: Use AppConfig to allow premium subscribers to
access paid content.

=item *

B<Operational issues>: Use AppConfig to reduce stress on your
application when a dependency or other external factor impacts the
system.

=back

This reference is intended to be used with the AWS AppConfig User Guide
(http://docs.aws.amazon.com/systems-manager/latest/userguide/appconfig.html).

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appconfig-2019-10-09>


=head1 METHODS

=head2 CreateApplication

=over

=item Name => Str

=item [Description => Str]

=item [Tags => L<Paws::AppConfig::TagMap>]


=back

Each argument is described in detail in: L<Paws::AppConfig::CreateApplication>

Returns: a L<Paws::AppConfig::Application> instance

An application in AppConfig is a logical unit of code that provides
capabilities for your customers. For example, an application can be a
microservice that runs on Amazon EC2 instances, a mobile application
installed by your users, a serverless application using Amazon API
Gateway and AWS Lambda, or any system you run on behalf of others.


=head2 CreateConfigurationProfile

=over

=item ApplicationId => Str

=item LocationUri => Str

=item Name => Str

=item RetrievalRoleArn => Str

=item [Description => Str]

=item [Tags => L<Paws::AppConfig::TagMap>]

=item [Validators => ArrayRef[L<Paws::AppConfig::Validator>]]


=back

Each argument is described in detail in: L<Paws::AppConfig::CreateConfigurationProfile>

Returns: a L<Paws::AppConfig::ConfigurationProfile> instance

Information that enables AppConfig to access the configuration source.
Valid configuration sources include Systems Manager (SSM) documents and
SSM Parameter Store parameters. A configuration profile includes the
following information.

=over

=item *

The Uri location of the configuration data.

=item *

The AWS Identity and Access Management (IAM) role that provides access
to the configuration data.

=item *

A validator for the configuration data. Available validators include
either a JSON Schema or an AWS Lambda function.

=back



=head2 CreateDeploymentStrategy

=over

=item DeploymentDurationInMinutes => Int

=item GrowthFactor => Num

=item Name => Str

=item ReplicateTo => Str

=item [Description => Str]

=item [FinalBakeTimeInMinutes => Int]

=item [GrowthType => Str]

=item [Tags => L<Paws::AppConfig::TagMap>]


=back

Each argument is described in detail in: L<Paws::AppConfig::CreateDeploymentStrategy>

Returns: a L<Paws::AppConfig::DeploymentStrategy> instance

A deployment strategy defines important criteria for rolling out your
configuration to the designated targets. A deployment strategy
includes: the overall duration required, a percentage of targets to
receive the deployment during each interval, an algorithm that defines
how percentage grows, and bake time.


=head2 CreateEnvironment

=over

=item ApplicationId => Str

=item Name => Str

=item [Description => Str]

=item [Monitors => ArrayRef[L<Paws::AppConfig::Monitor>]]

=item [Tags => L<Paws::AppConfig::TagMap>]


=back

Each argument is described in detail in: L<Paws::AppConfig::CreateEnvironment>

Returns: a L<Paws::AppConfig::Environment> instance

For each application, you define one or more environments. An
environment is a logical deployment group of AppConfig targets, such as
applications in a C<Beta> or C<Production> environment. You can also
define environments for application subcomponents such as the C<Web>,
C<Mobile> and C<Back-end> components for your application. You can
configure Amazon CloudWatch alarms for each environment. The system
monitors alarms during a configuration deployment. If an alarm is
triggered, the system rolls back the configuration.


=head2 DeleteApplication

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::AppConfig::DeleteApplication>

Returns: nothing

Delete an application. Deleting an application does not delete a
configuration from a host.


=head2 DeleteConfigurationProfile

=over

=item ApplicationId => Str

=item ConfigurationProfileId => Str


=back

Each argument is described in detail in: L<Paws::AppConfig::DeleteConfigurationProfile>

Returns: nothing

Delete a configuration profile. Deleting a configuration profile does
not delete a configuration from a host.


=head2 DeleteDeploymentStrategy

=over

=item DeploymentStrategyId => Str


=back

Each argument is described in detail in: L<Paws::AppConfig::DeleteDeploymentStrategy>

Returns: nothing

Delete a deployment strategy. Deleting a deployment strategy does not
delete a configuration from a host.


=head2 DeleteEnvironment

=over

=item ApplicationId => Str

=item EnvironmentId => Str


=back

Each argument is described in detail in: L<Paws::AppConfig::DeleteEnvironment>

Returns: nothing

Delete an environment. Deleting an environment does not delete a
configuration from a host.


=head2 GetApplication

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::AppConfig::GetApplication>

Returns: a L<Paws::AppConfig::Application> instance

Retrieve information about an application.


=head2 GetConfiguration

=over

=item Application => Str

=item ClientId => Str

=item Configuration => Str

=item Environment => Str

=item [ClientConfigurationVersion => Str]


=back

Each argument is described in detail in: L<Paws::AppConfig::GetConfiguration>

Returns: a L<Paws::AppConfig::Configuration> instance

Retrieve information about a configuration.


=head2 GetConfigurationProfile

=over

=item ApplicationId => Str

=item ConfigurationProfileId => Str


=back

Each argument is described in detail in: L<Paws::AppConfig::GetConfigurationProfile>

Returns: a L<Paws::AppConfig::ConfigurationProfile> instance

Retrieve information about a configuration profile.


=head2 GetDeployment

=over

=item ApplicationId => Str

=item DeploymentNumber => Int

=item EnvironmentId => Str


=back

Each argument is described in detail in: L<Paws::AppConfig::GetDeployment>

Returns: a L<Paws::AppConfig::Deployment> instance

Retrieve information about a configuration deployment.


=head2 GetDeploymentStrategy

=over

=item DeploymentStrategyId => Str


=back

Each argument is described in detail in: L<Paws::AppConfig::GetDeploymentStrategy>

Returns: a L<Paws::AppConfig::DeploymentStrategy> instance

Retrieve information about a deployment strategy. A deployment strategy
defines important criteria for rolling out your configuration to the
designated targets. A deployment strategy includes: the overall
duration required, a percentage of targets to receive the deployment
during each interval, an algorithm that defines how percentage grows,
and bake time.


=head2 GetEnvironment

=over

=item ApplicationId => Str

=item EnvironmentId => Str


=back

Each argument is described in detail in: L<Paws::AppConfig::GetEnvironment>

Returns: a L<Paws::AppConfig::Environment> instance

Retrieve information about an environment. An environment is a logical
deployment group of AppConfig applications, such as applications in a
C<Production> environment or in an C<EU_Region> environment. Each
configuration deployment targets an environment. You can enable one or
more Amazon CloudWatch alarms for an environment. If an alarm is
triggered during a deployment, AppConfig roles back the configuration.


=head2 ListApplications

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppConfig::ListApplications>

Returns: a L<Paws::AppConfig::Applications> instance

List all applications in your AWS account.


=head2 ListConfigurationProfiles

=over

=item ApplicationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppConfig::ListConfigurationProfiles>

Returns: a L<Paws::AppConfig::ConfigurationProfiles> instance

Lists the configuration profiles for an application.


=head2 ListDeployments

=over

=item ApplicationId => Str

=item EnvironmentId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppConfig::ListDeployments>

Returns: a L<Paws::AppConfig::Deployments> instance

Lists the deployments for an environment.


=head2 ListDeploymentStrategies

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppConfig::ListDeploymentStrategies>

Returns: a L<Paws::AppConfig::DeploymentStrategies> instance

List deployment strategies.


=head2 ListEnvironments

=over

=item ApplicationId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AppConfig::ListEnvironments>

Returns: a L<Paws::AppConfig::Environments> instance

List the environments for an application.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::AppConfig::ListTagsForResource>

Returns: a L<Paws::AppConfig::ResourceTags> instance

Retrieves the list of key-value tags assigned to the resource.


=head2 StartDeployment

=over

=item ApplicationId => Str

=item ConfigurationProfileId => Str

=item ConfigurationVersion => Str

=item DeploymentStrategyId => Str

=item EnvironmentId => Str

=item [Description => Str]

=item [Tags => L<Paws::AppConfig::TagMap>]


=back

Each argument is described in detail in: L<Paws::AppConfig::StartDeployment>

Returns: a L<Paws::AppConfig::Deployment> instance

Starts a deployment.


=head2 StopDeployment

=over

=item ApplicationId => Str

=item DeploymentNumber => Int

=item EnvironmentId => Str


=back

Each argument is described in detail in: L<Paws::AppConfig::StopDeployment>

Returns: a L<Paws::AppConfig::Deployment> instance

Stops a deployment. This API action works only on deployments that have
a status of C<DEPLOYING>. This action moves the deployment to a status
of C<ROLLED_BACK>.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::AppConfig::TagMap>


=back

Each argument is described in detail in: L<Paws::AppConfig::TagResource>

Returns: nothing

Metadata to assign to an AppConfig resource. Tags help organize and
categorize your AppConfig resources. Each tag consists of a key and an
optional value, both of which you define. You can specify a maximum of
50 tags for a resource.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::AppConfig::UntagResource>

Returns: nothing

Deletes a tag key and value from an AppConfig resource.


=head2 UpdateApplication

=over

=item ApplicationId => Str

=item [Description => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::AppConfig::UpdateApplication>

Returns: a L<Paws::AppConfig::Application> instance

Updates an application.


=head2 UpdateConfigurationProfile

=over

=item ApplicationId => Str

=item ConfigurationProfileId => Str

=item [Description => Str]

=item [Name => Str]

=item [RetrievalRoleArn => Str]

=item [Validators => ArrayRef[L<Paws::AppConfig::Validator>]]


=back

Each argument is described in detail in: L<Paws::AppConfig::UpdateConfigurationProfile>

Returns: a L<Paws::AppConfig::ConfigurationProfile> instance

Updates a configuration profile.


=head2 UpdateDeploymentStrategy

=over

=item DeploymentStrategyId => Str

=item [DeploymentDurationInMinutes => Int]

=item [Description => Str]

=item [FinalBakeTimeInMinutes => Int]

=item [GrowthFactor => Num]

=item [GrowthType => Str]


=back

Each argument is described in detail in: L<Paws::AppConfig::UpdateDeploymentStrategy>

Returns: a L<Paws::AppConfig::DeploymentStrategy> instance

Updates a deployment strategy.


=head2 UpdateEnvironment

=over

=item ApplicationId => Str

=item EnvironmentId => Str

=item [Description => Str]

=item [Monitors => ArrayRef[L<Paws::AppConfig::Monitor>]]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::AppConfig::UpdateEnvironment>

Returns: a L<Paws::AppConfig::Environment> instance

Updates an environment.


=head2 ValidateConfiguration

=over

=item ApplicationId => Str

=item ConfigurationProfileId => Str

=item ConfigurationVersion => Str


=back

Each argument is described in detail in: L<Paws::AppConfig::ValidateConfiguration>

Returns: nothing

Uses the validators in a configuration profile to validate a
configuration.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

