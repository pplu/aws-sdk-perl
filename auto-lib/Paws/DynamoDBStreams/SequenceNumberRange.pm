package Paws::DynamoDBStreams::SequenceNumberRange;
  use Moose;
  has EndingSequenceNumber => (is => 'ro', isa => 'Str');
  has StartingSequenceNumber => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDBStreams::SequenceNumberRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDBStreams::SequenceNumberRange object:

  $service_obj->Method(Att1 => { EndingSequenceNumber => $value, ..., StartingSequenceNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDBStreams::SequenceNumberRange object:

  $result = $service_obj->Method(...);
  $result->Att1->EndingSequenceNumber

=head1 DESCRIPTION

The beginning and ending sequence numbers for the stream records
contained within a shard.

=head1 ATTRIBUTES


=head2 EndingSequenceNumber => Str

  The last sequence number.


=head2 StartingSequenceNumber => Str

  The first sequence number.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDBStreams>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

