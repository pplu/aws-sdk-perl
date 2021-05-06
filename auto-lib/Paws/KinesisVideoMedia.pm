package Paws::KinesisVideoMedia;
  use Moose;
  sub service { 'kinesisvideo' }
  sub signing_name { 'kinesisvideo' }
  sub version { '2017-09-30' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub GetMedia {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisVideoMedia::GetMedia', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/GetMedia / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoMedia - Perl Interface to AWS Amazon Kinesis Video Streams Media

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('KinesisVideoMedia');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION



For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo-2017-09-30>


=head1 METHODS

=head2 GetMedia

=over

=item StartSelector => L<Paws::KinesisVideoMedia::StartSelector>

=item [StreamARN => Str]

=item [StreamName => Str]


=back

Each argument is described in detail in: L<Paws::KinesisVideoMedia::GetMedia>

Returns: a L<Paws::KinesisVideoMedia::GetMediaOutput> instance

Use this API to retrieve media content from a Kinesis video stream. In
the request, you identify the stream name or stream Amazon Resource
Name (ARN), and the starting chunk. Kinesis Video Streams then returns
a stream of chunks in order by fragment number.

You must first call the C<GetDataEndpoint> API to get an endpoint. Then
send the C<GetMedia> requests to this endpoint using the --endpoint-url
parameter (https://docs.aws.amazon.com/cli/latest/reference/).

When you put media data (fragments) on a stream, Kinesis Video Streams
stores each incoming fragment and related metadata in what is called a
"chunk." For more information, see PutMedia
(https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_dataplane_PutMedia.html).
The C<GetMedia> API returns a stream of these chunks starting from the
chunk that you specify in the request.

The following limits apply when using the C<GetMedia> API:

=over

=item *

A client can call C<GetMedia> up to five times per second per stream.

=item *

Kinesis Video Streams sends media data at a rate of up to 25 megabytes
per second (or 200 megabits per second) during a C<GetMedia> session.

=back

If an error is thrown after invoking a Kinesis Video Streams media API,
in addition to the HTTP status code and the response body, it includes
the following pieces of information:

=over

=item *

C<x-amz-ErrorType> HTTP header E<ndash> contains a more specific error
type in addition to what the HTTP status code provides.

=item *

C<x-amz-RequestId> HTTP header E<ndash> if you want to report an issue
to AWS, the support team can better diagnose the problem if given the
Request Id.

=back

Both the HTTP status code and the ErrorType header can be utilized to
make programmatic decisions about whether errors are retry-able and
under what conditions, as well as provide information on what actions
the client programmer might need to take in order to successfully try
again.

For more information, see the B<Errors> section at the bottom of this
topic, as well as Common Errors
(https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/CommonErrors.html).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

