package Paws::Backup::BackupPlanTemplatesListMember;
  use Moose;
  has BackupPlanTemplateId => (is => 'ro', isa => 'Str');
  has BackupPlanTemplateName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::BackupPlanTemplatesListMember

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Backup::BackupPlanTemplatesListMember object:

  $service_obj->Method(Att1 => { BackupPlanTemplateId => $value, ..., BackupPlanTemplateName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Backup::BackupPlanTemplatesListMember object:

  $result = $service_obj->Method(...);
  $result->Att1->BackupPlanTemplateId

=head1 DESCRIPTION

An object specifying metadata associated with a backup plan template.

=head1 ATTRIBUTES


=head2 BackupPlanTemplateId => Str

  Uniquely identifies a stored backup plan template.


=head2 BackupPlanTemplateName => Str

  The optional display name of a backup plan template.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

