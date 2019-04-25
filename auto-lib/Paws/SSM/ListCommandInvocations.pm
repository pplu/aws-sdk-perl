
package Paws::SSM::ListCommandInvocations;
  use Moose;
  has CommandId => (is => 'ro', isa => 'Str');
  has Details => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::CommandFilter]');
  has InstanceId => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCommandInvocations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::ListCommandInvocationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListCommandInvocations - Arguments for method ListCommandInvocations on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCommandInvocations on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method ListCommandInvocations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCommandInvocations.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $ListCommandInvocationsResult = $ssm->ListCommandInvocations(
      CommandId => 'MyCommandId',    # OPTIONAL
      Details   => 1,                # OPTIONAL
      Filters   => [
        {
          Key => 'InvokedAfter'
          , # values: InvokedAfter, InvokedBefore, Status, ExecutionStage, DocumentName
          Value => 'MyCommandFilterValue',    # min: 1, max: 128

        },
        ...
      ],                                      # OPTIONAL
      InstanceId => 'MyInstanceId',           # OPTIONAL
      MaxResults => 1,                        # OPTIONAL
      NextToken  => 'MyNextToken',            # OPTIONAL
    );

    # Results:
    my $CommandInvocations = $ListCommandInvocationsResult->CommandInvocations;
    my $NextToken          = $ListCommandInvocationsResult->NextToken;

    # Returns a L<Paws::SSM::ListCommandInvocationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/ListCommandInvocations>

=head1 ATTRIBUTES


=head2 CommandId => Str

(Optional) The invocations for a specific command ID.



=head2 Details => Bool

(Optional) If set this returns the response of the command executions
and any command output. By default this is set to False.



=head2 Filters => ArrayRef[L<Paws::SSM::CommandFilter>]

(Optional) One or more filters. Use a filter to return a more specific
list of results.



=head2 InstanceId => Str

(Optional) The command execution details for a specific instance ID.



=head2 MaxResults => Int

(Optional) The maximum number of items to return for this call. The
call also returns a token that you can specify in a subsequent call to
get the next set of results.



=head2 NextToken => Str

(Optional) The token for the next set of items to return. (You received
this token from a previous call.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCommandInvocations in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

