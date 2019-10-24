# Generated from default/object.tt
package Paws::MediaLive::AudioCodecSettings;
  use Moo;
  use Types::Standard qw//;
  use Paws::MediaLive::Types qw/MediaLive_Ac3Settings MediaLive_PassThroughSettings MediaLive_Mp2Settings MediaLive_AacSettings MediaLive_Eac3Settings/;
  has AacSettings => (is => 'ro', isa => MediaLive_AacSettings);
  has Ac3Settings => (is => 'ro', isa => MediaLive_Ac3Settings);
  has Eac3Settings => (is => 'ro', isa => MediaLive_Eac3Settings);
  has Mp2Settings => (is => 'ro', isa => MediaLive_Mp2Settings);
  has PassThroughSettings => (is => 'ro', isa => MediaLive_PassThroughSettings);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Eac3Settings' => {
                                   'class' => 'Paws::MediaLive::Eac3Settings',
                                   'type' => 'MediaLive_Eac3Settings'
                                 },
               'Mp2Settings' => {
                                  'class' => 'Paws::MediaLive::Mp2Settings',
                                  'type' => 'MediaLive_Mp2Settings'
                                },
               'PassThroughSettings' => {
                                          'class' => 'Paws::MediaLive::PassThroughSettings',
                                          'type' => 'MediaLive_PassThroughSettings'
                                        },
               'Ac3Settings' => {
                                  'class' => 'Paws::MediaLive::Ac3Settings',
                                  'type' => 'MediaLive_Ac3Settings'
                                },
               'AacSettings' => {
                                  'class' => 'Paws::MediaLive::AacSettings',
                                  'type' => 'MediaLive_AacSettings'
                                }
             },
  'NameInRequest' => {
                       'Eac3Settings' => 'eac3Settings',
                       'Mp2Settings' => 'mp2Settings',
                       'PassThroughSettings' => 'passThroughSettings',
                       'Ac3Settings' => 'ac3Settings',
                       'AacSettings' => 'aacSettings'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::AudioCodecSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::AudioCodecSettings object:

  $service_obj->Method(Att1 => { AacSettings => $value, ..., PassThroughSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::AudioCodecSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AacSettings

=head1 DESCRIPTION

Audio Codec Settings

=head1 ATTRIBUTES


=head2 AacSettings => MediaLive_AacSettings

  


=head2 Ac3Settings => MediaLive_Ac3Settings

  


=head2 Eac3Settings => MediaLive_Eac3Settings

  


=head2 Mp2Settings => MediaLive_Mp2Settings

  


=head2 PassThroughSettings => MediaLive_PassThroughSettings

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

