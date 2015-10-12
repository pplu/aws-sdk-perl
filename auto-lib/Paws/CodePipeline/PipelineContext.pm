package Paws::CodePipeline::PipelineContext;
  use Moose;
  has action => (is => 'ro', isa => 'Paws::CodePipeline::ActionContext');
  has pipelineName => (is => 'ro', isa => 'Str');
  has stage => (is => 'ro', isa => 'Paws::CodePipeline::StageContext');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::PipelineContext

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::PipelineContext object:

  $service_obj->Method(Att1 => { action => $value, ..., stage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::PipelineContext object:

  $result = $service_obj->Method(...);
  $result->Att1->action

=head1 ATTRIBUTES

=head2 action => L<Paws::CodePipeline::ActionContext>

  

=head2 pipelineName => Str

  The name of the pipeline. This is a user-specified value. Pipeline
names must be unique across all pipeline names under an Amazon Web
Services account.

=head2 stage => L<Paws::CodePipeline::StageContext>

  The stage of the pipeline.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

