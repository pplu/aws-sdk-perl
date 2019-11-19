package Paws::MediaConvert::DashAdditionalManifest;
  use Moose;
  has ManifestNameModifier => (is => 'ro', isa => 'Str', request_name => 'manifestNameModifier', traits => ['NameInRequest']);
  has SelectedOutputs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'selectedOutputs', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::DashAdditionalManifest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::DashAdditionalManifest object:

  $service_obj->Method(Att1 => { ManifestNameModifier => $value, ..., SelectedOutputs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::DashAdditionalManifest object:

  $result = $service_obj->Method(...);
  $result->Att1->ManifestNameModifier

=head1 DESCRIPTION

Specify the details for each additional DASH manifest that you want the
service to generate for this output group. Each manifest can reference
a different subset of outputs in the group.

=head1 ATTRIBUTES


=head2 ManifestNameModifier => Str

  Specify a name modifier that the service adds to the name of this
manifest to make it different from the file names of the other main
manifests in the output group. For example, say that the default main
manifest for your DASH group is film-name.mpd. If you enter
"-no-premium" for this setting, then the file name the service
generates for this top-level manifest is film-name-no-premium.mpd.


=head2 SelectedOutputs => ArrayRef[Str|Undef]

  Specify the outputs that you want this additional top-level manifest to
reference.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

