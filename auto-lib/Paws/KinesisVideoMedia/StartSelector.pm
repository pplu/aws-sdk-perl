package Paws::KinesisVideoMedia::StartSelector;
  use Moose;
  has AfterFragmentNumber => (is => 'ro', isa => 'Str');
  has ContinuationToken => (is => 'ro', isa => 'Str');
  has StartSelectorType => (is => 'ro', isa => 'Str', required => 1);
  has StartTimestamp => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoMedia::StartSelector

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisVideoMedia::StartSelector object:

  $service_obj->Method(Att1 => { AfterFragmentNumber => $value, ..., StartTimestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisVideoMedia::StartSelector object:

  $result = $service_obj->Method(...);
  $result->Att1->AfterFragmentNumber

=head1 DESCRIPTION

Identifies the chunk on the Kinesis video stream where you want the
C<GetMedia> API to start returning media data. You have the following
options to identify the starting chunk:

=over

=item *

Choose the latest (or oldest) chunk.

=item *

Identify a specific chunk. You can identify a specific chunk either by
providing a fragment number or time stamp (server or producer).

=item *

Each chunk's metadata includes a continuation token as a Matroska (MKV)
tag (C<AWS_KINESISVIDEO_CONTINUATION_TOKEN>). If your previous
C<GetMedia> request terminated, you can use this tag value in your next
C<GetMedia> request. The API then starts returning chunks starting
where the last API ended.

=back


=head1 ATTRIBUTES


=head2 AfterFragmentNumber => Str

  Specifies the fragment number from where you want the C<GetMedia> API
to start returning the fragments.


=head2 ContinuationToken => Str

  Continuation token that Kinesis Video Streams returned in the previous
C<GetMedia> response. The C<GetMedia> API then starts with the chunk
identified by the continuation token.


=head2 B<REQUIRED> StartSelectorType => Str

  Identifies the fragment on the Kinesis video stream where you want to
start getting the data from.

=over

=item *

NOW - Start with the latest chunk on the stream.

=item *

EARLIEST - Start with earliest available chunk on the stream.

=item *

FRAGMENT_NUMBER - Start with the chunk containing the specific
fragment. You must also specify the C<StartFragmentNumber>.

=item *

PRODUCER_TIMESTAMP or SERVER_TIMESTAMP - Start with the chunk
containing a fragment with the specified producer or server time stamp.
You specify the time stamp by adding C<StartTimestamp>.

=item *

CONTINUATION_TOKEN - Read using the specified continuation token.

=back

If you choose the NOW, EARLIEST, or CONTINUATION_TOKEN as the
C<startSelectorType>, you don't provide any additional information in
the C<startSelector>.


=head2 StartTimestamp => Str

  A time stamp value. This value is required if you choose the
PRODUCER_TIMESTAMP or the SERVER_TIMESTAMP as the C<startSelectorType>.
The C<GetMedia> API then starts with the chunk containing the fragment
that has the specified time stamp.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisVideoMedia>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

