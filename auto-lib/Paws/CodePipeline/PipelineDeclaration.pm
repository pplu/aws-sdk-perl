package Paws::CodePipeline::PipelineDeclaration;
  use Moose;
  has ArtifactStore => (is => 'ro', isa => 'Paws::CodePipeline::ArtifactStore', request_name => 'artifactStore', traits => ['NameInRequest']);
  has ArtifactStores => (is => 'ro', isa => 'Paws::CodePipeline::ArtifactStoreMap', request_name => 'artifactStores', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest'], required => 1);
  has Stages => (is => 'ro', isa => 'ArrayRef[Paws::CodePipeline::StageDeclaration]', request_name => 'stages', traits => ['NameInRequest'], required => 1);
  has Version => (is => 'ro', isa => 'Int', request_name => 'version', traits => ['NameInRequest']);
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


=head2 ArtifactStore => L<Paws::CodePipeline::ArtifactStore>

  Represents information about the Amazon S3 bucket where artifacts are
stored for the pipeline.


=head2 ArtifactStores => L<Paws::CodePipeline::ArtifactStoreMap>

  A mapping of artifactStore objects and their corresponding regions.
There must be an artifact store for the pipeline region and for each
cross-region action within the pipeline. You can only use either
artifactStore or artifactStores, not both.

If you create a cross-region action in your pipeline, you must use
artifactStores.


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

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

