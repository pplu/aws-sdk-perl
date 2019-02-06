package Paws::Backup::BackupSelectionsListMember;
  use Moose;
  has BackupPlanId => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has CreatorRequestId => (is => 'ro', isa => 'Str');
  has IamRoleArn => (is => 'ro', isa => 'Str');
  has SelectionId => (is => 'ro', isa => 'Str');
  has SelectionName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::BackupSelectionsListMember

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Backup::BackupSelectionsListMember object:

  $service_obj->Method(Att1 => { BackupPlanId => $value, ..., SelectionName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Backup::BackupSelectionsListMember object:

  $result = $service_obj->Method(...);
  $result->Att1->BackupPlanId

=head1 DESCRIPTION

Contains metadata about a C<BackupSelection> object.

=head1 ATTRIBUTES


=head2 BackupPlanId => Str

  Uniquely identifies a backup plan.


=head2 CreationDate => Str

  The date and time a backup plan is created, in Unix format and
Coordinated Universal Time (UTC). The value of C<CreationDate> is
accurate to milliseconds. For example, the value 1516925490.087
represents Friday, January 26, 2018 12:11:30.087 AM.


=head2 CreatorRequestId => Str

  A unique string that identifies the request and allows failed requests
to be retried without the risk of executing the operation twice.


=head2 IamRoleArn => Str

  Specifies the IAM role Amazon Resource Name (ARN) to create the target
recovery point; for example,
C<arn:aws:iam::123456789012:role/S3Access>.


=head2 SelectionId => Str

  Uniquely identifies a request to assign a set of resources to a backup
plan.


=head2 SelectionName => Str

  The display name of a resource selection document.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

