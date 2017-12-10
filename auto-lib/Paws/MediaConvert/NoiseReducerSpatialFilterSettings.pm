package Paws::MediaConvert::NoiseReducerSpatialFilterSettings;
  use Moose;
  has PostFilterSharpenStrength => (is => 'ro', isa => 'Int', request_name => 'postFilterSharpenStrength', traits => ['NameInRequest']);
  has Speed => (is => 'ro', isa => 'Int', request_name => 'speed', traits => ['NameInRequest']);
  has Strength => (is => 'ro', isa => 'Int', request_name => 'strength', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::NoiseReducerSpatialFilterSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::NoiseReducerSpatialFilterSettings object:

  $service_obj->Method(Att1 => { PostFilterSharpenStrength => $value, ..., Strength => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::NoiseReducerSpatialFilterSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->PostFilterSharpenStrength

=head1 DESCRIPTION

Noise reducer filter settings for spatial filter.

=head1 ATTRIBUTES


=head2 PostFilterSharpenStrength => Int

  Specify strength of post noise reduction sharpening filter, with 0
disabling the filter and 3 enabling it at maximum strength.


=head2 Speed => Int

  The speed of the filter, from -2 (lower speed) to 3 (higher speed),
with 0 being the nominal value.


=head2 Strength => Int

  Relative strength of noise reducing filter. Higher values produce
stronger filtering.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

