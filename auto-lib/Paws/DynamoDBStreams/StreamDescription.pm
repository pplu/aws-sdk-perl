package Paws::DynamoDBStreams::StreamDescription;
  use Moose;
  has CreationRequestDateTime => (is => 'ro', isa => 'Str');
  has KeySchema => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDBStreams::KeySchemaElement]');
  has LastEvaluatedShardId => (is => 'ro', isa => 'Str');
  has Shards => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDBStreams::Shard]');
  has StreamArn => (is => 'ro', isa => 'Str');
  has StreamLabel => (is => 'ro', isa => 'Str');
  has StreamStatus => (is => 'ro', isa => 'Str');
  has StreamViewType => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDBStreams::StreamDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDBStreams::StreamDescription object:

  $service_obj->Method(Att1 => { CreationRequestDateTime => $value, ..., TableName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDBStreams::StreamDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationRequestDateTime

=head1 DESCRIPTION

Represents all of the data describing a particular stream.

=head1 ATTRIBUTES


=head2 CreationRequestDateTime => Str

  The date and time when the request to create this stream was issued.


=head2 KeySchema => ArrayRef[L<Paws::DynamoDBStreams::KeySchemaElement>]

  The key attribute(s) of the stream's DynamoDB table.


=head2 LastEvaluatedShardId => Str

  The shard ID of the item where the operation stopped, inclusive of the
previous result set. Use this value to start a new operation, excluding
this value in the new request.

If C<LastEvaluatedShardId> is empty, then the "last page" of results
has been processed and there is currently no more data to be retrieved.

If C<LastEvaluatedShardId> is not empty, it does not necessarily mean
that there is more data in the result set. The only way to know when
you have reached the end of the result set is when
C<LastEvaluatedShardId> is empty.


=head2 Shards => ArrayRef[L<Paws::DynamoDBStreams::Shard>]

  The shards that comprise the stream.


=head2 StreamArn => Str

  The Amazon Resource Name (ARN) for the stream.


=head2 StreamLabel => Str

  A timestamp, in ISO 8601 format, for this stream.

Note that C<LatestStreamLabel> is not a unique identifier for the
stream, because it is possible that a stream from another table might
have the same timestamp. However, the combination of the following
three elements is guaranteed to be unique:

=over

=item *

the AWS customer ID.

=item *

the table name

=item *

the C<StreamLabel>

=back



=head2 StreamStatus => Str

  Indicates the current status of the stream:

=over

=item *

C<ENABLING> - Streams is currently being enabled on the DynamoDB table.

=item *

C<ENABLED> - the stream is enabled.

=item *

C<DISABLING> - Streams is currently being disabled on the DynamoDB
table.

=item *

C<DISABLED> - the stream is disabled.

=back



=head2 StreamViewType => Str

  Indicates the format of the records within this stream:

=over

=item *

C<KEYS_ONLY> - only the key attributes of items that were modified in
the DynamoDB table.

=item *

C<NEW_IMAGE> - entire items from the table, as they appeared after they
were modified.

=item *

C<OLD_IMAGE> - entire items from the table, as they appeared before
they were modified.

=item *

C<NEW_AND_OLD_IMAGES> - both the new and the old images of the items
from the table.

=back



=head2 TableName => Str

  The DynamoDB table with which the stream is associated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDBStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

