package Paws::MediaLive::MultiplexProgramSettings;
  use Moose;
  has ProgramNumber => (is => 'ro', isa => 'Int', request_name => 'programNumber', traits => ['NameInRequest'], required => 1);
  has ServiceDescriptor => (is => 'ro', isa => 'Paws::MediaLive::MultiplexProgramServiceDescriptor', request_name => 'serviceDescriptor', traits => ['NameInRequest']);
  has VideoSettings => (is => 'ro', isa => 'Paws::MediaLive::MultiplexVideoSettings', request_name => 'videoSettings', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::MultiplexProgramSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::MultiplexProgramSettings object:

  $service_obj->Method(Att1 => { ProgramNumber => $value, ..., VideoSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::MultiplexProgramSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->ProgramNumber

=head1 DESCRIPTION

Multiplex Program settings configuration.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProgramNumber => Int

  Unique program number.


=head2 ServiceDescriptor => L<Paws::MediaLive::MultiplexProgramServiceDescriptor>

  Transport stream service descriptor configuration for the Multiplex
program.


=head2 VideoSettings => L<Paws::MediaLive::MultiplexVideoSettings>

  Program video settings configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

