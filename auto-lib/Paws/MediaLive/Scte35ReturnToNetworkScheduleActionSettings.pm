package Paws::MediaLive::Scte35ReturnToNetworkScheduleActionSettings;
  use Moose;
  has SpliceEventId => (is => 'ro', isa => 'Int', request_name => 'spliceEventId', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::Scte35ReturnToNetworkScheduleActionSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::Scte35ReturnToNetworkScheduleActionSettings object:

  $service_obj->Method(Att1 => { SpliceEventId => $value, ..., SpliceEventId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::Scte35ReturnToNetworkScheduleActionSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->SpliceEventId

=head1 DESCRIPTION

Settings for a SCTE-35 return_to_network message.

=head1 ATTRIBUTES


=head2 B<REQUIRED> SpliceEventId => Int

  The splice_event_id for the SCTE-35 splice_insert, as defined in
SCTE-35.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

