
package Paws::CodePipeline::DisableStageTransition;
  use Moose;
  has PipelineName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineName' , required => 1);
  has Reason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reason' , required => 1);
  has StageName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stageName' , required => 1);
  has TransitionType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'transitionType' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableStageTransition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::DisableStageTransition - Arguments for method DisableStageTransition on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisableStageTransition on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method DisableStageTransition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisableStageTransition.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    $codepipeline->DisableStageTransition(
      PipelineName   => 'MyPipelineName',
      Reason         => 'MyDisabledReason',
      StageName      => 'MyStageName',
      TransitionType => 'Inbound',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/DisableStageTransition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PipelineName => Str

The name of the pipeline in which you want to disable the flow of
artifacts from one stage to another.



=head2 B<REQUIRED> Reason => Str

The reason given to the user why a stage is disabled, such as waiting
for manual approval or manual tests. This message is displayed in the
pipeline console UI.



=head2 B<REQUIRED> StageName => Str

The name of the stage where you want to disable the inbound or outbound
transition of artifacts.



=head2 B<REQUIRED> TransitionType => Str

Specifies whether artifacts will be prevented from transitioning into
the stage and being processed by the actions in that stage (inbound),
or prevented from transitioning from the stage after they have been
processed by the actions in that stage (outbound).

Valid values are: C<"Inbound">, C<"Outbound">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisableStageTransition in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

