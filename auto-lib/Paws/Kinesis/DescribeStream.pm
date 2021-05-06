
package Paws::Kinesis::DescribeStream;
  use Moose;
  has ExclusiveStartShardId => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has StreamName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeStream');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kinesis::DescribeStreamOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::DescribeStream - Arguments for method DescribeStream on L<Paws::Kinesis>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeStream on the
L<Amazon Kinesis|Paws::Kinesis> service. Use the attributes of this class
as arguments to method DescribeStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeStream.

=head1 SYNOPSIS

    my $kinesis = Paws->service('Kinesis');
    my $DescribeStreamOutput = $kinesis->DescribeStream(
      StreamName            => 'MyStreamName',
      ExclusiveStartShardId => 'MyShardId',      # OPTIONAL
      Limit                 => 1,                # OPTIONAL
    );

    # Results:
    my $StreamDescription = $DescribeStreamOutput->StreamDescription;

    # Returns a L<Paws::Kinesis::DescribeStreamOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesis/DescribeStream>

=head1 ATTRIBUTES


=head2 ExclusiveStartShardId => Str

The shard ID of the shard to start with.



=head2 Limit => Int

The maximum number of shards to return in a single call. The default
value is 100. If you specify a value greater than 100, at most 100
shards are returned.



=head2 B<REQUIRED> StreamName => Str

The name of the stream to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeStream in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

