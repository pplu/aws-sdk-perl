
package Paws::ElasticBeanstalk::UpdateEnvironment;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::ConfigurationOptionSetting]');
  has OptionsToRemove => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::OptionSpecification]');
  has PlatformArn => (is => 'ro', isa => 'Str');
  has SolutionStackName => (is => 'ro', isa => 'Str');
  has TemplateName => (is => 'ro', isa => 'Str');
  has Tier => (is => 'ro', isa => 'Paws::ElasticBeanstalk::EnvironmentTier');
  has VersionLabel => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEnvironment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::EnvironmentDescription');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateEnvironmentResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::UpdateEnvironment - Arguments for method UpdateEnvironment on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEnvironment on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method UpdateEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEnvironment.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    # To update an environment to a new version
    # The following operation updates an environment named "my-env" to version
    # "v2" of the application to which it belongs:
    my $EnvironmentDescription = $elasticbeanstalk->UpdateEnvironment(
      {
        'EnvironmentName' => 'my-env',
        'VersionLabel'    => 'v2'
      }
    );

    # Results:
    my $ApplicationName   = $EnvironmentDescription->ApplicationName;
    my $CNAME             = $EnvironmentDescription->CNAME;
    my $DateCreated       = $EnvironmentDescription->DateCreated;
    my $DateUpdated       = $EnvironmentDescription->DateUpdated;
    my $EndpointURL       = $EnvironmentDescription->EndpointURL;
    my $EnvironmentId     = $EnvironmentDescription->EnvironmentId;
    my $EnvironmentName   = $EnvironmentDescription->EnvironmentName;
    my $Health            = $EnvironmentDescription->Health;
    my $SolutionStackName = $EnvironmentDescription->SolutionStackName;
    my $Status            = $EnvironmentDescription->Status;
    my $Tier              = $EnvironmentDescription->Tier;
    my $VersionLabel      = $EnvironmentDescription->VersionLabel;

    # Returns a L<Paws::ElasticBeanstalk::EnvironmentDescription> object.
    # To configure option settings
    # The following operation configures several options in the
    # aws:elb:loadbalancer namespace:
    my $EnvironmentDescription = $elasticbeanstalk->UpdateEnvironment(
      {
        'EnvironmentName' => 'my-env',
        'OptionSettings'  => [

          {
            'Namespace'  => 'aws:elb:healthcheck',
            'OptionName' => 'Interval',
            'Value'      => 15
          },

          {
            'Namespace'  => 'aws:elb:healthcheck',
            'OptionName' => 'Timeout',
            'Value'      => 8
          },

          {
            'Namespace'  => 'aws:elb:healthcheck',
            'OptionName' => 'HealthyThreshold',
            'Value'      => 2
          },

          {
            'Namespace'  => 'aws:elb:healthcheck',
            'OptionName' => 'UnhealthyThreshold',
            'Value'      => 3
          }
        ]
      }
    );

    # Results:
    my $AbortableOperationInProgress =
      $EnvironmentDescription->AbortableOperationInProgress;
    my $ApplicationName   = $EnvironmentDescription->ApplicationName;
    my $CNAME             = $EnvironmentDescription->CNAME;
    my $DateCreated       = $EnvironmentDescription->DateCreated;
    my $DateUpdated       = $EnvironmentDescription->DateUpdated;
    my $EndpointURL       = $EnvironmentDescription->EndpointURL;
    my $EnvironmentId     = $EnvironmentDescription->EnvironmentId;
    my $EnvironmentName   = $EnvironmentDescription->EnvironmentName;
    my $Health            = $EnvironmentDescription->Health;
    my $SolutionStackName = $EnvironmentDescription->SolutionStackName;
    my $Status            = $EnvironmentDescription->Status;
    my $Tier              = $EnvironmentDescription->Tier;
    my $VersionLabel      = $EnvironmentDescription->VersionLabel;

    # Returns a L<Paws::ElasticBeanstalk::EnvironmentDescription> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/UpdateEnvironment>

=head1 ATTRIBUTES


=head2 ApplicationName => Str

The name of the application with which the environment is associated.



=head2 Description => Str

If this parameter is specified, AWS Elastic Beanstalk updates the
description of this environment.



=head2 EnvironmentId => Str

The ID of the environment to update.

If no environment with this ID exists, AWS Elastic Beanstalk returns an
C<InvalidParameterValue> error.

Condition: You must specify either this or an EnvironmentName, or both.
If you do not specify either, AWS Elastic Beanstalk returns
C<MissingRequiredParameter> error.



=head2 EnvironmentName => Str

The name of the environment to update. If no environment with this name
exists, AWS Elastic Beanstalk returns an C<InvalidParameterValue>
error.

Condition: You must specify either this or an EnvironmentId, or both.
If you do not specify either, AWS Elastic Beanstalk returns
C<MissingRequiredParameter> error.



=head2 GroupName => Str

The name of the group to which the target environment belongs. Specify
a group name only if the environment's name is specified in an
environment manifest and not with the environment name or environment
ID parameters. See Environment Manifest (env.yaml)
(http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environment-cfg-manifest.html)
for details.



=head2 OptionSettings => ArrayRef[L<Paws::ElasticBeanstalk::ConfigurationOptionSetting>]

If specified, AWS Elastic Beanstalk updates the configuration set
associated with the running environment and sets the specified
configuration options to the requested value.



=head2 OptionsToRemove => ArrayRef[L<Paws::ElasticBeanstalk::OptionSpecification>]

A list of custom user-defined configuration options to remove from the
configuration set for this environment.



=head2 PlatformArn => Str

The ARN of the platform, if used.



=head2 SolutionStackName => Str

This specifies the platform version that the environment will run after
the environment is updated.



=head2 TemplateName => Str

If this parameter is specified, AWS Elastic Beanstalk deploys this
configuration template to the environment. If no such configuration
template is found, AWS Elastic Beanstalk returns an
C<InvalidParameterValue> error.



=head2 Tier => L<Paws::ElasticBeanstalk::EnvironmentTier>

This specifies the tier to use to update the environment.

Condition: At this time, if you change the tier version, name, or type,
AWS Elastic Beanstalk returns C<InvalidParameterValue> error.



=head2 VersionLabel => Str

If this parameter is specified, AWS Elastic Beanstalk deploys the named
application version to the environment. If no such application version
is found, returns an C<InvalidParameterValue> error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEnvironment in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

