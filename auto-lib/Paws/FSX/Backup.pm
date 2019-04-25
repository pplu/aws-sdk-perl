package Paws::FSX::Backup;
  use Moose;
  has BackupId => (is => 'ro', isa => 'Str', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has FailureDetails => (is => 'ro', isa => 'Paws::FSX::BackupFailureDetails');
  has FileSystem => (is => 'ro', isa => 'Paws::FSX::FileSystem', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has Lifecycle => (is => 'ro', isa => 'Str', required => 1);
  has ProgressPercent => (is => 'ro', isa => 'Int');
  has ResourceARN => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::FSX::Tag]');
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::Backup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FSX::Backup object:

  $service_obj->Method(Att1 => { BackupId => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FSX::Backup object:

  $result = $service_obj->Method(...);
  $result->Att1->BackupId

=head1 DESCRIPTION

A backup of an Amazon FSx for Windows File Server file system. You can
create a new file system from a backup to protect against data loss.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupId => Str

  The ID of the backup.


=head2 B<REQUIRED> CreationTime => Str

  The time when a particular backup was created.


=head2 FailureDetails => L<Paws::FSX::BackupFailureDetails>

  Details explaining any failures that occur when creating a backup.


=head2 B<REQUIRED> FileSystem => L<Paws::FSX::FileSystem>

  Metadata of the file system associated with the backup. This metadata
is persisted even if the file system is deleted.


=head2 KmsKeyId => Str

  The ID of the AWS Key Management Service (AWS KMS) key used to encrypt
this backup's data.


=head2 B<REQUIRED> Lifecycle => Str

  The lifecycle status of the backup.


=head2 ProgressPercent => Int

  


=head2 ResourceARN => Str

  The Amazon Resource Name (ARN) for the backup resource.


=head2 Tags => ArrayRef[L<Paws::FSX::Tag>]

  Tags associated with a particular file system.


=head2 B<REQUIRED> Type => Str

  The type of the backup.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

