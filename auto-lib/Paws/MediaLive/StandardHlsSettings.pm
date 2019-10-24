# Generated from default/object.tt
package Paws::MediaLive::StandardHlsSettings;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaLive::Types qw/MediaLive_M3u8Settings/;
  has AudioRenditionSets => (is => 'ro', isa => Str);
  has M3u8Settings => (is => 'ro', isa => MediaLive_M3u8Settings, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'M3u8Settings' => {
                                   'class' => 'Paws::MediaLive::M3u8Settings',
                                   'type' => 'MediaLive_M3u8Settings'
                                 },
               'AudioRenditionSets' => {
                                         'type' => 'Str'
                                       }
             },
  'NameInRequest' => {
                       'M3u8Settings' => 'm3u8Settings',
                       'AudioRenditionSets' => 'audioRenditionSets'
                     },
  'IsRequired' => {
                    'M3u8Settings' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::StandardHlsSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::StandardHlsSettings object:

  $service_obj->Method(Att1 => { AudioRenditionSets => $value, ..., M3u8Settings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::StandardHlsSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AudioRenditionSets

=head1 DESCRIPTION

Standard Hls Settings

=head1 ATTRIBUTES


=head2 AudioRenditionSets => Str

  List all the audio groups that are used with the video output stream.
Input all the audio GROUP-IDs that are associated to the video,
separate by ','.


=head2 B<REQUIRED> M3u8Settings => MediaLive_M3u8Settings

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

