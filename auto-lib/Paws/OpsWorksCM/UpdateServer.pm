
package Paws::OpsWorksCM::UpdateServer;
  use Moose;
  has BackupRetentionCount => (is => 'ro', isa => 'Int');
  has DisableAutomatedBackup => (is => 'ro', isa => 'Bool');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has ServerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorksCM::UpdateServerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::UpdateServer - Arguments for method UpdateServer on L<Paws::OpsWorksCM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateServer on the
L<AWS OpsWorks for Chef Automate|Paws::OpsWorksCM> service. Use the attributes of this class
as arguments to method UpdateServer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateServer.

=head1 SYNOPSIS

    my $opsworks-cm = Paws->service('OpsWorksCM');
    my $UpdateServerResponse = $opsworks -cm->UpdateServer(
      ServerName                 => 'MyServerName',
      BackupRetentionCount       => 1,                           # OPTIONAL
      DisableAutomatedBackup     => 1,                           # OPTIONAL
      PreferredBackupWindow      => 'MyTimeWindowDefinition',    # OPTIONAL
      PreferredMaintenanceWindow => 'MyTimeWindowDefinition',    # OPTIONAL
    );

    # Results:
    my $Server = $UpdateServerResponse->Server;

    # Returns a L<Paws::OpsWorksCM::UpdateServerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/opsworks-cm/latest/APIReference/API_UpdateServer.html>

=head1 ATTRIBUTES


=head2 BackupRetentionCount => Int

Sets the number of automated backups that you want to keep.



=head2 DisableAutomatedBackup => Bool

Setting DisableAutomatedBackup to C<true> disables automated or
scheduled backups. Automated backups are enabled by default.



=head2 PreferredBackupWindow => Str





=head2 PreferredMaintenanceWindow => Str





=head2 B<REQUIRED> ServerName => Str

The name of the server to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateServer in L<Paws::OpsWorksCM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

