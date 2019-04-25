package Paws::Backup::BackupSelection;
  use Moose;
  has IamRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has ListOfTags => (is => 'ro', isa => 'ArrayRef[Paws::Backup::Condition]');
  has Resources => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SelectionName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::BackupSelection

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Backup::BackupSelection object:

  $service_obj->Method(Att1 => { IamRoleArn => $value, ..., SelectionName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Backup::BackupSelection object:

  $result = $service_obj->Method(...);
  $result->Att1->IamRoleArn

=head1 DESCRIPTION

Used to specify a set of resources to a backup plan.

=head1 ATTRIBUTES


=head2 B<REQUIRED> IamRoleArn => Str

  The ARN of the IAM role that AWS Backup uses to authenticate when
restoring the target resource; for example,
C<arn:aws:iam::123456789012:role/S3Access>.


=head2 ListOfTags => ArrayRef[L<Paws::Backup::Condition>]

  An array of conditions used to specify a set of resources to assign to
a backup plan; for example, C<"StringEquals":
{"ec2:ResourceTag/Department": "accounting">.


=head2 Resources => ArrayRef[Str|Undef]

  An array of strings that either contain Amazon Resource Names (ARNs) or
match patterns such as "C<arn:aws:ec2:us-east-1:123456789012:volume/*>"
of resources to assign to a backup plan.


=head2 B<REQUIRED> SelectionName => Str

  The display name of a resource selection document.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

