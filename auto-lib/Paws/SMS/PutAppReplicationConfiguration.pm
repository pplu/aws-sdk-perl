
package Paws::SMS::PutAppReplicationConfiguration;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appId' );
  has ServerGroupReplicationConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::SMS::ServerGroupReplicationConfiguration]', traits => ['NameInRequest'], request_name => 'serverGroupReplicationConfigurations' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAppReplicationConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SMS::PutAppReplicationConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::PutAppReplicationConfiguration - Arguments for method PutAppReplicationConfiguration on L<Paws::SMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAppReplicationConfiguration on the
L<AWS Server Migration Service|Paws::SMS> service. Use the attributes of this class
as arguments to method PutAppReplicationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAppReplicationConfiguration.

=head1 SYNOPSIS

    my $sms = Paws->service('SMS');
    my $PutAppReplicationConfigurationResponse =
      $sms->PutAppReplicationConfiguration(
      AppId                                => 'MyAppId',    # OPTIONAL
      ServerGroupReplicationConfigurations => [
        {
          ServerGroupId                   => 'MyServerGroupId',    # OPTIONAL
          ServerReplicationConfigurations => [
            {
              Server => {
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
              ServerReplicationParameters => {
                Encrypted   => 1,               # OPTIONAL
                Frequency   => 1,               # OPTIONAL
                KmsKeyId    => 'MyKmsKeyId',    # OPTIONAL
                LicenseType => 'AWS',           # values: AWS, BYOL; OPTIONAL
                NumberOfRecentAmisToKeep => 1,                        # OPTIONAL
                RunOnce                  => 1,                        # OPTIONAL
                SeedTime                 => '1970-01-01T01:00:00',    # OPTIONAL
              },    # OPTIONAL
            },
            ...
          ],        # OPTIONAL
        },
        ...
      ],            # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms/PutAppReplicationConfiguration>

=head1 ATTRIBUTES


=head2 AppId => Str

ID of the application tassociated with the replication configuration.



=head2 ServerGroupReplicationConfigurations => ArrayRef[L<Paws::SMS::ServerGroupReplicationConfiguration>]

Replication configurations for server groups in the application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAppReplicationConfiguration in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

