# Generated from default/object.tt
package Paws::MediaLive::PauseStateScheduleActionSettings;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::MediaLive::Types qw/MediaLive_PipelinePauseStateSettings/;
  has Pipelines => (is => 'ro', isa => ArrayRef[MediaLive_PipelinePauseStateSettings]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Pipelines' => {
                                'type' => 'ArrayRef[MediaLive_PipelinePauseStateSettings]',
                                'class' => 'Paws::MediaLive::PipelinePauseStateSettings'
                              }
             },
  'NameInRequest' => {
                       'Pipelines' => 'pipelines'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::PauseStateScheduleActionSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::PauseStateScheduleActionSettings object:

  $service_obj->Method(Att1 => { Pipelines => $value, ..., Pipelines => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::PauseStateScheduleActionSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Pipelines

=head1 DESCRIPTION

Settings for the action to set pause state of a channel.

=head1 ATTRIBUTES


=head2 Pipelines => ArrayRef[MediaLive_PipelinePauseStateSettings]

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

