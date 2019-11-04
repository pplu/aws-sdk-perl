package Paws::MediaConvert::EmbeddedDestinationSettings;
  use Moose;
  has Destination608ChannelNumber => (is => 'ro', isa => 'Int', request_name => 'destination608ChannelNumber', traits => ['NameInRequest']);
  has Destination708ServiceNumber => (is => 'ro', isa => 'Int', request_name => 'destination708ServiceNumber', traits => ['NameInRequest']);
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

  Ignore this setting unless your input captions are SCC format. With SCC
inputs, you can optionally use this setting to replace the input
channel number with the channel number that you specify. Specify a
different number for each output captions track for a particular
output. If you don't specify an output channel number, the system uses
the input channel number for the output channel number. You can
optionally combine two captions channels in your output. The two output
channel numbers can be one of the following pairs: 1,3; 2,4; 1,4; or
2,3.


=head2 Destination708ServiceNumber => Int

  Ignore this setting unless your input captions are SCC format and you
are performing SCC upconvert. With SCC inputs, you can optionally use
this setting to specify the 708 service number that is in the output.
Specify a different service number for each output captions track for a
particular output. If you don't specify an output track number, the
system uses the 608 channel number for the output 708 service number.
You can combine two captions channels in your output. Service numbers
must be distinct.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

