# Generated from default/object.tt
package Paws::MediaConvert::HlsAdditionalManifest;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::MediaConvert::Types qw//;
  has ManifestNameModifier => (is => 'ro', isa => Str);
  has SelectedOutputs => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ManifestNameModifier' => {
                                           'type' => 'Str'
                                         },
               'SelectedOutputs' => {
                                      'type' => 'ArrayRef[Str|Undef]'
                                    }
             },
  'NameInRequest' => {
                       'SelectedOutputs' => 'selectedOutputs',
                       'ManifestNameModifier' => 'manifestNameModifier'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::HlsAdditionalManifest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::HlsAdditionalManifest object:

  $service_obj->Method(Att1 => { ManifestNameModifier => $value, ..., SelectedOutputs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::HlsAdditionalManifest object:

  $result = $service_obj->Method(...);
  $result->Att1->ManifestNameModifier

=head1 DESCRIPTION

Specify the details for each additional HLS manifest that you want the
service to generate for this output group. Each manifest can reference
a different subset of outputs in the group.

=head1 ATTRIBUTES


=head2 ManifestNameModifier => Str

  Specify a name modifier that the service adds to the name of this
manifest to make it different from the file names of the other main
manifests in the output group. For example, say that the default main
manifest for your HLS group is film-name.m3u8. If you enter
"-no-premium" for this setting, then the file name the service
generates for this top-level manifest is film-name-no-premium.m3u8. For
HLS output groups, specify a manifestNameModifier that is different
from the nameModifier of the output. The service uses the output name
modifier to create unique names for the individual variant manifests.


=head2 SelectedOutputs => ArrayRef[Str|Undef]

  Specify the outputs that you want this additional top-level manifest to
reference.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

