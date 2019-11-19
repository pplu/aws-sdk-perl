# Generated from default/object.tt
package Paws::MediaConvert::NoiseReducerTemporalFilterSettings;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::MediaConvert::Types qw//;
  has AggressiveMode => (is => 'ro', isa => Int);
  has Speed => (is => 'ro', isa => Int);
  has Strength => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Speed' => 'speed',
                       'AggressiveMode' => 'aggressiveMode',
                       'Strength' => 'strength'
                     },
  'types' => {
               'Speed' => {
                            'type' => 'Int'
                          },
               'AggressiveMode' => {
                                     'type' => 'Int'
                                   },
               'Strength' => {
                               'type' => 'Int'
                             }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::NoiseReducerTemporalFilterSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::NoiseReducerTemporalFilterSettings object:

  $service_obj->Method(Att1 => { AggressiveMode => $value, ..., Strength => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::NoiseReducerTemporalFilterSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->AggressiveMode

=head1 DESCRIPTION

Noise reducer filter settings for temporal filter.

=head1 ATTRIBUTES


=head2 AggressiveMode => Int

  Use Aggressive mode for content that has complex motion. Higher values
produce stronger temporal filtering. This filters highly complex scenes
more aggressively and creates better VQ for low bitrate outputs.


=head2 Speed => Int

  The speed of the filter (higher number is faster). Low setting reduces
bit rate at the cost of transcode time, high setting improves transcode
time at the cost of bit rate.


=head2 Strength => Int

  Specify the strength of the noise reducing filter on this output.
Higher values produce stronger filtering. We recommend the following
value ranges, depending on the result that you want: * 0-2 for
complexity reduction with minimal sharpness loss * 2-8 for complexity
reduction with image preservation * 8-16 for a high level of complexity
reduction



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

