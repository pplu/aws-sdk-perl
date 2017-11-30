package Paws::MediaLive::VideoSelectorProgramId;
  use Moose;
  has ProgramId => (is => 'ro', isa => 'Int', request_name => 'programId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::VideoSelectorProgramId

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::VideoSelectorProgramId object:

  $service_obj->Method(Att1 => { ProgramId => $value, ..., ProgramId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::VideoSelectorProgramId object:

  $result = $service_obj->Method(...);
  $result->Att1->ProgramId

=head1 DESCRIPTION

Placeholder documentation for VideoSelectorProgramId

=head1 ATTRIBUTES


=head2 ProgramId => Int

  Selects a specific program from within a multi-program transport
stream. If the program doesn't exist, the first program within the
transport stream will be selected by default.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

