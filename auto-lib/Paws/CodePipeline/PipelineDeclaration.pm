package Paws::CodePipeline::PipelineDeclaration;
  use Moose;
  has artifactStore => (is => 'ro', isa => 'Paws::CodePipeline::ArtifactStore', required => 1);
  has name => (is => 'ro', isa => 'Str', required => 1);
  has roleArn => (is => 'ro', isa => 'Str', required => 1);
  has stages => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::StageDeclaration]', required => 1);
  has version => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::PipelineDeclaration

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::PipelineDeclaration object:

  $service_obj->Method(Att1 => { artifactStore => $value, ..., version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::PipelineDeclaration object:

  $result = $service_obj->Method(...);
  $result->Att1->artifactStore

=head1 ATTRIBUTES

=head2 B<REQUIRED> artifactStore => Paws::CodePipeline::ArtifactStore

  

=head2 B<REQUIRED> name => Str

  The name of the action to be performed.

=head2 B<REQUIRED> roleArn => Str

  The Amazon Resource Name (ARN) for AWS CodePipeline to use to either
perform actions with no actionRoleArn, or to use to assume roles for
actions with an actionRoleArn.

=head2 B<REQUIRED> stages => ArrayRef[Paws::CodePipeline::StageDeclaration]

  The stage in which to perform the action.

=head2 version => Int

  The version number of the pipeline. A new pipeline always has a version
number of 1. This number is automatically incremented when a pipeline
is updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

