
package Paws::CloudFormation::ListStackSetOperationResults;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OperationId => (is => 'ro', isa => 'Str', required => 1);
  has StackSetName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStackSetOperationResults');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::ListStackSetOperationResultsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListStackSetOperationResultsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListStackSetOperationResults - Arguments for method ListStackSetOperationResults on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStackSetOperationResults on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method ListStackSetOperationResults.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStackSetOperationResults.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $ListStackSetOperationResultsOutput =
      $cloudformation->ListStackSetOperationResults(
      OperationId  => 'MyClientRequestToken',
      StackSetName => 'MyStackSetName',
      MaxResults   => 1,                        # OPTIONAL
      NextToken    => 'MyNextToken',            # OPTIONAL
      );

    # Results:
    my $NextToken = $ListStackSetOperationResultsOutput->NextToken;
    my $Summaries = $ListStackSetOperationResultsOutput->Summaries;

 # Returns a L<Paws::CloudFormation::ListStackSetOperationResultsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/ListStackSetOperationResults>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to be returned with a single call. If the
number of available results exceeds this maximum, the response includes
a C<NextToken> value that you can assign to the C<NextToken> request
parameter to get the next set of results.



=head2 NextToken => Str

If the previous request didn't return all of the remaining results, the
response object's C<NextToken> parameter value is set to a token. To
retrieve the next set of results, call C<ListStackSetOperationResults>
again and assign that token to the request object's C<NextToken>
parameter. If there are no remaining results, the previous response
object's C<NextToken> parameter is set to C<null>.



=head2 B<REQUIRED> OperationId => Str

The ID of the stack set operation.



=head2 B<REQUIRED> StackSetName => Str

The name or unique ID of the stack set that you want to get operation
results for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListStackSetOperationResults in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

