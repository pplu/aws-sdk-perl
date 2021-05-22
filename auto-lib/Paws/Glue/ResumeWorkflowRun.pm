
package Paws::Glue::ResumeWorkflowRun;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NodeIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has RunId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResumeWorkflowRun');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::ResumeWorkflowRunResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ResumeWorkflowRun - Arguments for method ResumeWorkflowRun on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResumeWorkflowRun on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method ResumeWorkflowRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResumeWorkflowRun.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $ResumeWorkflowRunResponse = $glue->ResumeWorkflowRun(
      Name    => 'MyNameString',
      NodeIds => [
        'MyNameString', ...    # min: 1, max: 255
      ],
      RunId => 'MyIdString',

    );

    # Results:
    my $NodeIds = $ResumeWorkflowRunResponse->NodeIds;
    my $RunId   = $ResumeWorkflowRunResponse->RunId;

    # Returns a L<Paws::Glue::ResumeWorkflowRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/ResumeWorkflowRun>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the workflow to resume.



=head2 B<REQUIRED> NodeIds => ArrayRef[Str|Undef]

A list of the node IDs for the nodes you want to restart. The nodes
that are to be restarted must have a run attempt in the original run.



=head2 B<REQUIRED> RunId => Str

The ID of the workflow run to resume.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResumeWorkflowRun in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

