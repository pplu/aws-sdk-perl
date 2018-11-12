package Paws::RedShift::MaintenanceTrack;
  use Moose;
  has DatabaseVersion => (is => 'ro', isa => 'Str');
  has MaintenanceTrackName => (is => 'ro', isa => 'Str');
  has UpdateTargets => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::UpdateTarget]', request_name => 'UpdateTarget', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::MaintenanceTrack

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::MaintenanceTrack object:

  $service_obj->Method(Att1 => { DatabaseVersion => $value, ..., UpdateTargets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::MaintenanceTrack object:

  $result = $service_obj->Method(...);
  $result->Att1->DatabaseVersion

=head1 DESCRIPTION

Defines a maintenance track that determines which Amazon Redshift
version to apply during a maintenance window. If the value for
C<MaintenanceTrack> is C<current>, the cluster is updated to the most
recently certified maintenance release. If the value is C<trailing>,
the cluster is updated to the previously certified maintenance release.

=head1 ATTRIBUTES


=head2 DatabaseVersion => Str

  The version number for the cluster release.


=head2 MaintenanceTrackName => Str

  The name of the maintenance track. Possible values are C<current> and
C<trailing>.


=head2 UpdateTargets => ArrayRef[L<Paws::RedShift::UpdateTarget>]

  An array of UpdateTarget objects to update with the maintenance track.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

