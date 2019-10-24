# Generated from default/object.tt
package Paws::SSM::MaintenanceWindowTarget;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_Target/;
  has Description => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has OwnerInformation => (is => 'ro', isa => Str);
  has ResourceType => (is => 'ro', isa => Str);
  has Targets => (is => 'ro', isa => ArrayRef[SSM_Target]);
  has WindowId => (is => 'ro', isa => Str);
  has WindowTargetId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Targets' => {
                              'class' => 'Paws::SSM::Target',
                              'type' => 'ArrayRef[SSM_Target]'
                            },
               'ResourceType' => {
                                   'type' => 'Str'
                                 },
               'WindowTargetId' => {
                                     'type' => 'Str'
                                   },
               'WindowId' => {
                               'type' => 'Str'
                             },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'OwnerInformation' => {
                                       'type' => 'Str'
                                     }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::MaintenanceWindowTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::MaintenanceWindowTarget object:

  $service_obj->Method(Att1 => { Description => $value, ..., WindowTargetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::MaintenanceWindowTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

The target registered with the maintenance window.

=head1 ATTRIBUTES


=head2 Description => Str

  A description for the target.


=head2 Name => Str

  The name for the maintenance window target.


=head2 OwnerInformation => Str

  A user-provided value that will be included in any CloudWatch events
that are raised while running tasks for these targets in this
maintenance window.


=head2 ResourceType => Str

  The type of target that is being registered with the maintenance
window.


=head2 Targets => ArrayRef[SSM_Target]

  The targets, either instances or tags.

Specify instances using the following format:

C<Key=instanceids,Values=E<lt>instanceid1E<gt>,E<lt>instanceid2E<gt>>

Tags are specified using the following format:

C<Key=E<lt>tag nameE<gt>,Values=E<lt>tag valueE<gt>>.


=head2 WindowId => Str

  The ID of the maintenance window to register the target with.


=head2 WindowTargetId => Str

  The ID of the target.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

