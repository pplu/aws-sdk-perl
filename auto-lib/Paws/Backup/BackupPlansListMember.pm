package Paws::Backup::BackupPlansListMember;
  use Moose;
  has BackupPlanArn => (is => 'ro', isa => 'Str');
  has BackupPlanId => (is => 'ro', isa => 'Str');
  has BackupPlanName => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has CreatorRequestId => (is => 'ro', isa => 'Str');
  has DeletionDate => (is => 'ro', isa => 'Str');
  has LastExecutionDate => (is => 'ro', isa => 'Str');
  has VersionId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::BackupPlansListMember

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Backup::BackupPlansListMember object:

  $service_obj->Method(Att1 => { BackupPlanArn => $value, ..., VersionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Backup::BackupPlansListMember object:

  $result = $service_obj->Method(...);
  $result->Att1->BackupPlanArn

=head1 DESCRIPTION

Contains metadata about a backup plan.

=head1 ATTRIBUTES


=head2 BackupPlanArn => Str

  An Amazon Resource Name (ARN) that uniquely identifies a backup plan;
for example,
C<arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50>.


=head2 BackupPlanId => Str

  Uniquely identifies a backup plan.


=head2 BackupPlanName => Str

  The display name of a saved backup plan.


=head2 CreationDate => Str

  The date and time a resource backup plan is created, in Unix format and
Coordinated Universal Time (UTC). The value of C<CreationDate> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 CreatorRequestId => Str

  A unique string that identifies the request and allows failed requests
to be retried without the risk of executing the operation twice.


=head2 DeletionDate => Str

  The date and time a backup plan is deleted, in Unix format and
Coordinated Universal Time (UTC). The value of C<DeletionDate> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 LastExecutionDate => Str

  The last time a job to back up resources was executed with this rule. A
date and time, in Unix format and Coordinated Universal Time (UTC). The
value of C<LastExecutionDate> is accurate to milliseconds. For example,
the value 1516925490.087 represents Friday, January 26, 2018
12:11:30.087 AM.


=head2 VersionId => Str

  Unique, randomly generated, Unicode, UTF-8 encoded strings that are at
most 1,024 bytes long. Version IDs cannot be edited.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

