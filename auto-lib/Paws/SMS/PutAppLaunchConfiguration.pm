
package Paws::SMS::PutAppLaunchConfiguration;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appId' );
  has RoleName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleName' );
  has ServerGroupLaunchConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::SMS::ServerGroupLaunchConfiguration]', traits => ['NameInRequest'], request_name => 'serverGroupLaunchConfigurations' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAppLaunchConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SMS::PutAppLaunchConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::PutAppLaunchConfiguration - Arguments for method PutAppLaunchConfiguration on L<Paws::SMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAppLaunchConfiguration on the
L<AWS Server Migration Service|Paws::SMS> service. Use the attributes of this class
as arguments to method PutAppLaunchConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAppLaunchConfiguration.

=head1 SYNOPSIS

    my $sms = Paws->service('SMS');
    my $PutAppLaunchConfigurationResponse = $sms->PutAppLaunchConfiguration(
      AppId                           => 'MyAppId',       # OPTIONAL
      RoleName                        => 'MyRoleName',    # OPTIONAL
      ServerGroupLaunchConfigurations => [
        {
          LaunchOrder                => 1,                    # OPTIONAL
          ServerGroupId              => 'MyServerGroupId',    # OPTIONAL
          ServerLaunchConfigurations => [
            {
              AssociatePublicIpAddress => 1,                    # OPTIONAL
              Ec2KeyName               => 'MyEC2KeyName',       # OPTIONAL
              InstanceType             => 'MyInstanceType',     # OPTIONAL
              LogicalId                => 'MyLogicalId',        # OPTIONAL
              SecurityGroup            => 'MySecurityGroup',    # OPTIONAL
              Server                   => {
                ReplicationJobId         => 'MyReplicationJobId',    # OPTIONAL
                ReplicationJobTerminated => 1,                       # OPTIONAL
                ServerId                 => 'MyServerId',            # OPTIONAL
                ServerType =>
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
              Subnet   => 'MySubnet',    # OPTIONAL
              UserData => {
                S3Location => {
                  Bucket => 'MyBucketName',    # OPTIONAL
                  Key    => 'MyKeyName',       # OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
              Vpc => 'MyVPC',    # OPTIONAL
            },
            ...
          ],                     # OPTIONAL
        },
        ...
      ],                         # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms/PutAppLaunchConfiguration>

=head1 ATTRIBUTES


=head2 AppId => Str

ID of the application associated with the launch configuration.



=head2 RoleName => Str

Name of service role in the customer's account that Amazon
CloudFormation uses to launch the application.



=head2 ServerGroupLaunchConfigurations => ArrayRef[L<Paws::SMS::ServerGroupLaunchConfiguration>]

Launch configurations for server groups in the application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAppLaunchConfiguration in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

