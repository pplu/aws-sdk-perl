
package Paws::MediaLive::DeleteMultiplexProgram;
  use Moose;
  has MultiplexId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'multiplexId', required => 1);
  has ProgramName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'programName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMultiplexProgram');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/multiplexes/{multiplexId}/programs/{programName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::DeleteMultiplexProgramResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::DeleteMultiplexProgram - Arguments for method DeleteMultiplexProgram on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteMultiplexProgram on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method DeleteMultiplexProgram.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteMultiplexProgram.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $DeleteMultiplexProgramResponse = $medialive->DeleteMultiplexProgram(
      MultiplexId => 'My__string',
      ProgramName => 'My__string',

    );

    # Results:
    my $ChannelId = $DeleteMultiplexProgramResponse->ChannelId;
    my $MultiplexProgramSettings =
      $DeleteMultiplexProgramResponse->MultiplexProgramSettings;
    my $PacketIdentifiersMap =
      $DeleteMultiplexProgramResponse->PacketIdentifiersMap;
    my $ProgramName = $DeleteMultiplexProgramResponse->ProgramName;

    # Returns a L<Paws::MediaLive::DeleteMultiplexProgramResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/DeleteMultiplexProgram>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MultiplexId => Str

The ID of the multiplex that the program belongs to.



=head2 B<REQUIRED> ProgramName => Str

The multiplex program name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteMultiplexProgram in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

