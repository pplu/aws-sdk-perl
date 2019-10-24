# Generated from default/object.tt
package Paws::MediaLive::RemixSettings;
  use Moo;
  use Types::Standard qw/ArrayRef Int/;
  use Paws::MediaLive::Types qw/MediaLive_AudioChannelMapping/;
  has ChannelMappings => (is => 'ro', isa => ArrayRef[MediaLive_AudioChannelMapping], required => 1);
  has ChannelsIn => (is => 'ro', isa => Int);
  has ChannelsOut => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ChannelMappings' => {
                                      'class' => 'Paws::MediaLive::AudioChannelMapping',
                                      'type' => 'ArrayRef[MediaLive_AudioChannelMapping]'
                                    },
               'ChannelsIn' => {
                                 'type' => 'Int'
                               },
               'ChannelsOut' => {
                                  'type' => 'Int'
                                }
             },
  'NameInRequest' => {
                       'ChannelMappings' => 'channelMappings',
                       'ChannelsIn' => 'channelsIn',
                       'ChannelsOut' => 'channelsOut'
                     },
  'IsRequired' => {
                    'ChannelMappings' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::RemixSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::RemixSettings object:

  $service_obj->Method(Att1 => { ChannelMappings => $value, ..., ChannelsOut => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::RemixSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->ChannelMappings

=head1 DESCRIPTION

Remix Settings

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelMappings => ArrayRef[MediaLive_AudioChannelMapping]

  Mapping of input channels to output channels, with appropriate gain
adjustments.


=head2 ChannelsIn => Int

  Number of input channels to be used.


=head2 ChannelsOut => Int

  Number of output channels to be produced. Valid values: 1, 2, 4, 6, 8



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

