package Paws::Backup::RecoveryPointByResource;
  use Moose;
  has BackupSizeBytes => (is => 'ro', isa => 'Int');
  has BackupVaultName => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has EncryptionKeyArn => (is => 'ro', isa => 'Str');
  has RecoveryPointArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::RecoveryPointByResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Backup::RecoveryPointByResource object:

  $service_obj->Method(Att1 => { BackupSizeBytes => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Backup::RecoveryPointByResource object:

  $result = $service_obj->Method(...);
  $result->Att1->BackupSizeBytes

=head1 DESCRIPTION

Contains detailed information about a saved recovery point.

=head1 ATTRIBUTES


=head2 BackupSizeBytes => Int

  The size, in bytes, of a backup.


=head2 BackupVaultName => Str

  The name of a logical container where backups are stored. Backup vaults
are identified by names that are unique to the account used to create
them and the AWS Region where they are created. They consist of
lowercase letters, numbers, and hyphens.


=head2 CreationDate => Str

  The date and time a recovery point is created, in Unix format and
Coordinated Universal Time (UTC). The value of C<CreationDate> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 EncryptionKeyArn => Str

  The server-side encryption key that is used to protect your backups;
for example,
C<arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>.


=head2 RecoveryPointArn => Str

  An Amazon Resource Name (ARN) that uniquely identifies a recovery
point; for example,
C<arn:aws:backup:us-east-1:123456789012:recovery-point:1EB3B5E7-9EB0-435A-A80B-108B488B0D45>.


=head2 Status => Str

  A status code specifying the state of the recovery point.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

