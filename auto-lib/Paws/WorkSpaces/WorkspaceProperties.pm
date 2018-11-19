package Paws::WorkSpaces::WorkspaceProperties;
  use Moose;
  has ComputeTypeName => (is => 'ro', isa => 'Str');
  has RootVolumeSizeGib => (is => 'ro', isa => 'Int');
  has RunningMode => (is => 'ro', isa => 'Str');
  has RunningModeAutoStopTimeoutInMinutes => (is => 'ro', isa => 'Int');
  has UserVolumeSizeGib => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::WorkspaceProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkSpaces::WorkspaceProperties object:

  $service_obj->Method(Att1 => { ComputeTypeName => $value, ..., UserVolumeSizeGib => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkSpaces::WorkspaceProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->ComputeTypeName

=head1 DESCRIPTION

Describes a WorkSpace.

=head1 ATTRIBUTES


=head2 ComputeTypeName => Str

  The compute type. For more information, see Amazon WorkSpaces Bundles
(http://aws.amazon.com/workspaces/details/#Amazon_WorkSpaces_Bundles).


=head2 RootVolumeSizeGib => Int

  The size of the root volume.


=head2 RunningMode => Str

  The running mode. For more information, see Manage the WorkSpace
Running Mode
(http://docs.aws.amazon.com/workspaces/latest/adminguide/running-mode.html).


=head2 RunningModeAutoStopTimeoutInMinutes => Int

  The time after a user logs off when WorkSpaces are automatically
stopped. Configured in 60 minute intervals.


=head2 UserVolumeSizeGib => Int

  The size of the user storage.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

