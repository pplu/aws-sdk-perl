package Paws::MediaLive::Scte35TimeSignalApos;
  use Moose;
  has AdAvailOffset => (is => 'ro', isa => 'Int', request_name => 'adAvailOffset', traits => ['NameInRequest']);
  has NoRegionalBlackoutFlag => (is => 'ro', isa => 'Str', request_name => 'noRegionalBlackoutFlag', traits => ['NameInRequest']);
  has WebDeliveryAllowedFlag => (is => 'ro', isa => 'Str', request_name => 'webDeliveryAllowedFlag', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::Scte35TimeSignalApos

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::Scte35TimeSignalApos object:

  $service_obj->Method(Att1 => { AdAvailOffset => $value, ..., WebDeliveryAllowedFlag => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::Scte35TimeSignalApos object:

  $result = $service_obj->Method(...);
  $result->Att1->AdAvailOffset

=head1 DESCRIPTION

Placeholder documentation for Scte35TimeSignalApos

=head1 ATTRIBUTES


=head2 AdAvailOffset => Int

  When specified, this offset (in milliseconds) is added to the input Ad
Avail PTS time. This only applies to embedded SCTE 104/35 messages and
does not apply to OOB messages.


=head2 NoRegionalBlackoutFlag => Str

  When set to ignore, Segment Descriptors with noRegionalBlackoutFlag set
to 0 will no longer trigger blackouts or Ad Avail slates


=head2 WebDeliveryAllowedFlag => Str

  When set to ignore, Segment Descriptors with webDeliveryAllowedFlag set
to 0 will no longer trigger blackouts or Ad Avail slates



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

