package Paws::MediaLive::MultiplexProgramChannelDestinationSettings;
  use Moose;
  has MultiplexId => (is => 'ro', isa => 'Str', request_name => 'multiplexId', traits => ['NameInRequest']);
  has ProgramName => (is => 'ro', isa => 'Str', request_name => 'programName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::MultiplexProgramChannelDestinationSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::MultiplexProgramChannelDestinationSettings object:

  $service_obj->Method(Att1 => { MultiplexId => $value, ..., ProgramName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::MultiplexProgramChannelDestinationSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->MultiplexId

=head1 DESCRIPTION

Multiplex Program Input Destination Settings for outputting a Channel
to a Multiplex

=head1 ATTRIBUTES


=head2 MultiplexId => Str

  The ID of the Multiplex that the encoder is providing output to. You do
not need to specify the individual inputs to the Multiplex; MediaLive
will handle the connection of the two MediaLive pipelines to the two
Multiplex instances. The Multiplex must be in the same region as the
Channel.


=head2 ProgramName => Str

  The program name of the Multiplex program that the encoder is providing
output to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

