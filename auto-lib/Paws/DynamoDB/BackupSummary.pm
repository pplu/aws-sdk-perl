package Paws::DynamoDB::BackupSummary;
  use Moose;
  has BackupArn => (is => 'ro', isa => 'Str');
  has BackupCreationDateTime => (is => 'ro', isa => 'Str');
  has BackupExpiryDateTime => (is => 'ro', isa => 'Str');
  has BackupName => (is => 'ro', isa => 'Str');
  has BackupSizeBytes => (is => 'ro', isa => 'Int');
  has BackupStatus => (is => 'ro', isa => 'Str');
  has BackupType => (is => 'ro', isa => 'Str');
  has TableArn => (is => 'ro', isa => 'Str');
  has TableId => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::BackupSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::BackupSummary object:

  $service_obj->Method(Att1 => { BackupArn => $value, ..., TableName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::BackupSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->BackupArn

=head1 DESCRIPTION

Contains details for the backup.

=head1 ATTRIBUTES


=head2 BackupArn => Str

  ARN associated with the backup.


=head2 BackupCreationDateTime => Str

  Time at which the backup was created.


=head2 BackupExpiryDateTime => Str

  Time at which the automatic on-demand backup created by DynamoDB will
expire. This C<SYSTEM> on-demand backup expires automatically 35 days
after its creation.


=head2 BackupName => Str

  Name of the specified backup.


=head2 BackupSizeBytes => Int

  Size of the backup in bytes.


=head2 BackupStatus => Str

  Backup can be in one of the following states: CREATING, ACTIVE,
DELETED.


=head2 BackupType => Str

  BackupType:

=over

=item *

C<USER> - You create and manage these using the on-demand backup
feature.

=item *

C<SYSTEM> - If you delete a table with point-in-time recovery enabled,
a C<SYSTEM> backup is automatically created and is retained for 35 days
(at no additional cost). System backups allow you to restore the
deleted table to the state it was in just before the point of deletion.

=item *

C<AWS_BACKUP> - On-demand backup created by you from AWS Backup
service.

=back



=head2 TableArn => Str

  ARN associated with the table.


=head2 TableId => Str

  Unique identifier for the table.


=head2 TableName => Str

  Name of the table.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

