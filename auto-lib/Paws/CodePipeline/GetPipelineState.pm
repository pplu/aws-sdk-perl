
package Paws::CodePipeline::GetPipelineState;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPipelineState');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodePipeline::GetPipelineStateOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::GetPipelineState - Arguments for method GetPipelineState on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPipelineState on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method GetPipelineState.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPipelineState.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $GetPipelineStateOutput = $codepipeline->GetPipelineState(
      Name => 'MyPipelineName',

    );

    # Results:
    my $Created         = $GetPipelineStateOutput->Created;
    my $PipelineName    = $GetPipelineStateOutput->PipelineName;
    my $PipelineVersion = $GetPipelineStateOutput->PipelineVersion;
    my $StageStates     = $GetPipelineStateOutput->StageStates;
    my $Updated         = $GetPipelineStateOutput->Updated;

    # Returns a L<Paws::CodePipeline::GetPipelineStateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/GetPipelineState>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the pipeline about which you want to get information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPipelineState in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

