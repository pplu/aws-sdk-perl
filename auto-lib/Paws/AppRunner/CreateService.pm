
package Paws::AppRunner::CreateService;
  use Moose;
  has AutoScalingConfigurationArn => (is => 'ro', isa => 'Str');
  has EncryptionConfiguration => (is => 'ro', isa => 'Paws::AppRunner::EncryptionConfiguration');
  has HealthCheckConfiguration => (is => 'ro', isa => 'Paws::AppRunner::HealthCheckConfiguration');
  has InstanceConfiguration => (is => 'ro', isa => 'Paws::AppRunner::InstanceConfiguration');
  has ServiceName => (is => 'ro', isa => 'Str', required => 1);
  has SourceConfiguration => (is => 'ro', isa => 'Paws::AppRunner::SourceConfiguration', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::AppRunner::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateService');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppRunner::CreateServiceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::CreateService - Arguments for method CreateService on L<Paws::AppRunner>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateService on the
L<AWS App Runner|Paws::AppRunner> service. Use the attributes of this class
as arguments to method CreateService.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateService.

=head1 SYNOPSIS

    my $apprunner = Paws->service('AppRunner');
    my $CreateServiceResponse = $apprunner->CreateService(
      ServiceName         => 'MyServiceName',
      SourceConfiguration => {
        AuthenticationConfiguration => {
          AccessRoleArn => 'MyRoleArn',    # min: 29, max: 102; OPTIONAL
          ConnectionArn =>
            'MyAppRunnerResourceArn',      # min: 1, max: 1011; OPTIONAL
        },    # OPTIONAL
        AutoDeploymentsEnabled => 1,    # OPTIONAL
        CodeRepository         => {
          RepositoryUrl     => 'MyString',    # max: 51200
          SourceCodeVersion => {
            Type  => 'BRANCH',                # values: BRANCH
            Value => 'MyString',              # max: 51200

          },
          CodeConfiguration => {
            ConfigurationSource     => 'REPOSITORY',   # values: REPOSITORY, API
            CodeConfigurationValues => {
              Runtime      => 'PYTHON_3',          # values: PYTHON_3, NODEJS_12
              BuildCommand => 'MyBuildCommand',    # OPTIONAL
              Port         => 'MyString',          # max: 51200
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
            Port                        => 'MyString',    # max: 51200
            RuntimeEnvironmentVariables => {
              'MyRuntimeEnvironmentVariablesKey' =>
                'MyRuntimeEnvironmentVariablesValue',
            },                                            # OPTIONAL
            StartCommand => 'MyString',                   # max: 51200
          },    # OPTIONAL
        },    # OPTIONAL
      },
      AutoScalingConfigurationArn => 'MyAppRunnerResourceArn',    # OPTIONAL
      EncryptionConfiguration     => {
        KmsKey => 'MyKmsKeyArn',                                  # max: 256

      },    # OPTIONAL
      HealthCheckConfiguration => {
        HealthyThreshold   => 1,             # min: 1, max: 20; OPTIONAL
        Interval           => 1,             # min: 1, max: 20; OPTIONAL
        Path               => 'MyString',    # max: 51200
        Protocol           => 'TCP',         # values: TCP, HTTP; OPTIONAL
        Timeout            => 1,             # min: 1, max: 20; OPTIONAL
        UnhealthyThreshold => 1,             # min: 1, max: 20; OPTIONAL
      },    # OPTIONAL
      InstanceConfiguration => {
        Cpu             => 'MyCpu',        # min: 4, max: 6; OPTIONAL
        InstanceRoleArn => 'MyRoleArn',    # min: 29, max: 102; OPTIONAL
        Memory          => 'MyMemory',     # min: 4, max: 4; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $OperationId = $CreateServiceResponse->OperationId;
    my $Service     = $CreateServiceResponse->Service;

    # Returns a L<Paws::AppRunner::CreateServiceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apprunner/CreateService>

=head1 ATTRIBUTES


=head2 AutoScalingConfigurationArn => Str

The Amazon Resource Name (ARN) of an App Runner automatic scaling
configuration resource that you want to associate with your service. If
not provided, App Runner associates the latest revision of a default
auto scaling configuration.



=head2 EncryptionConfiguration => L<Paws::AppRunner::EncryptionConfiguration>

An optional custom encryption key that App Runner uses to encrypt the
copy of your source repository that it maintains and your service logs.
By default, App Runner uses an AWS managed CMK.



=head2 HealthCheckConfiguration => L<Paws::AppRunner::HealthCheckConfiguration>

The settings for the health check that AWS App Runner performs to
monitor the health of your service.



=head2 InstanceConfiguration => L<Paws::AppRunner::InstanceConfiguration>

The runtime configuration of instances (scaling units) of the App
Runner service.



=head2 B<REQUIRED> ServiceName => Str

A name for the new service. It must be unique across all the running
App Runner services in your AWS account in the AWS Region.



=head2 B<REQUIRED> SourceConfiguration => L<Paws::AppRunner::SourceConfiguration>

The source to deploy to the App Runner service. It can be a code or an
image repository.



=head2 Tags => ArrayRef[L<Paws::AppRunner::Tag>]

An optional list of metadata items that you can associate with your
service resource. A tag is a key-value pair.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateService in L<Paws::AppRunner>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

