package Paws::Lightsail::AutoSnapshotAddOnRequest;
  use Moose;
  has SnapshotTimeOfDay => (is => 'ro', isa => 'Str', request_name => 'snapshotTimeOfDay', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::AutoSnapshotAddOnRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::AutoSnapshotAddOnRequest object:

  $service_obj->Method(Att1 => { SnapshotTimeOfDay => $value, ..., SnapshotTimeOfDay => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::AutoSnapshotAddOnRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->SnapshotTimeOfDay

=head1 DESCRIPTION

Describes a request to enable or modify the automatic snapshot add-on
for an Amazon Lightsail instance or disk.

When you modify the automatic snapshot time for a resource, it is
typically effective immediately except under the following conditions:

=over

=item *

If an automatic snapshot has been created for the current day, and you
change the snapshot time to a later time of day, then the new snapshot
time will be effective the following day. This ensures that two
snapshots are not created for the current day.

=item *

If an automatic snapshot has not yet been created for the current day,
and you change the snapshot time to an earlier time of day, then the
new snapshot time will be effective the following day and a snapshot is
automatically created at the previously set time for the current day.
This ensures that a snapshot is created for the current day.

=item *

If an automatic snapshot has not yet been created for the current day,
and you change the snapshot time to a time that is within 30 minutes
from your current time, then the new snapshot time will be effective
the following day and a snapshot is automatically created at the
previously set time for the current day. This ensures that a snapshot
is created for the current day, because 30 minutes is required between
your current time and the new snapshot time that you specify.

=item *

If an automatic snapshot is scheduled to be created within 30 minutes
from your current time and you change the snapshot time, then the new
snapshot time will be effective the following day and a snapshot is
automatically created at the previously set time for the current day.
This ensures that a snapshot is created for the current day, because 30
minutes is required between your current time and the new snapshot time
that you specify.

=back


=head1 ATTRIBUTES


=head2 SnapshotTimeOfDay => Str

  The daily time when an automatic snapshot will be created.

Constraints:

=over

=item *

Must be in C<HH:00> format, and in an hourly increment.

=item *

Specified in Coordinated Universal Time (UTC).

=item *

The snapshot will be automatically created between the time specified
and up to 45 minutes after.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

