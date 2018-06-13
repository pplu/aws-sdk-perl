
package Paws::CloudFormation::ListStacks;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StackStatusFilter => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStacks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::ListStacksOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListStacksResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListStacks - Arguments for method ListStacks on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStacks on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method ListStacks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStacks.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $ListStacksOutput = $cloudformation->ListStacks(
      NextToken         => 'MyNextToken',    # OPTIONAL
      StackStatusFilter => [
        'CREATE_IN_PROGRESS',
        ... # values: CREATE_IN_PROGRESS, CREATE_FAILED, CREATE_COMPLETE, ROLLBACK_IN_PROGRESS, ROLLBACK_FAILED, ROLLBACK_COMPLETE, DELETE_IN_PROGRESS, DELETE_FAILED, DELETE_COMPLETE, UPDATE_IN_PROGRESS, UPDATE_COMPLETE_CLEANUP_IN_PROGRESS, UPDATE_COMPLETE, UPDATE_ROLLBACK_IN_PROGRESS, UPDATE_ROLLBACK_FAILED, UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS, UPDATE_ROLLBACK_COMPLETE, REVIEW_IN_PROGRESS
      ],    # OPTIONAL
    );

    # Results:
    my $NextToken      = $ListStacksOutput->NextToken;
    my $StackSummaries = $ListStacksOutput->StackSummaries;

    # Returns a L<Paws::CloudFormation::ListStacksOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/ListStacks>

=head1 ATTRIBUTES


=head2 NextToken => Str

A string that identifies the next page of stacks that you want to
retrieve.



=head2 StackStatusFilter => ArrayRef[Str|Undef]

Stack status to use as a filter. Specify one or more stack status codes
to list only stacks with the specified status codes. For a complete
list of stack status codes, see the C<StackStatus> parameter of the
Stack data type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListStacks in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

