package Paws::MediaLive::FixedModeScheduleActionStartSettings;
  use Moose;
  has Time => (is => 'ro', isa => 'Str', request_name => 'time', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::FixedModeScheduleActionStartSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::FixedModeScheduleActionStartSettings object:

  $service_obj->Method(Att1 => { Time => $value, ..., Time => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::FixedModeScheduleActionStartSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Time

=head1 DESCRIPTION

Start time for the action.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Time => Str

  Start time for the action to start in the channel. (Not the time for
the action to be added to the schedule: actions are always added to the
schedule immediately.) UTC format: yyyy-mm-ddThh:mm:ss.nnnZ. All the
letters are digits (for example, mm might be 01) except for the two
constants "T" for time and "Z" for "UTC format".



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

