
package Paws::ElasticBeanstalk::CreateEnvironment;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has CNAMEPrefix => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::ConfigurationOptionSetting]');
  has OptionsToRemove => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::OptionSpecification]');
  has PlatformArn => (is => 'ro', isa => 'Str');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::Tag]');
  has TemplateName => (is => 'ro', isa => 'Str');
  has Tier => (is => 'ro', isa => 'Paws::ElasticBeanstalk::EnvironmentTier');
  has VersionLabel => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEnvironment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::EnvironmentDescription');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateEnvironmentResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::CreateEnvironment - Arguments for method CreateEnvironment on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEnvironment on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method CreateEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEnvironment.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    # To create a new environment for an application
    # The following operation creates a new environment for version v1 of a java
    # application named my-app:
    my $EnvironmentDescription = $elasticbeanstalk->CreateEnvironment(
      {
        'ApplicationName' => 'my-app',
        'CNAMEPrefix'     => 'my-app',
        'EnvironmentName' => 'my-env',
        'SolutionStackName' =>
          '64bit Amazon Linux 2015.03 v2.0.0 running Tomcat 8 Java 8',
        'VersionLabel' => 'v1'
      }
    );

    # Results:
    my $ApplicationName   = $EnvironmentDescription->ApplicationName;
    my $CNAME             = $EnvironmentDescription->CNAME;
    my $DateCreated       = $EnvironmentDescription->DateCreated;
    my $DateUpdated       = $EnvironmentDescription->DateUpdated;
    my $EnvironmentId     = $EnvironmentDescription->EnvironmentId;
    my $EnvironmentName   = $EnvironmentDescription->EnvironmentName;
    my $Health            = $EnvironmentDescription->Health;
    my $SolutionStackName = $EnvironmentDescription->SolutionStackName;
    my $Status            = $EnvironmentDescription->Status;
    my $Tier              = $EnvironmentDescription->Tier;
    my $VersionLabel      = $EnvironmentDescription->VersionLabel;

    # Returns a L<Paws::ElasticBeanstalk::EnvironmentDescription> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/CreateEnvironment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of the application that contains the version to be deployed.

If no application is found with this name, C<CreateEnvironment> returns
an C<InvalidParameterValue> error.



=head2 CNAMEPrefix => Str

If specified, the environment attempts to use this value as the prefix
for the CNAME. If not specified, the CNAME is generated automatically
by appending a random alphanumeric string to the environment name.



=head2 Description => Str

Describes this environment.



=head2 EnvironmentName => Str

A unique name for the deployment environment. Used in the application
URL.

Constraint: Must be from 4 to 40 characters in length. The name can
contain only letters, numbers, and hyphens. It cannot start or end with
a hyphen. This name must be unique within a region in your account. If
the specified name already exists in the region, AWS Elastic Beanstalk
returns an C<InvalidParameterValue> error.

Default: If the CNAME parameter is not specified, the environment name
becomes part of the CNAME, and therefore part of the visible URL for
your application.



=head2 GroupName => Str

The name of the group to which the target environment belongs. Specify
a group name only if the environment's name is specified in an
environment manifest and not with the environment name parameter. See
Environment Manifest (env.yaml)
(http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html)
for details.



=head2 OptionSettings => ArrayRef[L<Paws::ElasticBeanstalk::ConfigurationOptionSetting>]

If specified, AWS Elastic Beanstalk sets the specified configuration
options to the requested value in the configuration set for the new
environment. These override the values obtained from the solution stack
or the configuration template.



=head2 OptionsToRemove => ArrayRef[L<Paws::ElasticBeanstalk::OptionSpecification>]

A list of custom user-defined configuration options to remove from the
configuration set for this new environment.



=head2 PlatformArn => Str

The ARN of the platform.



=head2 SolutionStackName => Str

This is an alternative to specifying a template name. If specified, AWS
Elastic Beanstalk sets the configuration values to the default values
associated with the specified solution stack.

For a list of current solution stacks, see Elastic Beanstalk Supported
Platforms
(http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/concepts.platforms.html).



=head2 Tags => ArrayRef[L<Paws::ElasticBeanstalk::Tag>]

This specifies the tags applied to resources in the environment.



=head2 TemplateName => Str

The name of the configuration template to use in deployment. If no
configuration template is found with this name, AWS Elastic Beanstalk
returns an C<InvalidParameterValue> error.



=head2 Tier => L<Paws::ElasticBeanstalk::EnvironmentTier>

This specifies the tier to use for creating this environment.



=head2 VersionLabel => Str

The name of the application version to deploy.

If the specified application has no associated application versions,
AWS Elastic Beanstalk C<UpdateEnvironment> returns an
C<InvalidParameterValue> error.

Default: If not specified, AWS Elastic Beanstalk attempts to launch the
sample application in the container.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEnvironment in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

