
package Paws::OpsWorksCM::RestoreServer;
  use Moose;
  has BackupId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceType => (is => 'ro', isa => 'Str');
  has KeyPair => (is => 'ro', isa => 'Str');
  has ServerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreServer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorksCM::RestoreServerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::RestoreServer - Arguments for method RestoreServer on L<Paws::OpsWorksCM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreServer on the
L<AWS OpsWorks for Chef Automate|Paws::OpsWorksCM> service. Use the attributes of this class
as arguments to method RestoreServer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreServer.

=head1 SYNOPSIS

    my $opsworks-cm = Paws->service('OpsWorksCM');
    my $RestoreServerResponse = $opsworks -cm->RestoreServer(
      BackupId     => 'MyBackupId',
      ServerName   => 'MyServerName',
      InstanceType => 'MyString',       # OPTIONAL
      KeyPair      => 'MyKeyPair',      # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/opsworks-cm/latest/APIReference/API_RestoreServer.html>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupId => Str

The ID of the backup that you want to use to restore a server.



=head2 InstanceType => Str

The type of the instance to create. Valid values must be specified in
the following format: C<^([cm][34]|t2).*> For example, C<m4.large>.
Valid values are C<t2.medium>, C<m4.large>, and C<m4.2xlarge>. If you
do not specify this parameter, RestoreServer uses the instance type
from the specified backup.



=head2 KeyPair => Str

The name of the key pair to set on the new EC2 instance. This can be
helpful if the administrator no longer has the SSH key.



=head2 B<REQUIRED> ServerName => Str

The name of the server that you want to restore.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreServer in L<Paws::OpsWorksCM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

