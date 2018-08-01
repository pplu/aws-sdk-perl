package Paws::SSM::InstancePatchState;
  use Moose;
  has BaselineId => (is => 'ro', isa => 'Str', required => 1);
  has FailedCount => (is => 'ro', isa => 'Int');
  has InstalledCount => (is => 'ro', isa => 'Int');
  has InstalledOtherCount => (is => 'ro', isa => 'Int');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has MissingCount => (is => 'ro', isa => 'Int');
  has NotApplicableCount => (is => 'ro', isa => 'Int');
  has Operation => (is => 'ro', isa => 'Str', required => 1);
  has OperationEndTime => (is => 'ro', isa => 'Str', required => 1);
  has OperationStartTime => (is => 'ro', isa => 'Str', required => 1);
  has OwnerInformation => (is => 'ro', isa => 'Str');
  has PatchGroup => (is => 'ro', isa => 'Str', required => 1);
  has SnapshotId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::InstancePatchState

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::InstancePatchState object:

  $service_obj->Method(Att1 => { BaselineId => $value, ..., SnapshotId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::InstancePatchState object:

  $result = $service_obj->Method(...);
  $result->Att1->BaselineId

=head1 DESCRIPTION

Defines the high-level patch compliance state for a managed instance,
providing information about the number of installed, missing, not
applicable, and failed patches along with metadata about the operation
when this information was gathered for the instance.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BaselineId => Str

  The ID of the patch baseline used to patch the instance.


=head2 FailedCount => Int

  The number of patches from the patch baseline that were attempted to be
installed during the last patching operation, but failed to install.


=head2 InstalledCount => Int

  The number of patches from the patch baseline that are installed on the
instance.


=head2 InstalledOtherCount => Int

  The number of patches not specified in the patch baseline that are
installed on the instance.


=head2 B<REQUIRED> InstanceId => Str

  The ID of the managed instance the high-level patch compliance
information was collected for.


=head2 MissingCount => Int

  The number of patches from the patch baseline that are applicable for
the instance but aren't currently installed.


=head2 NotApplicableCount => Int

  The number of patches from the patch baseline that aren't applicable
for the instance and hence aren't installed on the instance.


=head2 B<REQUIRED> Operation => Str

  The type of patching operation that was performed: SCAN (assess patch
compliance state) or INSTALL (install missing patches).


=head2 B<REQUIRED> OperationEndTime => Str

  The time the most recent patching operation completed on the instance.


=head2 B<REQUIRED> OperationStartTime => Str

  The time the most recent patching operation was started on the
instance.


=head2 OwnerInformation => Str

  Placeholder information. This field will always be empty in the current
release of the service.


=head2 B<REQUIRED> PatchGroup => Str

  The name of the patch group the managed instance belongs to.


=head2 SnapshotId => Str

  The ID of the patch baseline snapshot used during the patching
operation when this compliance data was collected.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

