# Generated from default/object.tt
package Paws::Backup::BackupPlan;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Backup::Types qw/Backup_BackupRule/;
  has BackupPlanName => (is => 'ro', isa => Str, required => 1);
  has Rules => (is => 'ro', isa => ArrayRef[Backup_BackupRule], required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Rules' => {
                            'class' => 'Paws::Backup::BackupRule',
                            'type' => 'ArrayRef[Backup_BackupRule]'
                          },
               'BackupPlanName' => {
                                     'type' => 'Str'
                                   }
             },
  'IsRequired' => {
                    'Rules' => 1,
                    'BackupPlanName' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::BackupPlan

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Backup::BackupPlan object:

  $service_obj->Method(Att1 => { BackupPlanName => $value, ..., Rules => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Backup::BackupPlan object:

  $result = $service_obj->Method(...);
  $result->Att1->BackupPlanName

=head1 DESCRIPTION

Contains an optional backup plan display name and an array of
C<BackupRule> objects, each of which specifies a backup rule. Each rule
in a backup plan is a separate scheduled task and can back up a
different selection of AWS resources.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BackupPlanName => Str

  The display name of a backup plan.


=head2 B<REQUIRED> Rules => ArrayRef[Backup_BackupRule]

  An array of C<BackupRule> objects, each of which specifies a scheduled
task that is used to back up a selection of resources.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

