
package Paws::Kinesis::ListStreamConsumers;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has StreamARN => (is => 'ro', isa => 'Str', required => 1);
  has StreamCreationTimestamp => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStreamConsumers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kinesis::ListStreamConsumersOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::ListStreamConsumers - Arguments for method ListStreamConsumers on L<Paws::Kinesis>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStreamConsumers on the
L<Amazon Kinesis|Paws::Kinesis> service. Use the attributes of this class
as arguments to method ListStreamConsumers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStreamConsumers.

=head1 SYNOPSIS

    my $kinesis = Paws->service('Kinesis');
    my $ListStreamConsumersOutput = $kinesis->ListStreamConsumers(
      StreamARN               => 'MyStreamARN',
      MaxResults              => 1,                        # OPTIONAL
      NextToken               => 'MyNextToken',            # OPTIONAL
      StreamCreationTimestamp => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $Consumers = $ListStreamConsumersOutput->Consumers;
    my $NextToken = $ListStreamConsumersOutput->NextToken;

    # Returns a L<Paws::Kinesis::ListStreamConsumersOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesis/ListStreamConsumers>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of consumers that you want a single call of
C<ListStreamConsumers> to return.



=head2 NextToken => Str

When the number of consumers that are registered with the data stream
is greater than the default value for the C<MaxResults> parameter, or
if you explicitly specify a value for C<MaxResults> that is less than
the number of consumers that are registered with the data stream, the
response includes a pagination token named C<NextToken>. You can
specify this C<NextToken> value in a subsequent call to
C<ListStreamConsumers> to list the next set of registered consumers.

Don't specify C<StreamName> or C<StreamCreationTimestamp> if you
specify C<NextToken> because the latter unambiguously identifies the
stream.

You can optionally specify a value for the C<MaxResults> parameter when
you specify C<NextToken>. If you specify a C<MaxResults> value that is
less than the number of consumers that the operation returns if you
don't specify C<MaxResults>, the response will contain a new
C<NextToken> value. You can use the new C<NextToken> value in a
subsequent call to the C<ListStreamConsumers> operation to list the
next set of consumers.

Tokens expire after 300 seconds. When you obtain a value for
C<NextToken> in the response to a call to C<ListStreamConsumers>, you
have 300 seconds to use that value. If you specify an expired token in
a call to C<ListStreamConsumers>, you get C<ExpiredNextTokenException>.



=head2 B<REQUIRED> StreamARN => Str

The ARN of the Kinesis data stream for which you want to list the
registered consumers. For more information, see Amazon Resource Names
(ARNs) and AWS Service Namespaces
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams).



=head2 StreamCreationTimestamp => Str

Specify this input parameter to distinguish data streams that have the
same name. For example, if you create a data stream and then delete it,
and you later create another data stream with the same name, you can
use this input parameter to specify which of the two streams you want
to list the consumers for.

You can't specify this parameter if you specify the NextToken
parameter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListStreamConsumers in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

