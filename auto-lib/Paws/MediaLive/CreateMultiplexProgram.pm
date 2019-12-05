package Paws::MediaLive::CreateMultiplexProgram;
  use Moose;
  has MultiplexProgramSettings => (is => 'ro', isa => 'Paws::MediaLive::MultiplexProgramSettings', request_name => 'multiplexProgramSettings', traits => ['NameInRequest'], required => 1);
  has ProgramName => (is => 'ro', isa => 'Str', request_name => 'programName', traits => ['NameInRequest'], required => 1);
  has RequestId => (is => 'ro', isa => 'Str', request_name => 'requestId', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::CreateMultiplexProgram

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::CreateMultiplexProgram object:

  $service_obj->Method(Att1 => { MultiplexProgramSettings => $value, ..., RequestId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::CreateMultiplexProgram object:

  $result = $service_obj->Method(...);
  $result->Att1->MultiplexProgramSettings

=head1 DESCRIPTION

Placeholder documentation for CreateMultiplexProgram

=head1 ATTRIBUTES


=head2 B<REQUIRED> MultiplexProgramSettings => L<Paws::MediaLive::MultiplexProgramSettings>

  The settings for this multiplex program.


=head2 B<REQUIRED> ProgramName => Str

  Name of multiplex program.


=head2 B<REQUIRED> RequestId => Str

  Unique request ID. This prevents retries from creating multiple
resources.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

