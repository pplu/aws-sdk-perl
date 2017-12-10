package Paws::Kinesis::HashKeyRange;
  use Moose;
  has EndingHashKey => (is => 'ro', isa => 'Str', required => 1);
  has StartingHashKey => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::HashKeyRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kinesis::HashKeyRange object:

  $service_obj->Method(Att1 => { EndingHashKey => $value, ..., StartingHashKey => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kinesis::HashKeyRange object:

  $result = $service_obj->Method(...);
  $result->Att1->EndingHashKey

=head1 DESCRIPTION

The range of possible hash key values for the shard, which is a set of
ordered contiguous positive integers.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndingHashKey => Str

  The ending hash key of the hash key range.


=head2 B<REQUIRED> StartingHashKey => Str

  The starting hash key of the hash key range.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

