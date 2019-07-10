package Paws::MediaConvert::NoiseReducer;
  use Moose;
  has Filter => (is => 'ro', isa => 'Str', request_name => 'filter', traits => ['NameInRequest']);
  has FilterSettings => (is => 'ro', isa => 'Paws::MediaConvert::NoiseReducerFilterSettings', request_name => 'filterSettings', traits => ['NameInRequest']);
  has SpatialFilterSettings => (is => 'ro', isa => 'Paws::MediaConvert::NoiseReducerSpatialFilterSettings', request_name => 'spatialFilterSettings', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::NoiseReducer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::NoiseReducer object:

  $service_obj->Method(Att1 => { Filter => $value, ..., SpatialFilterSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::NoiseReducer object:

  $result = $service_obj->Method(...);
  $result->Att1->Filter

=head1 DESCRIPTION

Enable the Noise reducer (NoiseReducer) feature to remove noise from
your video output if necessary. Enable or disable this feature for each
output individually. This setting is disabled by default. When you
enable Noise reducer (NoiseReducer), you must also select a value for
Noise reducer filter (NoiseReducerFilter).

=head1 ATTRIBUTES


=head2 Filter => Str

  Use Noise reducer filter (NoiseReducerFilter) to select one of the
following spatial image filtering functions. To use this setting, you
must also enable Noise reducer (NoiseReducer). * Bilateral is an edge
preserving noise reduction filter. * Mean (softest), Gaussian, Lanczos,
and Sharpen (sharpest) are convolution filters. * Conserve is a min/max
noise reduction filter. * Spatial is a frequency-domain filter based on
JND principles.


=head2 FilterSettings => L<Paws::MediaConvert::NoiseReducerFilterSettings>

  Settings for a noise reducer filter


=head2 SpatialFilterSettings => L<Paws::MediaConvert::NoiseReducerSpatialFilterSettings>

  Noise reducer filter settings for spatial filter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

