package Paws::CloudHSMv2::Backup;
  use Moose;
  has BackupId => (is => 'ro', isa => 'Str', required => 1);
  has BackupState => (is => 'ro', isa => 'Str');
  has ClusterId => (is => 'ro', isa => 'Str');
  has CopyTimestamp => (is => 'ro', isa => 'Str');
  has CreateTimestamp => (is => 'ro', isa => 'Str');
  has DeleteTimestamp => (is => 'ro', isa => 'Str');
  has SourceBackup => (is => 'ro', isa => 'Str');
  has SourceCluster => (is => 'ro', isa => 'Str');
  has SourceRegion => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::Backup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudHSMv2::Backup object:

  $service_obj->Method(Att1 => { BackupId => $value, ..., SourceRegion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudHSMv2::Backup object:

  $result = $service_obj->Method(...);
  $result->Att1->BackupId

=head1 DESCRIPTION

Contains information about a backup of an AWS CloudHSM cluster.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupId => Str

  The identifier (ID) of the backup.


=head2 BackupState => Str

  The state of the backup.


=head2 ClusterId => Str

  The identifier (ID) of the cluster that was backed up.


=head2 CopyTimestamp => Str

  


=head2 CreateTimestamp => Str

  The date and time when the backup was created.


=head2 DeleteTimestamp => Str

  The date and time when the backup will be permanently deleted.


=head2 SourceBackup => Str

  


=head2 SourceCluster => Str

  


=head2 SourceRegion => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudHSMv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

