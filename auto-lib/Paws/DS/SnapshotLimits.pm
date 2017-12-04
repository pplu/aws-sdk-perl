package Paws::DS::SnapshotLimits;
  use Moose;
  has ManualSnapshotsCurrentCount => (is => 'ro', isa => 'Int');
  has ManualSnapshotsLimit => (is => 'ro', isa => 'Int');
  has ManualSnapshotsLimitReached => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::SnapshotLimits

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DS::SnapshotLimits object:

  $service_obj->Method(Att1 => { ManualSnapshotsCurrentCount => $value, ..., ManualSnapshotsLimitReached => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DS::SnapshotLimits object:

  $result = $service_obj->Method(...);
  $result->Att1->ManualSnapshotsCurrentCount

=head1 DESCRIPTION

Contains manual snapshot limit information for a directory.

=head1 ATTRIBUTES


=head2 ManualSnapshotsCurrentCount => Int

  The current number of manual snapshots of the directory.


=head2 ManualSnapshotsLimit => Int

  The maximum number of manual snapshots allowed.


=head2 ManualSnapshotsLimitReached => Bool

  Indicates if the manual snapshot limit has been reached.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

