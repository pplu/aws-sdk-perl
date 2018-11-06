package Paws::MediaLive::Scte35TimeSignalScheduleActionSettings;
  use Moose;
  has Scte35Descriptors => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::Scte35Descriptor]', request_name => 'scte35Descriptors', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::Scte35TimeSignalScheduleActionSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::Scte35TimeSignalScheduleActionSettings object:

  $service_obj->Method(Att1 => { Scte35Descriptors => $value, ..., Scte35Descriptors => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::Scte35TimeSignalScheduleActionSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Scte35Descriptors

=head1 DESCRIPTION

Settings for a SCTE-35 time_signal.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Scte35Descriptors => ArrayRef[L<Paws::MediaLive::Scte35Descriptor>]

  The list of SCTE-35 descriptors accompanying the SCTE-35 time_signal.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

