package Paws::CodePipeline::PipelineDeclaration;
  use Moose;
  has ArtifactStore => (is => 'ro', isa => 'Paws::CodePipeline::ArtifactStore', xmlname => 'artifactStore', request_name => 'artifactStore', traits => ['Unwrapped','NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', xmlname => 'name', request_name => 'name', traits => ['Unwrapped','NameInRequest'], required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', xmlname => 'roleArn', request_name => 'roleArn', traits => ['Unwrapped','NameInRequest'], required => 1);
  has Stages => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::StageDeclaration]', xmlname => 'stages', request_name => 'stages', traits => ['Unwrapped','NameInRequest'], required => 1);
  has Version => (is => 'ro', isa => 'Int', xmlname => 'version', request_name => 'version', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::PipelineDeclaration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::PipelineDeclaration object:

  $service_obj->Method(Att1 => { ArtifactStore => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::PipelineDeclaration object:

  $result = $service_obj->Method(...);
  $result->Att1->ArtifactStore

=head1 DESCRIPTION

Represents the structure of actions and stages to be performed in the
pipeline.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ArtifactStore => L<Paws::CodePipeline::ArtifactStore>

  


=head2 B<REQUIRED> Name => Str

  The name of the action to be performed.


=head2 B<REQUIRED> RoleArn => Str

  The Amazon Resource Name (ARN) for AWS CodePipeline to use to either
perform actions with no actionRoleArn, or to use to assume roles for
actions with an actionRoleArn.


=head2 B<REQUIRED> Stages => ArrayRef[L<Paws::CodePipeline::StageDeclaration>]

  The stage in which to perform the action.


=head2 Version => Int

  The version number of the pipeline. A new pipeline always has a version
number of 1. This number is automatically incremented when a pipeline
is updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

