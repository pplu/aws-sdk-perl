# Generated from default/object.tt
package Paws::MediaLive::H265ColorSpaceSettings;
  use Moo;
  use Types::Standard qw//;
  use Paws::MediaLive::Types qw/MediaLive_Hdr10Settings MediaLive_Rec709Settings MediaLive_Rec601Settings MediaLive_ColorSpacePassthroughSettings/;
  has ColorSpacePassthroughSettings => (is => 'ro', isa => MediaLive_ColorSpacePassthroughSettings);
  has Hdr10Settings => (is => 'ro', isa => MediaLive_Hdr10Settings);
  has Rec601Settings => (is => 'ro', isa => MediaLive_Rec601Settings);
  has Rec709Settings => (is => 'ro', isa => MediaLive_Rec709Settings);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Rec601Settings' => {
                                     'type' => 'MediaLive_Rec601Settings',
                                     'class' => 'Paws::MediaLive::Rec601Settings'
                                   },
               'Rec709Settings' => {
                                     'class' => 'Paws::MediaLive::Rec709Settings',
                                     'type' => 'MediaLive_Rec709Settings'
                                   },
               'Hdr10Settings' => {
                                    'class' => 'Paws::MediaLive::Hdr10Settings',
                                    'type' => 'MediaLive_Hdr10Settings'
                                  },
               'ColorSpacePassthroughSettings' => {
                                                    'type' => 'MediaLive_ColorSpacePassthroughSettings',
                                                    'class' => 'Paws::MediaLive::ColorSpacePassthroughSettings'
                                                  }
             },
  'NameInRequest' => {
                       'Rec709Settings' => 'rec709Settings',
                       'Rec601Settings' => 'rec601Settings',
                       'ColorSpacePassthroughSettings' => 'colorSpacePassthroughSettings',
                       'Hdr10Settings' => 'hdr10Settings'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::H265ColorSpaceSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::H265ColorSpaceSettings object:

  $service_obj->Method(Att1 => { ColorSpacePassthroughSettings => $value, ..., Rec709Settings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::H265ColorSpaceSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->ColorSpacePassthroughSettings

=head1 DESCRIPTION

H265 Color Space Settings

=head1 ATTRIBUTES


=head2 ColorSpacePassthroughSettings => MediaLive_ColorSpacePassthroughSettings

  


=head2 Hdr10Settings => MediaLive_Hdr10Settings

  


=head2 Rec601Settings => MediaLive_Rec601Settings

  


=head2 Rec709Settings => MediaLive_Rec709Settings

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

