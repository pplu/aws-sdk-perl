package Paws::MediaConvert::RemixSettings;
  use Moose;
  has ChannelMapping => (is => 'ro', isa => 'Paws::MediaConvert::ChannelMapping', request_name => 'channelMapping', traits => ['NameInRequest']);
  has ChannelsIn => (is => 'ro', isa => 'Int', request_name => 'channelsIn', traits => ['NameInRequest']);
  has ChannelsOut => (is => 'ro', isa => 'Int', request_name => 'channelsOut', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::RemixSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::RemixSettings object:

  $service_obj->Method(Att1 => { ChannelMapping => $value, ..., ChannelsOut => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::RemixSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->ChannelMapping

=head1 DESCRIPTION

Use Manual audio remixing (RemixSettings) to adjust audio levels for
each audio channel in each output of your job. With audio remixing, you
can output more or fewer audio channels than your input audio source
provides.

=head1 ATTRIBUTES


=head2 ChannelMapping => L<Paws::MediaConvert::ChannelMapping>

  


=head2 ChannelsIn => Int

  Specify the number of audio channels from your input that you want to
use in your output. With remixing, you might combine or split the data
in these channels, so the number of channels in your final output might
be different.


=head2 ChannelsOut => Int

  Specify the number of channels in this output after remixing. Valid
values: 1, 2, 4, 6, 8



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

