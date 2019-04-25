
package Paws::OpsWorksCM::DeleteBackup;
  use Moose;
  has BackupId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteBackup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorksCM::DeleteBackupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::DeleteBackup - Arguments for method DeleteBackup on L<Paws::OpsWorksCM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteBackup on the
L<AWS OpsWorks for Chef Automate|Paws::OpsWorksCM> service. Use the attributes of this class
as arguments to method DeleteBackup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteBackup.

=head1 SYNOPSIS

    my $opsworks-cm = Paws->service('OpsWorksCM');
    my $DeleteBackupResponse = $opsworks -cm->DeleteBackup(
      BackupId => 'MyBackupId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/opsworks-cm/latest/APIReference/API_DeleteBackup.html>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupId => Str

The ID of the backup to delete. Run the DescribeBackups command to get
a list of backup IDs. Backup IDs are in the format
C<ServerName-yyyyMMddHHmmssSSS>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteBackup in L<Paws::OpsWorksCM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

