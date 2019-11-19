# Generated from default/object.tt
package Paws::MediaLive::StartTimecode;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaLive::Types qw//;
  has Timecode => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Timecode' => 'timecode'
                     },
  'types' => {
               'Timecode' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::StartTimecode

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::StartTimecode object:

  $service_obj->Method(Att1 => { Timecode => $value, ..., Timecode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::StartTimecode object:

  $result = $service_obj->Method(...);
  $result->Att1->Timecode

=head1 DESCRIPTION

Settings to identify the start of the clip.

=head1 ATTRIBUTES


=head2 Timecode => Str

  The timecode for the frame where you want to start the clip. Optional;
if not specified, the clip starts at first frame in the file. Enter the
timecode as HH:MM:SS:FF or HH:MM:SS;FF.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

