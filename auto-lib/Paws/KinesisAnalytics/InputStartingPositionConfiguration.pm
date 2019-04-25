package Paws::KinesisAnalytics::InputStartingPositionConfiguration;
  use Moose;
  has InputStartingPosition => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::InputStartingPositionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::InputStartingPositionConfiguration object:

  $service_obj->Method(Att1 => { InputStartingPosition => $value, ..., InputStartingPosition => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::InputStartingPositionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->InputStartingPosition

=head1 DESCRIPTION

Describes the point at which the application reads from the streaming
source.

=head1 ATTRIBUTES


=head2 InputStartingPosition => Str

  The starting position on the stream.

=over

=item *

C<NOW> - Start reading just after the most recent record in the stream,
start at the request time stamp that the customer issued.

=item *

C<TRIM_HORIZON> - Start reading at the last untrimmed record in the
stream, which is the oldest record available in the stream. This option
is not available for an Amazon Kinesis Firehose delivery stream.

=item *

C<LAST_STOPPED_POINT> - Resume reading from where the application last
stopped reading.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

