package Paws::CloudWatchEvents::KinesisParameters;
  use Moose;
  has PartitionKeyPath => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::KinesisParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchEvents::KinesisParameters object:

  $service_obj->Method(Att1 => { PartitionKeyPath => $value, ..., PartitionKeyPath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchEvents::KinesisParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->PartitionKeyPath

=head1 DESCRIPTION

This object enables you to specify a JSON path to extract from the
event and use as the partition key for the Amazon Kinesis data stream,
so that you can control the shard to which the event goes. If you do
not include this parameter, the default is to use the C<eventId> as the
partition key.

=head1 ATTRIBUTES


=head2 B<REQUIRED> PartitionKeyPath => Str

  The JSON path to be extracted from the event and used as the partition
key. For more information, see Amazon Kinesis Streams Key Concepts
(http://docs.aws.amazon.com/streams/latest/dev/key-concepts.html#partition-key)
in the I<Amazon Kinesis Streams Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

