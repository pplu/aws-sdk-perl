package Paws::DynamoDBStreams::StreamRecord;
  use Moose;
  has ApproximateCreationDateTime => (is => 'ro', isa => 'Str');
  has Keys => (is => 'ro', isa => 'Paws::DynamoDBStreams::AttributeMap');
  has NewImage => (is => 'ro', isa => 'Paws::DynamoDBStreams::AttributeMap');
  has OldImage => (is => 'ro', isa => 'Paws::DynamoDBStreams::AttributeMap');
  has SequenceNumber => (is => 'ro', isa => 'Str');
  has SizeBytes => (is => 'ro', isa => 'Int');
  has StreamViewType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDBStreams::StreamRecord

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDBStreams::StreamRecord object:

  $service_obj->Method(Att1 => { ApproximateCreationDateTime => $value, ..., StreamViewType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDBStreams::StreamRecord object:

  $result = $service_obj->Method(...);
  $result->Att1->ApproximateCreationDateTime

=head1 DESCRIPTION

A description of a single data modification that was performed on an
item in a DynamoDB table.

=head1 ATTRIBUTES


=head2 ApproximateCreationDateTime => Str

  The approximate date and time when the stream record was created, in
UNIX epoch time (http://www.epochconverter.com/) format.


=head2 Keys => L<Paws::DynamoDBStreams::AttributeMap>

  The primary key attribute(s) for the DynamoDB item that was modified.


=head2 NewImage => L<Paws::DynamoDBStreams::AttributeMap>

  The item in the DynamoDB table as it appeared after it was modified.


=head2 OldImage => L<Paws::DynamoDBStreams::AttributeMap>

  The item in the DynamoDB table as it appeared before it was modified.


=head2 SequenceNumber => Str

  The sequence number of the stream record.


=head2 SizeBytes => Int

  The size of the stream record, in bytes.


=head2 StreamViewType => Str

  The type of data from the modified DynamoDB item that was captured in
this stream record:

=over

=item *

C<KEYS_ONLY> - only the key attributes of the modified item.

=item *

C<NEW_IMAGE> - the entire item, as it appeared after it was modified.

=item *

C<OLD_IMAGE> - the entire item, as it appeared before it was modified.

=item *

C<NEW_AND_OLD_IMAGES> - both the new and the old item images of the
item.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDBStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

