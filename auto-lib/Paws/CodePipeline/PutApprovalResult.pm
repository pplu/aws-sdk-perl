
package Paws::CodePipeline::PutApprovalResult;
  use Moose;
  has ActionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionName' , required => 1);
  has PipelineName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineName' , required => 1);
  has Result => (is => 'ro', isa => 'Paws::CodePipeline::ApprovalResult', traits => ['NameInRequest'], request_name => 'result' , required => 1);
  has StageName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stageName' , required => 1);
  has Token => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'token' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutApprovalResult');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodePipeline::PutApprovalResultOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::PutApprovalResult - Arguments for method PutApprovalResult on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutApprovalResult on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method PutApprovalResult.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutApprovalResult.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $PutApprovalResultOutput = $codepipeline->PutApprovalResult(
      ActionName   => 'MyActionName',
      PipelineName => 'MyPipelineName',
      Result       => {
        Status  => 'Approved',             # values: Approved, Rejected
        Summary => 'MyApprovalSummary',    # max: 512

      },
      StageName => 'MyStageName',
      Token     => 'MyApprovalToken',

    );

    # Results:
    my $ApprovedAt = $PutApprovalResultOutput->ApprovedAt;

    # Returns a L<Paws::CodePipeline::PutApprovalResultOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/PutApprovalResult>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionName => Str

The name of the action for which approval is requested.



=head2 B<REQUIRED> PipelineName => Str

The name of the pipeline that contains the action.



=head2 B<REQUIRED> Result => L<Paws::CodePipeline::ApprovalResult>

Represents information about the result of the approval request.



=head2 B<REQUIRED> StageName => Str

The name of the stage that contains the action.



=head2 B<REQUIRED> Token => Str

The system-generated token used to identify a unique approval request.
The token for each open approval request can be obtained using the
GetPipelineState action and is used to validate that the approval
request corresponding to this token is still valid.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutApprovalResult in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

