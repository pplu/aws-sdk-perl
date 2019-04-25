package Paws::KinesisVideo;
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

  
  sub CreateStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisVideo::CreateStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisVideo::DeleteStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisVideo::DescribeStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisVideo::GetDataEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListStreams {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisVideo::ListStreams', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisVideo::ListTagsForStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisVideo::TagStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisVideo::UntagStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataRetention {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisVideo::UpdateDataRetention', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateStream {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::KinesisVideo::UpdateStream', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllStreams {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListStreams(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListStreams(@_, NextToken => $next_result->NextToken);
        push @{ $result->StreamInfoList }, @{ $next_result->StreamInfoList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'StreamInfoList') foreach (@{ $result->StreamInfoList });
        $result = $self->ListStreams(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'StreamInfoList') foreach (@{ $result->StreamInfoList });
    }

    return undef
  }


  sub operations { qw/CreateStream DeleteStream DescribeStream GetDataEndpoint ListStreams ListTagsForStream TagStream UntagStream UpdateDataRetention UpdateStream / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo - Perl Interface to AWS Amazon Kinesis Video Streams

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('KinesisVideo');
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

=head2 CreateStream

=over

=item StreamName => Str

=item [DataRetentionInHours => Int]

=item [DeviceName => Str]

=item [KmsKeyId => Str]

=item [MediaType => Str]


=back

Each argument is described in detail in: L<Paws::KinesisVideo::CreateStream>

Returns: a L<Paws::KinesisVideo::CreateStreamOutput> instance

Creates a new Kinesis video stream.

When you create a new stream, Kinesis Video Streams assigns it a
version number. When you change the stream's metadata, Kinesis Video
Streams updates the version.

C<CreateStream> is an asynchronous operation.

For information about how the service works, see How it Works
(http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/how-it-works.html).

You must have permissions for the C<KinesisVideo:CreateStream> action.


=head2 DeleteStream

=over

=item StreamARN => Str

=item [CurrentVersion => Str]


=back

Each argument is described in detail in: L<Paws::KinesisVideo::DeleteStream>

Returns: a L<Paws::KinesisVideo::DeleteStreamOutput> instance

Deletes a Kinesis video stream and the data contained in the stream.

This method marks the stream for deletion, and makes the data in the
stream inaccessible immediately.

To ensure that you have the latest version of the stream before
deleting it, you can specify the stream version. Kinesis Video Streams
assigns a version to each stream. When you update a stream, Kinesis
Video Streams assigns a new version number. To get the latest stream
version, use the C<DescribeStream> API.

This operation requires permission for the C<KinesisVideo:DeleteStream>
action.


=head2 DescribeStream

=over

=item [StreamARN => Str]

=item [StreamName => Str]


=back

Each argument is described in detail in: L<Paws::KinesisVideo::DescribeStream>

Returns: a L<Paws::KinesisVideo::DescribeStreamOutput> instance

Returns the most current information about the specified stream. You
must specify either the C<StreamName> or the C<StreamARN>.


=head2 GetDataEndpoint

=over

=item APIName => Str

=item [StreamARN => Str]

=item [StreamName => Str]


=back

Each argument is described in detail in: L<Paws::KinesisVideo::GetDataEndpoint>

Returns: a L<Paws::KinesisVideo::GetDataEndpointOutput> instance

Gets an endpoint for a specified stream for either reading or writing.
Use this endpoint in your application to read from the specified stream
(using the C<GetMedia> or C<GetMediaForFragmentList> operations) or
write to it (using the C<PutMedia> operation).

The returned endpoint does not have the API name appended. The client
needs to add the API name to the returned endpoint.

In the request, specify the stream either by C<StreamName> or
C<StreamARN>.


=head2 ListStreams

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StreamNameCondition => L<Paws::KinesisVideo::StreamNameCondition>]


=back

Each argument is described in detail in: L<Paws::KinesisVideo::ListStreams>

Returns: a L<Paws::KinesisVideo::ListStreamsOutput> instance

Returns an array of C<StreamInfo> objects. Each object describes a
stream. To retrieve only streams that satisfy a specific condition, you
can specify a C<StreamNameCondition>.


=head2 ListTagsForStream

=over

=item [NextToken => Str]

=item [StreamARN => Str]

=item [StreamName => Str]


=back

Each argument is described in detail in: L<Paws::KinesisVideo::ListTagsForStream>

Returns: a L<Paws::KinesisVideo::ListTagsForStreamOutput> instance

Returns a list of tags associated with the specified stream.

In the request, you must specify either the C<StreamName> or the
C<StreamARN>.


=head2 TagStream

=over

=item Tags => L<Paws::KinesisVideo::ResourceTags>

=item [StreamARN => Str]

=item [StreamName => Str]


=back

Each argument is described in detail in: L<Paws::KinesisVideo::TagStream>

Returns: a L<Paws::KinesisVideo::TagStreamOutput> instance

Adds one or more tags to a stream. A I<tag> is a key-value pair (the
value is optional) that you can define and assign to AWS resources. If
you specify a tag that already exists, the tag value is replaced with
the value that you specify in the request. For more information, see
Using Cost Allocation Tags
(http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
in the I<AWS Billing and Cost Management User Guide>.

You must provide either the C<StreamName> or the C<StreamARN>.

This operation requires permission for the C<KinesisVideo:TagStream>
action.

Kinesis video streams support up to 50 tags.


=head2 UntagStream

=over

=item TagKeyList => ArrayRef[Str|Undef]

=item [StreamARN => Str]

=item [StreamName => Str]


=back

Each argument is described in detail in: L<Paws::KinesisVideo::UntagStream>

Returns: a L<Paws::KinesisVideo::UntagStreamOutput> instance

Removes one or more tags from a stream. In the request, specify only a
tag key or keys; don't specify the value. If you specify a tag key that
does not exist, it's ignored.

In the request, you must provide the C<StreamName> or C<StreamARN>.


=head2 UpdateDataRetention

=over

=item CurrentVersion => Str

=item DataRetentionChangeInHours => Int

=item Operation => Str

=item [StreamARN => Str]

=item [StreamName => Str]


=back

Each argument is described in detail in: L<Paws::KinesisVideo::UpdateDataRetention>

Returns: a L<Paws::KinesisVideo::UpdateDataRetentionOutput> instance

Increases or decreases the stream's data retention period by the value
that you specify. To indicate whether you want to increase or decrease
the data retention period, specify the C<Operation> parameter in the
request body. In the request, you must specify either the C<StreamName>
or the C<StreamARN>.

The retention period that you specify replaces the current value.

This operation requires permission for the
C<KinesisVideo:UpdateDataRetention> action.

Changing the data retention period affects the data in the stream as
follows:

=over

=item *

If the data retention period is increased, existing data is retained
for the new retention period. For example, if the data retention period
is increased from one hour to seven hours, all existing data is
retained for seven hours.

=item *

If the data retention period is decreased, existing data is retained
for the new retention period. For example, if the data retention period
is decreased from seven hours to one hour, all existing data is
retained for one hour, and any data older than one hour is deleted
immediately.

=back



=head2 UpdateStream

=over

=item CurrentVersion => Str

=item [DeviceName => Str]

=item [MediaType => Str]

=item [StreamARN => Str]

=item [StreamName => Str]


=back

Each argument is described in detail in: L<Paws::KinesisVideo::UpdateStream>

Returns: a L<Paws::KinesisVideo::UpdateStreamOutput> instance

Updates stream metadata, such as the device name and media type.

You must provide the stream name or the Amazon Resource Name (ARN) of
the stream.

To make sure that you have the latest version of the stream before
updating it, you can specify the stream version. Kinesis Video Streams
assigns a version to each stream. When you update a stream, Kinesis
Video Streams assigns a new version number. To get the latest stream
version, use the C<DescribeStream> API.

C<UpdateStream> is an asynchronous operation, and takes time to
complete.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllStreams(sub { },[MaxResults => Int, NextToken => Str, StreamNameCondition => L<Paws::KinesisVideo::StreamNameCondition>])

=head2 ListAllStreams([MaxResults => Int, NextToken => Str, StreamNameCondition => L<Paws::KinesisVideo::StreamNameCondition>])


If passed a sub as first parameter, it will call the sub for each element found in :

 - StreamInfoList, passing the object as the first parameter, and the string 'StreamInfoList' as the second parameter 

If not, it will return a a L<Paws::KinesisVideo::ListStreamsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

