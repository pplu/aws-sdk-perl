
package Paws::CodePipeline::PutActionRevision;
  use Moose;
  has ActionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionName' , required => 1);
  has ActionRevision => (is => 'ro', isa => 'Paws::CodePipeline::ActionRevision', traits => ['NameInRequest'], request_name => 'actionRevision' , required => 1);
  has PipelineName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineName' , required => 1);
  has StageName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stageName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutActionRevision');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodePipeline::PutActionRevisionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::PutActionRevision - Arguments for method PutActionRevision on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutActionRevision on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method PutActionRevision.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutActionRevision.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $PutActionRevisionOutput = $codepipeline->PutActionRevision(
      ActionName     => 'MyActionName',
      ActionRevision => {
        Created          => '1970-01-01T01:00:00',
        RevisionChangeId => 'MyRevisionChangeIdentifier',    # min: 1, max: 100
        RevisionId       => 'MyRevision',                    # min: 1, max: 1500

      },
      PipelineName => 'MyPipelineName',
      StageName    => 'MyStageName',

    );

    # Results:
    my $NewRevision         = $PutActionRevisionOutput->NewRevision;
    my $PipelineExecutionId = $PutActionRevisionOutput->PipelineExecutionId;

    # Returns a L<Paws::CodePipeline::PutActionRevisionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/PutActionRevision>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionName => Str

The name of the action that will process the revision.



=head2 B<REQUIRED> ActionRevision => L<Paws::CodePipeline::ActionRevision>

Represents information about the version (or revision) of an action.



=head2 B<REQUIRED> PipelineName => Str

The name of the pipeline that will start processing the revision to the
source.



=head2 B<REQUIRED> StageName => Str

The name of the stage that contains the action that will act upon the
revision.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutActionRevision in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

