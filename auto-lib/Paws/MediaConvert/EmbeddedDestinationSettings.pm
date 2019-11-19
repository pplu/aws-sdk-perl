# Generated from default/object.tt
package Paws::MediaConvert::EmbeddedDestinationSettings;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::MediaConvert::Types qw//;
  has Destination608ChannelNumber => (is => 'ro', isa => Int);
  has Destination708ServiceNumber => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Destination608ChannelNumber' => 'destination608ChannelNumber',
                       'Destination708ServiceNumber' => 'destination708ServiceNumber'
                     },
  'types' => {
               'Destination608ChannelNumber' => {
                                                  'type' => 'Int'
                                                },
               'Destination708ServiceNumber' => {
                                                  'type' => 'Int'
                                                }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::EmbeddedDestinationSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::EmbeddedDestinationSettings object:

  $service_obj->Method(Att1 => { Destination608ChannelNumber => $value, ..., Destination708ServiceNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::EmbeddedDestinationSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Destination608ChannelNumber

=head1 DESCRIPTION

Settings specific to embedded/ancillary caption outputs, including
608/708 Channel destination number.

=head1 ATTRIBUTES


=head2 Destination608ChannelNumber => Int

  Ignore this setting unless your input captions are SCC format and your
output captions are embedded in the video stream. Specify a CC number
for each captions channel in this output. If you have two channels,
choose CC numbers that aren't in the same field. For example, choose 1
and 3. For more information, see
https://docs.aws.amazon.com/console/mediaconvert/dual-scc-to-embedded.


=head2 Destination708ServiceNumber => Int

  Ignore this setting unless your input captions are SCC format and you
want both 608 and 708 captions embedded in your output stream.
Optionally, specify the 708 service number for each output captions
channel. Choose a different number for each channel. To use this
setting, also set Force 608 to 708 upconvert (Convert608To708) to
Upconvert (UPCONVERT) in your input captions selector settings. If you
choose to upconvert but don't specify a 708 service number,
MediaConvert uses the number that you specify for CC channel number
(destination608ChannelNumber) for the 708 service number. For more
information, see
https://docs.aws.amazon.com/console/mediaconvert/dual-scc-to-embedded.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

