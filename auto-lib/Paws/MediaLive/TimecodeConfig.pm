package Paws::MediaLive::TimecodeConfig;
  use Moose;
  has Source => (is => 'ro', isa => 'Str', request_name => 'source', traits => ['NameInRequest'], required => 1);
  has SyncThreshold => (is => 'ro', isa => 'Int', request_name => 'syncThreshold', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::TimecodeConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::TimecodeConfig object:

  $service_obj->Method(Att1 => { Source => $value, ..., SyncThreshold => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::TimecodeConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Source

=head1 DESCRIPTION

Placeholder documentation for TimecodeConfig

=head1 ATTRIBUTES


=head2 B<REQUIRED> Source => Str

  Identifies the source for the timecode that will be associated with the
events outputs. -Embedded (embedded): Initialize the output timecode
with timecode from the the source. If no embedded timecode is detected
in the source, the system falls back to using "Start at 0" (zerobased).
-System Clock (systemclock): Use the UTC time. -Start at 0 (zerobased):
The time of the first frame of the event will be 00:00:00:00.


=head2 SyncThreshold => Int

  Threshold in frames beyond which output timecode is resynchronized to
the input timecode. Discrepancies below this threshold are permitted to
avoid unnecessary discontinuities in the output timecode. No timecode
sync when this is not specified.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

