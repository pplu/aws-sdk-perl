package Paws::EC2::DisableFastSnapshotRestoreSuccessItem;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has DisabledTime => (is => 'ro', isa => 'Str', request_name => 'disabledTime', traits => ['NameInRequest']);
  has DisablingTime => (is => 'ro', isa => 'Str', request_name => 'disablingTime', traits => ['NameInRequest']);
  has EnabledTime => (is => 'ro', isa => 'Str', request_name => 'enabledTime', traits => ['NameInRequest']);
  has EnablingTime => (is => 'ro', isa => 'Str', request_name => 'enablingTime', traits => ['NameInRequest']);
  has OptimizingTime => (is => 'ro', isa => 'Str', request_name => 'optimizingTime', traits => ['NameInRequest']);
  has OwnerAlias => (is => 'ro', isa => 'Str', request_name => 'ownerAlias', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has SnapshotId => (is => 'ro', isa => 'Str', request_name => 'snapshotId', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has StateTransitionReason => (is => 'ro', isa => 'Str', request_name => 'stateTransitionReason', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DisableFastSnapshotRestoreSuccessItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::DisableFastSnapshotRestoreSuccessItem object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., StateTransitionReason => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::DisableFastSnapshotRestoreSuccessItem object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The Availability Zone.


=head2 DisabledTime => Str

The time at which fast snapshot restores entered the C<disabled> state.


=head2 DisablingTime => Str

The time at which fast snapshot restores entered the C<disabling>
state.


=head2 EnabledTime => Str

The time at which fast snapshot restores entered the C<enabled> state.


=head2 EnablingTime => Str

The time at which fast snapshot restores entered the C<enabling> state.


=head2 OptimizingTime => Str

The time at which fast snapshot restores entered the C<optimizing>
state.


=head2 OwnerAlias => Str

The AWS owner alias that enabled fast snapshot restores on the
snapshot. This is intended for future use.


=head2 OwnerId => Str

The ID of the AWS account that enabled fast snapshot restores on the
snapshot.


=head2 SnapshotId => Str

The ID of the snapshot.


=head2 State => Str

The state of fast snapshot restores for the snapshot.


=head2 StateTransitionReason => Str

The reason for the state transition. The possible values are as
follows:

=over

=item *

C<Client.UserInitiated> - The state successfully transitioned to
C<enabling> or C<disabling>.

=item *

C<Client.UserInitiated - Lifecycle state transition> - The state
successfully transitioned to C<optimizing>, C<enabled>, or C<disabled>.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
