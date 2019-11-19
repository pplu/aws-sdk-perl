# Generated from default/object.tt
package Paws::MediaConvert::TimecodeBurnin;
  use Moo;
  use Types::Standard qw/Int Str/;
  use Paws::MediaConvert::Types qw//;
  has FontSize => (is => 'ro', isa => Int);
  has Position => (is => 'ro', isa => Str);
  has Prefix => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FontSize' => {
                               'type' => 'Int'
                             },
               'Position' => {
                               'type' => 'Str'
                             },
               'Prefix' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'Position' => 'position',
                       'Prefix' => 'prefix',
                       'FontSize' => 'fontSize'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::TimecodeBurnin

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::TimecodeBurnin object:

  $service_obj->Method(Att1 => { FontSize => $value, ..., Prefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::TimecodeBurnin object:

  $result = $service_obj->Method(...);
  $result->Att1->FontSize

=head1 DESCRIPTION

Timecode burn-in (TimecodeBurnIn)--Burns the output timecode and
specified prefix into the output.

=head1 ATTRIBUTES


=head2 FontSize => Int

  Use Font Size (FontSize) to set the font size of any burned-in
timecode. Valid values are 10, 16, 32, 48.


=head2 Position => Str

  Use Position (Position) under under Timecode burn-in (TimecodeBurnIn)
to specify the location the burned-in timecode on output video.


=head2 Prefix => Str

  Use Prefix (Prefix) to place ASCII characters before any burned-in
timecode. For example, a prefix of "EZ-" will result in the timecode
"EZ-00:00:00:00". Provide either the characters themselves or the ASCII
code equivalents. The supported range of characters is 0x20 through
0x7e. This includes letters, numbers, and all special characters
represented on a standard English keyboard.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

