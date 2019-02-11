package Paws::Backup::CalculatedLifecycle;
  use Moose;
  has DeleteAt => (is => 'ro', isa => 'Str');
  has MoveToColdStorageAt => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::CalculatedLifecycle

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Backup::CalculatedLifecycle object:

  $service_obj->Method(Att1 => { DeleteAt => $value, ..., MoveToColdStorageAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Backup::CalculatedLifecycle object:

  $result = $service_obj->Method(...);
  $result->Att1->DeleteAt

=head1 DESCRIPTION

Contains C<DeleteAt> and C<MoveToColdStorageAt> timestamps, which are
used to specify a lifecycle for a recovery point.

The lifecycle defines when a protected resource is transitioned to cold
storage and when it expires. AWS Backup transitions and expires backups
automatically according to the lifecycle that you define.

Backups transitioned to cold storage must be stored in cold storage for
a minimum of 90 days. Therefore, the E<ldquo>expire after daysE<rdquo>
setting must be 90 days greater than the E<ldquo>transition to cold
after daysE<rdquo> setting. The E<ldquo>transition to cold after
daysE<rdquo> setting cannot be changed after a backup has been
transitioned to cold.

=head1 ATTRIBUTES


=head2 DeleteAt => Str

  A timestamp that specifies when to delete a recovery point.


=head2 MoveToColdStorageAt => Str

  A timestamp that specifies when to transition a recovery point to cold
storage.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

