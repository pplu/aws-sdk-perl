package Paws::DynamoDBStreams::Stream;
  use Moose;
  has StreamArn => (is => 'ro', isa => 'Str');
  has StreamLabel => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDBStreams::Stream

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDBStreams::Stream object:

  $service_obj->Method(Att1 => { StreamArn => $value, ..., TableName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDBStreams::Stream object:

  $result = $service_obj->Method(...);
  $result->Att1->StreamArn

=head1 DESCRIPTION

Represents all of the data describing a particular stream.

=head1 ATTRIBUTES


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



=head2 TableName => Str

  The DynamoDB table with which the stream is associated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDBStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

