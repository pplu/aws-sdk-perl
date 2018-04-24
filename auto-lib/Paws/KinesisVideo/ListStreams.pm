
package Paws::KinesisVideo::ListStreams;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StreamNameCondition => (is => 'ro', isa => 'Paws::KinesisVideo::StreamNameCondition');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStreams');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listStreams');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideo::ListStreamsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::ListStreams - Arguments for method ListStreams on L<Paws::KinesisVideo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStreams on the 
L<Amazon Kinesis Video Streams|Paws::KinesisVideo> service. Use the attributes of this class
as arguments to method ListStreams.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStreams.

As an example:

  $service_obj->ListStreams(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of streams to return in the response. The default is
10,000.



=head2 NextToken => Str

If you specify this parameter, when the result of a C<ListStreams>
operation is truncated, the call returns the C<NextToken> in the
response. To get another batch of streams, provide this token in your
next request.



=head2 StreamNameCondition => L<Paws::KinesisVideo::StreamNameCondition>

Optional: Returns only streams that satisfy a specific condition.
Currently, you can specify only the prefix of a stream name as a
condition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListStreams in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

