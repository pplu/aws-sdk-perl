package Paws::MediaLive::InputSwitchScheduleActionSettings;
  use Moose;
  has InputAttachmentNameReference => (is => 'ro', isa => 'Str', request_name => 'inputAttachmentNameReference', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::InputSwitchScheduleActionSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::InputSwitchScheduleActionSettings object:

  $service_obj->Method(Att1 => { InputAttachmentNameReference => $value, ..., InputAttachmentNameReference => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::InputSwitchScheduleActionSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->InputAttachmentNameReference

=head1 DESCRIPTION

Settings for the action to switch an input.

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputAttachmentNameReference => Str

  The name of the input attachment that should be switched to by this
action.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

