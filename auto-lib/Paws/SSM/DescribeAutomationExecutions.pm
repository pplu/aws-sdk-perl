
package Paws::SSM::DescribeAutomationExecutions;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::AutomationExecutionFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAutomationExecutions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DescribeAutomationExecutionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeAutomationExecutions - Arguments for method DescribeAutomationExecutions on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAutomationExecutions on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DescribeAutomationExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAutomationExecutions.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DescribeAutomationExecutionsResult = $ssm->DescribeAutomationExecutions(
      Filters => [
        {
          Key => 'DocumentNamePrefix'
          , # values: DocumentNamePrefix, ExecutionStatus, ExecutionId, ParentExecutionId, CurrentAction, StartTimeBefore, StartTimeAfter, AutomationType
          Values => [
            'MyAutomationExecutionFilterValue', ...    # min: 1, max: 150
          ],                                           # min: 1, max: 10

        },
        ...
      ],                                               # OPTIONAL
      MaxResults => 1,                                 # OPTIONAL
      NextToken  => 'MyNextToken',                     # OPTIONAL
    );

    # Results:
    my $AutomationExecutionMetadataList =
      $DescribeAutomationExecutionsResult->AutomationExecutionMetadataList;
    my $NextToken = $DescribeAutomationExecutionsResult->NextToken;

    # Returns a L<Paws::SSM::DescribeAutomationExecutionsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DescribeAutomationExecutions>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::SSM::AutomationExecutionFilter>]

Filters used to limit the scope of executions that are requested.



=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAutomationExecutions in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

