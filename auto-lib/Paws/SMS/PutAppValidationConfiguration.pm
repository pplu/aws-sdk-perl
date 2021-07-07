
package Paws::SMS::PutAppValidationConfiguration;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appId' , required => 1);
  has AppValidationConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::SMS::AppValidationConfiguration]', traits => ['NameInRequest'], request_name => 'appValidationConfigurations' );
  has ServerGroupValidationConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::SMS::ServerGroupValidationConfiguration]', traits => ['NameInRequest'], request_name => 'serverGroupValidationConfigurations' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAppValidationConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SMS::PutAppValidationConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::PutAppValidationConfiguration - Arguments for method PutAppValidationConfiguration on L<Paws::SMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAppValidationConfiguration on the
L<AWS Server Migration Service|Paws::SMS> service. Use the attributes of this class
as arguments to method PutAppValidationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAppValidationConfiguration.

=head1 SYNOPSIS

    my $sms = Paws->service('SMS');
    my $PutAppValidationConfigurationResponse =
      $sms->PutAppValidationConfiguration(
      AppId                       => 'MyAppIdWithValidation',
      AppValidationConfigurations => [
        {
          AppValidationStrategy => 'SSM',           # values: SSM; OPTIONAL
          Name => 'MyNonEmptyStringWithMaxLen255',  # min: 1, max: 255; OPTIONAL
          SsmValidationParameters => {
            Command => 'MyCommand',    # min: 1, max: 64000; OPTIONAL
            ExecutionTimeoutSeconds => 1,    # min: 60, max: 28800; OPTIONAL
            InstanceId              => 'MyInstanceId',    # OPTIONAL
            OutputS3BucketName      => 'MyBucketName',    # OPTIONAL
            ScriptType              => 'SHELL_SCRIPT'
            ,    # values: SHELL_SCRIPT, POWERSHELL_SCRIPT; OPTIONAL
            Source => {
              S3Location => {
                Bucket => 'MyS3BucketName',    # min: 3, max: 63; OPTIONAL
                Key    => 'MyS3KeyName',       # max: 1024; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          ValidationId => 'MyValidationId',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ServerGroupValidationConfigurations => [
        {
          ServerGroupId                  => 'MyServerGroupId',    # OPTIONAL
          ServerValidationConfigurations => [
            {
              Name =>
                'MyNonEmptyStringWithMaxLen255',    # min: 1, max: 255; OPTIONAL
              Server => {
                ReplicationJobId         => 'MyReplicationJobId',    # OPTIONAL
                ReplicationJobTerminated => 1,                       # OPTIONAL
                ServerId                 => 'MyServerId',            # OPTIONAL
                ServerType               =>
                  'VIRTUAL_MACHINE',    # values: VIRTUAL_MACHINE; OPTIONAL
                VmServer => {
                  VmManagerName => 'MyVmManagerName',    # OPTIONAL
                  VmManagerType => 'VSPHERE'
                  ,    # values: VSPHERE, SCVMM, HYPERV-MANAGER; OPTIONAL
                  VmName          => 'MyVmName',    # OPTIONAL
                  VmPath          => 'MyVmPath',    # OPTIONAL
                  VmServerAddress => {
                    VmId        => 'MyVmId',           # OPTIONAL
                    VmManagerId => 'MyVmManagerId',    # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
              ServerValidationStrategy =>
                'USERDATA',    # values: USERDATA; OPTIONAL
              UserDataValidationParameters => {
                ScriptType => 'SHELL_SCRIPT'
                ,    # values: SHELL_SCRIPT, POWERSHELL_SCRIPT; OPTIONAL
                Source => {
                  S3Location => {
                    Bucket => 'MyS3BucketName',    # min: 3, max: 63; OPTIONAL
                    Key    => 'MyS3KeyName',       # max: 1024; OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
              ValidationId => 'MyValidationId',    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms/PutAppValidationConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The ID of the application.



=head2 AppValidationConfigurations => ArrayRef[L<Paws::SMS::AppValidationConfiguration>]

The configuration for application validation.



=head2 ServerGroupValidationConfigurations => ArrayRef[L<Paws::SMS::ServerGroupValidationConfiguration>]

The configuration for instance validation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAppValidationConfiguration in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

