
package Paws::GreengrassV2::CreateDeployment;
  use Moose;
  has Components => (is => 'ro', isa => 'Paws::GreengrassV2::ComponentDeploymentSpecifications', traits => ['NameInRequest'], request_name => 'components');
  has DeploymentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentName');
  has DeploymentPolicies => (is => 'ro', isa => 'Paws::GreengrassV2::DeploymentPolicies', traits => ['NameInRequest'], request_name => 'deploymentPolicies');
  has IotJobConfiguration => (is => 'ro', isa => 'Paws::GreengrassV2::DeploymentIoTJobConfiguration', traits => ['NameInRequest'], request_name => 'iotJobConfiguration');
  has Tags => (is => 'ro', isa => 'Paws::GreengrassV2::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has TargetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeployment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/v2/deployments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GreengrassV2::CreateDeploymentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GreengrassV2::CreateDeployment - Arguments for method CreateDeployment on L<Paws::GreengrassV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDeployment on the
L<AWS IoT Greengrass V2|Paws::GreengrassV2> service. Use the attributes of this class
as arguments to method CreateDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDeployment.

=head1 SYNOPSIS

    my $greengrass = Paws->service('GreengrassV2');
    my $CreateDeploymentResponse = $greengrass->CreateDeployment(
      TargetArn  => 'MyTargetARN',
      Components => {
        'MyNonEmptyString' => {
          ComponentVersion =>
            'MyComponentVersionString',    # min: 1, max: 64; OPTIONAL
          ConfigurationUpdate => {
            Merge =>
              'MyComponentConfigurationString',   # min: 1, max: 65536; OPTIONAL
            Reset => [
              'MyComponentConfigurationPath', ...    # max: 256
            ],                                       # OPTIONAL
          },    # OPTIONAL
          RunWith => {
            PosixUser => 'MyNonEmptyString',    # min: 1
          },    # OPTIONAL
        },    # key: min: 1
      },    # OPTIONAL
      DeploymentName     => 'MyNonEmptyString',    # OPTIONAL
      DeploymentPolicies => {
        ComponentUpdatePolicy => {
          Action => 'NOTIFY_COMPONENTS'
          ,    # values: NOTIFY_COMPONENTS, SKIP_NOTIFY_COMPONENTS; OPTIONAL
          TimeoutInSeconds => 1,    # OPTIONAL
        },    # OPTIONAL
        ConfigurationValidationPolicy => {
          TimeoutInSeconds => 1,    # OPTIONAL
        },    # OPTIONAL
        FailureHandlingPolicy =>
          'ROLLBACK',    # values: ROLLBACK, DO_NOTHING; OPTIONAL
      },    # OPTIONAL
      IotJobConfiguration => {
        AbortConfig => {
          CriteriaList => [
            {
              Action => 'CANCEL',    # values: CANCEL
              FailureType =>
                'FAILED',            # values: FAILED, REJECTED, TIMED_OUT, ALL
              MinNumberOfExecutedThings => 1,    # min: 1
              ThresholdPercentage       => 1,    # max: 100

            },
            ...
          ],                                     # min: 1

        },    # OPTIONAL
        JobExecutionsRolloutConfig => {
          ExponentialRate => {
            BaseRatePerMinute    => 1,    # min: 1, max: 1000
            IncrementFactor      => 1,    # min: 1, max: 5
            RateIncreaseCriteria => {
              NumberOfNotifiedThings  => 1,    # min: 1; OPTIONAL
              NumberOfSucceededThings => 1,    # min: 1; OPTIONAL
            },

          },    # OPTIONAL
          MaximumPerMinute => 1,    # min: 1, max: 1000; OPTIONAL
        },    # OPTIONAL
        TimeoutConfig => {
          InProgressTimeoutInMinutes => 1,    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $DeploymentId = $CreateDeploymentResponse->DeploymentId;
    my $IotJobArn    = $CreateDeploymentResponse->IotJobArn;
    my $IotJobId     = $CreateDeploymentResponse->IotJobId;

    # Returns a L<Paws::GreengrassV2::CreateDeploymentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/CreateDeployment>

=head1 ATTRIBUTES


=head2 Components => L<Paws::GreengrassV2::ComponentDeploymentSpecifications>

The components to deploy. This is a dictionary, where each key is the
name of a component, and each key's value is the version and
configuration to deploy for that component.



=head2 DeploymentName => Str

The name of the deployment.

You can create deployments without names. If you create a deployment
without a name, the AWS IoT Greengrass V2 console shows the deployment
name as C<E<lt>targetTypeE<gt>:E<lt>targetNameE<gt>>, where
C<targetType> and C<targetName> are the type and name of the deployment
target.



=head2 DeploymentPolicies => L<Paws::GreengrassV2::DeploymentPolicies>

The deployment policies for the deployment. These policies define how
the deployment updates components and handles failure.



=head2 IotJobConfiguration => L<Paws::GreengrassV2::DeploymentIoTJobConfiguration>

The job configuration for the deployment configuration. The job
configuration specifies the rollout, timeout, and stop configurations
for the deployment configuration.



=head2 Tags => L<Paws::GreengrassV2::TagMap>

A list of key-value pairs that contain metadata for the resource. For
more information, see Tag your resources
(https://docs.aws.amazon.com/greengrass/v2/developerguide/tag-resources.html)
in the I<AWS IoT Greengrass V2 Developer Guide>.



=head2 B<REQUIRED> TargetArn => Str

The ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the target AWS IoT thing or thing group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeployment in L<Paws::GreengrassV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

