package Paws::Kinesis::SequenceNumberRange;
  use Moose;
  has EndingSequenceNumber => (is => 'ro', isa => 'Str');
  has StartingSequenceNumber => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::SequenceNumberRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kinesis::SequenceNumberRange object:

  $service_obj->Method(Att1 => { EndingSequenceNumber => $value, ..., StartingSequenceNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kinesis::SequenceNumberRange object:

  $result = $service_obj->Method(...);
  $result->Att1->EndingSequenceNumber

=head1 DESCRIPTION

The range of possible sequence numbers for the shard.

=head1 ATTRIBUTES


=head2 EndingSequenceNumber => Str

  The ending sequence number for the range. Shards that are in the OPEN
state have an ending sequence number of C<null>.


=head2 B<REQUIRED> StartingSequenceNumber => Str

  The starting sequence number for the range.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

