
package Paws::AppRunner::UpdateService;
  use Moose;
  has AutoScalingConfigurationArn => (is => 'ro', isa => 'Str');
  has HealthCheckConfiguration => (is => 'ro', isa => 'Paws::AppRunner::HealthCheckConfiguration');
  has InstanceConfiguration => (is => 'ro', isa => 'Paws::AppRunner::InstanceConfiguration');
  has ServiceArn => (is => 'ro', isa => 'Str', required => 1);
  has SourceConfiguration => (is => 'ro', isa => 'Paws::AppRunner::SourceConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateService');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppRunner::UpdateServiceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::UpdateService - Arguments for method UpdateService on L<Paws::AppRunner>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateService on the
L<AWS App Runner|Paws::AppRunner> service. Use the attributes of this class
as arguments to method UpdateService.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateService.

=head1 SYNOPSIS

    my $apprunner = Paws->service('AppRunner');
    my $UpdateServiceResponse = $apprunner->UpdateService(
      ServiceArn                  => 'MyAppRunnerResourceArn',
      AutoScalingConfigurationArn => 'MyAppRunnerResourceArn',    # OPTIONAL
      HealthCheckConfiguration    => {
        HealthyThreshold   => 1,             # min: 1, max: 20; OPTIONAL
        Interval           => 1,             # min: 1, max: 20; OPTIONAL
        Path               => 'MyString',    # max: 51200; OPTIONAL
        Protocol           => 'TCP',         # values: TCP, HTTP; OPTIONAL
        Timeout            => 1,             # min: 1, max: 20; OPTIONAL
        UnhealthyThreshold => 1,             # min: 1, max: 20; OPTIONAL
      },    # OPTIONAL
      InstanceConfiguration => {
        Cpu             => 'MyCpu',        # min: 4, max: 6; OPTIONAL
        InstanceRoleArn => 'MyRoleArn',    # min: 29, max: 102; OPTIONAL
        Memory          => 'MyMemory',     # min: 4, max: 4; OPTIONAL
      },    # OPTIONAL
      SourceConfiguration => {
        AuthenticationConfiguration => {
          AccessRoleArn => 'MyRoleArn',    # min: 29, max: 102; OPTIONAL
          ConnectionArn => 'MyAppRunnerResourceArn',    # min: 1, max: 1011
        },    # OPTIONAL
        AutoDeploymentsEnabled => 1,    # OPTIONAL
        CodeRepository         => {
          RepositoryUrl     => 'MyString',    # max: 51200; OPTIONAL
          SourceCodeVersion => {
            Type  => 'BRANCH',                # values: BRANCH
            Value => 'MyString',              # max: 51200; OPTIONAL

          },
          CodeConfiguration => {
            ConfigurationSource     => 'REPOSITORY',   # values: REPOSITORY, API
            CodeConfigurationValues => {
              Runtime      => 'PYTHON_3',          # values: PYTHON_3, NODEJS_12
              BuildCommand => 'MyBuildCommand',    # OPTIONAL
              Port         => 'MyString',          # max: 51200; OPTIONAL
              RuntimeEnvironmentVariables => {
                'MyRuntimeEnvironmentVariablesKey' =>
                  'MyRuntimeEnvironmentVariablesValue',
              },                                   # OPTIONAL
              StartCommand => 'MyStartCommand',    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        ImageRepository => {
          ImageIdentifier     => 'MyImageIdentifier',  # min: 1, max: 1024
          ImageRepositoryType => 'ECR',                # values: ECR, ECR_PUBLIC
          ImageConfiguration  => {
            Port                        => 'MyString',    # max: 51200; OPTIONAL
            RuntimeEnvironmentVariables => {
              'MyRuntimeEnvironmentVariablesKey' =>
                'MyRuntimeEnvironmentVariablesValue',
            },                                            # OPTIONAL
            StartCommand => 'MyString',                   # max: 51200; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $OperationId = $UpdateServiceResponse->OperationId;
    my $Service     = $UpdateServiceResponse->Service;

    # Returns a L<Paws::AppRunner::UpdateServiceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apprunner/UpdateService>

=head1 ATTRIBUTES


=head2 AutoScalingConfigurationArn => Str

The Amazon Resource Name (ARN) of an App Runner automatic scaling
configuration resource that you want to associate with your service.



=head2 HealthCheckConfiguration => L<Paws::AppRunner::HealthCheckConfiguration>

The settings for the health check that AWS App Runner performs to
monitor the health of your service.



=head2 InstanceConfiguration => L<Paws::AppRunner::InstanceConfiguration>

The runtime configuration to apply to instances (scaling units) of the
App Runner service.



=head2 B<REQUIRED> ServiceArn => Str

The Amazon Resource Name (ARN) of the App Runner service that you want
to update.



=head2 SourceConfiguration => L<Paws::AppRunner::SourceConfiguration>

The source configuration to apply to the App Runner service.

You can change the configuration of the code or image repository that
the service uses. However, you can't switch from code to image or the
other way around. This means that you must provide the same structure
member of C<SourceConfiguration> that you originally included when you
created the service. Specifically, you can include either
C<CodeRepository> or C<ImageRepository>. To update the source
configuration, set the values to members of the structure that you
include.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateService in L<Paws::AppRunner>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

