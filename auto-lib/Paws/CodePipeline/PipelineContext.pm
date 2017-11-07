package Paws::CodePipeline::PipelineContext;
  use Moose;
  has Action => (is => 'ro', isa => 'Paws::CodePipeline::ActionContext', request_name => 'action', traits => ['NameInRequest']);
  has PipelineName => (is => 'ro', isa => 'Str', request_name => 'pipelineName', traits => ['NameInRequest']);
  has Stage => (is => 'ro', isa => 'Paws::CodePipeline::StageContext', request_name => 'stage', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::PipelineContext

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::PipelineContext object:

  $service_obj->Method(Att1 => { Action => $value, ..., Stage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::PipelineContext object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Represents information about a pipeline to a job worker.

=head1 ATTRIBUTES


=head2 Action => L<Paws::CodePipeline::ActionContext>

  The context of an action to a job worker within the stage of a
pipeline.


=head2 PipelineName => Str

  The name of the pipeline. This is a user-specified value. Pipeline
names must be unique across all pipeline names under an Amazon Web
Services account.


=head2 Stage => L<Paws::CodePipeline::StageContext>

  The stage of the pipeline.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

