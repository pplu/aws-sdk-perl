package Paws::Kinesis::PutRecordsResultEntry;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has SequenceNumber => (is => 'ro', isa => 'Str');
  has ShardId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::PutRecordsResultEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kinesis::PutRecordsResultEntry object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., ShardId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kinesis::PutRecordsResultEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

Represents the result of an individual record from a C<PutRecords>
request. A record that is successfully added to a stream includes
C<SequenceNumber> and C<ShardId> in the result. A record that fails to
be added to the stream includes C<ErrorCode> and C<ErrorMessage> in the
result.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  The error code for an individual record result. C<ErrorCodes> can be
either C<ProvisionedThroughputExceededException> or C<InternalFailure>.


=head2 ErrorMessage => Str

  The error message for an individual record result. An C<ErrorCode>
value of C<ProvisionedThroughputExceededException> has an error message
that includes the account ID, stream name, and shard ID. An
C<ErrorCode> value of C<InternalFailure> has the error message
C<"Internal Service Failure">.


=head2 SequenceNumber => Str

  The sequence number for an individual record result.


=head2 ShardId => Str

  The shard ID for an individual record result.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

