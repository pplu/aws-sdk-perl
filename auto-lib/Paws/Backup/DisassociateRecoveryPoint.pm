
package Paws::Backup::DisassociateRecoveryPoint;
  use Moose;
  has BackupVaultName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'backupVaultName', required => 1);
  has RecoveryPointArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'recoveryPointArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateRecoveryPoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/backup-vaults/{backupVaultName}/recovery-points/{recoveryPointArn}/disassociate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::DisassociateRecoveryPoint - Arguments for method DisassociateRecoveryPoint on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateRecoveryPoint on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method DisassociateRecoveryPoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateRecoveryPoint.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    $backup->DisassociateRecoveryPoint(
      BackupVaultName  => 'MyBackupVaultName',
      RecoveryPointArn => 'MyARN',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/DisassociateRecoveryPoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupVaultName => Str

The unique name of an AWS Backup vault. Required.



=head2 B<REQUIRED> RecoveryPointArn => Str

An Amazon Resource Name (ARN) that uniquely identifies an AWS Backup
recovery point. Required.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateRecoveryPoint in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

