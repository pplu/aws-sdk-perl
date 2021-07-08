
package Paws::MediaLive::BatchStop;
  use Moose;
  has ChannelIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'channelIds');
  has MultiplexIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'multiplexIds');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchStop');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/batch/stop');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::BatchStopResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::BatchStop - Arguments for method BatchStop on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchStop on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method BatchStop.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchStop.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $BatchStopResponse = $medialive->BatchStop(
      ChannelIds   => [ 'My__string', ... ],    # OPTIONAL
      MultiplexIds => [ 'My__string', ... ],    # OPTIONAL
    );

    # Results:
    my $Failed     = $BatchStopResponse->Failed;
    my $Successful = $BatchStopResponse->Successful;

    # Returns a L<Paws::MediaLive::BatchStopResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/BatchStop>

=head1 ATTRIBUTES


=head2 ChannelIds => ArrayRef[Str|Undef]

List of channel IDs



=head2 MultiplexIds => ArrayRef[Str|Undef]

List of multiplex IDs




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchStop in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

