# Generated from default/object.tt
package Paws::MediaLive::InputClippingSettings;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaLive::Types qw/MediaLive_StopTimecode MediaLive_StartTimecode/;
  has InputTimecodeSource => (is => 'ro', isa => Str, required => 1);
  has StartTimecode => (is => 'ro', isa => MediaLive_StartTimecode);
  has StopTimecode => (is => 'ro', isa => MediaLive_StopTimecode);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StopTimecode' => {
                                   'class' => 'Paws::MediaLive::StopTimecode',
                                   'type' => 'MediaLive_StopTimecode'
                                 },
               'InputTimecodeSource' => {
                                          'type' => 'Str'
                                        },
               'StartTimecode' => {
                                    'type' => 'MediaLive_StartTimecode',
                                    'class' => 'Paws::MediaLive::StartTimecode'
                                  }
             },
  'NameInRequest' => {
                       'StopTimecode' => 'stopTimecode',
                       'StartTimecode' => 'startTimecode',
                       'InputTimecodeSource' => 'inputTimecodeSource'
                     },
  'IsRequired' => {
                    'InputTimecodeSource' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::InputClippingSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::InputClippingSettings object:

  $service_obj->Method(Att1 => { InputTimecodeSource => $value, ..., StopTimecode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::InputClippingSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->InputTimecodeSource

=head1 DESCRIPTION

Settings to let you create a clip of the file input, in order to set up
the input to ingest only a portion of the file.

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputTimecodeSource => Str

  The source of the timecodes in the source being clipped.


=head2 StartTimecode => MediaLive_StartTimecode

  Settings to identify the start of the clip.


=head2 StopTimecode => MediaLive_StopTimecode

  Settings to identify the end of the clip.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

