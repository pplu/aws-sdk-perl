package Paws::Backup::RecoveryPointCreator;
  use Moose;
  has BackupPlanArn => (is => 'ro', isa => 'Str');
  has BackupPlanId => (is => 'ro', isa => 'Str');
  has BackupPlanVersion => (is => 'ro', isa => 'Str');
  has BackupRuleId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::RecoveryPointCreator

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Backup::RecoveryPointCreator object:

  $service_obj->Method(Att1 => { BackupPlanArn => $value, ..., BackupRuleId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Backup::RecoveryPointCreator object:

  $result = $service_obj->Method(...);
  $result->Att1->BackupPlanArn

=head1 DESCRIPTION

Contains information about the backup plan and rule that AWS Backup
used to initiate the recovery point backup.

=head1 ATTRIBUTES


=head2 BackupPlanArn => Str

  An Amazon Resource Name (ARN) that uniquely identifies a backup plan;
for example,
C<arn:aws:backup:us-east-1:123456789012:plan:8F81F553-3A74-4A3F-B93D-B3360DC80C50>.


=head2 BackupPlanId => Str

  Uniquely identifies a backup plan.


=head2 BackupPlanVersion => Str

  Version IDs are unique, randomly generated, Unicode, UTF-8 encoded
strings that are at most 1,024 bytes long. They cannot be edited.


=head2 BackupRuleId => Str

  Uniquely identifies a rule used to schedule the backup of a selection
of resources.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

