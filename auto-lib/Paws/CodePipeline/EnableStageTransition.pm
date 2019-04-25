
package Paws::CodePipeline::EnableStageTransition;
  use Moose;
  has PipelineName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pipelineName' , required => 1);
  has StageName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stageName' , required => 1);
  has TransitionType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'transitionType' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableStageTransition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::EnableStageTransition - Arguments for method EnableStageTransition on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableStageTransition on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method EnableStageTransition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableStageTransition.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    $codepipeline->EnableStageTransition(
      PipelineName   => 'MyPipelineName',
      StageName      => 'MyStageName',
      TransitionType => 'Inbound',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/EnableStageTransition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PipelineName => Str

The name of the pipeline in which you want to enable the flow of
artifacts from one stage to another.



=head2 B<REQUIRED> StageName => Str

The name of the stage where you want to enable the transition of
artifacts, either into the stage (inbound) or from that stage to the
next stage (outbound).



=head2 B<REQUIRED> TransitionType => Str

Specifies whether artifacts will be allowed to enter the stage and be
processed by the actions in that stage (inbound) or whether
already-processed artifacts will be allowed to transition to the next
stage (outbound).

Valid values are: C<"Inbound">, C<"Outbound">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableStageTransition in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

