
package Paws::MediaLive::CreateMultiplexProgram;
  use Moose;
  has MultiplexProgramSettings => (is => 'ro', isa => 'Paws::MediaLive::MultiplexProgramSettings', traits => ['NameInRequest'], request_name => 'multiplexProgramSettings', required => 1);
  has ProgramName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'programName', required => 1);
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMultiplexProgram');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/multiplexes/{multiplexId}/programs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::CreateMultiplexProgramResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::CreateMultiplexProgram - Arguments for method CreateMultiplexProgram on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMultiplexProgram on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method CreateMultiplexProgram.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMultiplexProgram.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $CreateMultiplexProgramResponse = $medialive->CreateMultiplexProgram(
      MultiplexProgramSettings => {
        ProgramNumber     => 1,    # max: 65535
        ServiceDescriptor => {
          ProviderName => 'My__stringMax256',    # max: 256
          ServiceName  => 'My__stringMax256',    # max: 256

        },    # OPTIONAL
        VideoSettings => {
          ConstantBitrate => 1,    # min: 100000, max: 100000000; OPTIONAL
          StatmuxSettings => {
            MaximumBitrate => 1,    # min: 100000, max: 100000000; OPTIONAL
            MinimumBitrate => 1,    # min: 100000, max: 100000000; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      ProgramName => 'My__string',
      RequestId   => 'My__string',

    );

    # Results:
    my $MultiplexProgram = $CreateMultiplexProgramResponse->MultiplexProgram;

    # Returns a L<Paws::MediaLive::CreateMultiplexProgramResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/CreateMultiplexProgram>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MultiplexProgramSettings => L<Paws::MediaLive::MultiplexProgramSettings>

The settings for this multiplex program.



=head2 B<REQUIRED> ProgramName => Str

Name of multiplex program.



=head2 B<REQUIRED> RequestId => Str

Unique request ID. This prevents retries from creating multiple
resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMultiplexProgram in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

