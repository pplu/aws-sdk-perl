
package Paws::Kinesis::ListShards;
  use Moose;
  has ExclusiveStartShardId => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StreamCreationTimestamp => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListShards');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kinesis::ListShardsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::ListShards - Arguments for method ListShards on L<Paws::Kinesis>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListShards on the
L<Amazon Kinesis|Paws::Kinesis> service. Use the attributes of this class
as arguments to method ListShards.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListShards.

=head1 SYNOPSIS

    my $kinesis = Paws->service('Kinesis');
    my $ListShardsOutput = $kinesis->ListShards(
      ExclusiveStartShardId   => 'MyShardId',              # OPTIONAL
      MaxResults              => 1,                        # OPTIONAL
      NextToken               => 'MyNextToken',            # OPTIONAL
      StreamCreationTimestamp => '1970-01-01T01:00:00',    # OPTIONAL
      StreamName              => 'MyStreamName',           # OPTIONAL
    );

    # Results:
    my $NextToken = $ListShardsOutput->NextToken;
    my $Shards    = $ListShardsOutput->Shards;

    # Returns a L<Paws::Kinesis::ListShardsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesis/ListShards>

=head1 ATTRIBUTES


=head2 ExclusiveStartShardId => Str

Specify this parameter to indicate that you want to list the shards
starting with the shard whose ID immediately follows
C<ExclusiveStartShardId>.

If you don't specify this parameter, the default behavior is for
C<ListShards> to list the shards starting with the first one in the
stream.

You cannot specify this parameter if you specify C<NextToken>.



=head2 MaxResults => Int

The maximum number of shards to return in a single call to
C<ListShards>. The minimum value you can specify for this parameter is
1, and the maximum is 1,000, which is also the default.

When the number of shards to be listed is greater than the value of
C<MaxResults>, the response contains a C<NextToken> value that you can
use in a subsequent call to C<ListShards> to list the next set of
shards.



=head2 NextToken => Str

When the number of shards in the data stream is greater than the
default value for the C<MaxResults> parameter, or if you explicitly
specify a value for C<MaxResults> that is less than the number of
shards in the data stream, the response includes a pagination token
named C<NextToken>. You can specify this C<NextToken> value in a
subsequent call to C<ListShards> to list the next set of shards.

Don't specify C<StreamName> or C<StreamCreationTimestamp> if you
specify C<NextToken> because the latter unambiguously identifies the
stream.

You can optionally specify a value for the C<MaxResults> parameter when
you specify C<NextToken>. If you specify a C<MaxResults> value that is
less than the number of shards that the operation returns if you don't
specify C<MaxResults>, the response will contain a new C<NextToken>
value. You can use the new C<NextToken> value in a subsequent call to
the C<ListShards> operation.

Tokens expire after 300 seconds. When you obtain a value for
C<NextToken> in the response to a call to C<ListShards>, you have 300
seconds to use that value. If you specify an expired token in a call to
C<ListShards>, you get C<ExpiredNextTokenException>.



=head2 StreamCreationTimestamp => Str

Specify this input parameter to distinguish data streams that have the
same name. For example, if you create a data stream and then delete it,
and you later create another data stream with the same name, you can
use this input parameter to specify which of the two streams you want
to list the shards for.

You cannot specify this parameter if you specify the C<NextToken>
parameter.



=head2 StreamName => Str

The name of the data stream whose shards you want to list.

You cannot specify this parameter if you specify the C<NextToken>
parameter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListShards in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

