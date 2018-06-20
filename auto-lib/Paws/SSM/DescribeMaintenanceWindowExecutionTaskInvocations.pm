
package Paws::SSM::DescribeMaintenanceWindowExecutionTaskInvocations;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::MaintenanceWindowFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has TaskId => (is => 'ro', isa => 'Str', required => 1);
  has WindowExecutionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMaintenanceWindowExecutionTaskInvocations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DescribeMaintenanceWindowExecutionTaskInvocationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeMaintenanceWindowExecutionTaskInvocations - Arguments for method DescribeMaintenanceWindowExecutionTaskInvocations on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeMaintenanceWindowExecutionTaskInvocations on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DescribeMaintenanceWindowExecutionTaskInvocations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeMaintenanceWindowExecutionTaskInvocations.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DescribeMaintenanceWindowExecutionTaskInvocationsResult =
      $ssm->DescribeMaintenanceWindowExecutionTaskInvocations(
      TaskId            => 'MyMaintenanceWindowExecutionTaskId',
      WindowExecutionId => 'MyMaintenanceWindowExecutionId',
      Filters           => [
        {
          Key    => 'MyMaintenanceWindowFilterKey', # min: 1, max: 128; OPTIONAL
          Values => [
            'MyMaintenanceWindowFilterValue', ...    # min: 1, max: 256
          ],                                         # OPTIONAL
        },
        ...
      ],                                             # OPTIONAL
      MaxResults => 1,                               # OPTIONAL
      NextToken  => 'MyNextToken',                   # OPTIONAL
      );

    # Results:
    my $NextToken =
      $DescribeMaintenanceWindowExecutionTaskInvocationsResult->NextToken;
    my $WindowExecutionTaskInvocationIdentities =
      $DescribeMaintenanceWindowExecutionTaskInvocationsResult
      ->WindowExecutionTaskInvocationIdentities;

# Returns a L<Paws::SSM::DescribeMaintenanceWindowExecutionTaskInvocationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DescribeMaintenanceWindowExecutionTaskInvocations>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::SSM::MaintenanceWindowFilter>]

Optional filters used to scope down the returned task invocations. The
supported filter key is STATUS with the corresponding values PENDING,
IN_PROGRESS, SUCCESS, FAILED, TIMED_OUT, CANCELLING, and CANCELLED.



=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)



=head2 B<REQUIRED> TaskId => Str

The ID of the specific task in the Maintenance Window task that should
be retrieved.



=head2 B<REQUIRED> WindowExecutionId => Str

The ID of the Maintenance Window execution the task is part of.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeMaintenanceWindowExecutionTaskInvocations in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

