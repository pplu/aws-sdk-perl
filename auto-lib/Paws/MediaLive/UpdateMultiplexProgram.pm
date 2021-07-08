
package Paws::MediaLive::UpdateMultiplexProgram;
  use Moose;
  has MultiplexProgramSettings => (is => 'ro', isa => 'Paws::MediaLive::MultiplexProgramSettings', traits => ['NameInRequest'], request_name => 'multiplexProgramSettings');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMultiplexProgram');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/multiplexes/{multiplexId}/programs/{programName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::UpdateMultiplexProgramResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::UpdateMultiplexProgram - Arguments for method UpdateMultiplexProgram on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMultiplexProgram on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method UpdateMultiplexProgram.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMultiplexProgram.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $UpdateMultiplexProgramResponse = $medialive->UpdateMultiplexProgram(
      MultiplexProgramSettings => {
        ProgramNumber            => 1,                   # max: 65535
        PreferredChannelPipeline => 'CURRENTLY_ACTIVE'
        ,    # values: CURRENTLY_ACTIVE, PIPELINE_0, PIPELINE_1; OPTIONAL
        ServiceDescriptor => {
          ProviderName => 'My__stringMax256',    # max: 256
          ServiceName  => 'My__stringMax256',    # max: 256

        },    # OPTIONAL
        VideoSettings => {
          ConstantBitrate => 1,    # min: 100000, max: 100000000; OPTIONAL
          StatmuxSettings => {
            MaximumBitrate => 1,    # min: 100000, max: 100000000; OPTIONAL
            MinimumBitrate => 1,    # min: 100000, max: 100000000; OPTIONAL
            Priority       => 1,    # min: -5, max: 5; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $MultiplexProgram = $UpdateMultiplexProgramResponse->MultiplexProgram;

    # Returns a L<Paws::MediaLive::UpdateMultiplexProgramResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/UpdateMultiplexProgram>

=head1 ATTRIBUTES


=head2 MultiplexProgramSettings => L<Paws::MediaLive::MultiplexProgramSettings>

The new settings for a multiplex program.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMultiplexProgram in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

