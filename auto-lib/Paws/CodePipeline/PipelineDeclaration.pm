# Generated from default/object.tt
package Paws::CodePipeline::PipelineDeclaration;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::CodePipeline::Types qw/CodePipeline_ArtifactStore CodePipeline_StageDeclaration CodePipeline_ArtifactStoreMap/;
  has ArtifactStore => (is => 'ro', isa => CodePipeline_ArtifactStore);
  has ArtifactStores => (is => 'ro', isa => CodePipeline_ArtifactStoreMap);
  has Name => (is => 'ro', isa => Str, required => 1);
  has RoleArn => (is => 'ro', isa => Str, required => 1);
  has Stages => (is => 'ro', isa => ArrayRef[CodePipeline_StageDeclaration], required => 1);
  has Version => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Stages' => {
                             'class' => 'Paws::CodePipeline::StageDeclaration',
                             'type' => 'ArrayRef[CodePipeline_StageDeclaration]'
                           },
               'ArtifactStore' => {
                                    'class' => 'Paws::CodePipeline::ArtifactStore',
                                    'type' => 'CodePipeline_ArtifactStore'
                                  },
               'Version' => {
                              'type' => 'Int'
                            },
               'Name' => {
                           'type' => 'Str'
                         },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'ArtifactStores' => {
                                     'type' => 'CodePipeline_ArtifactStoreMap',
                                     'class' => 'Paws::CodePipeline::ArtifactStoreMap'
                                   }
             },
  'NameInRequest' => {
                       'Version' => 'version',
                       'Name' => 'name',
                       'RoleArn' => 'roleArn',
                       'ArtifactStore' => 'artifactStore',
                       'Stages' => 'stages',
                       'ArtifactStores' => 'artifactStores'
                     },
  'IsRequired' => {
                    'Stages' => 1,
                    'Name' => 1,
                    'RoleArn' => 1
                  }
}
;
    return $Params_map;
  }


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


=head2 ArtifactStore => CodePipeline_ArtifactStore

  Represents information about the Amazon S3 bucket where artifacts are
stored for the pipeline.

You must include either C<artifactStore> or C<artifactStores> in your
pipeline, but you cannot use both. If you create a cross-region action
in your pipeline, you must use C<artifactStores>.


=head2 ArtifactStores => CodePipeline_ArtifactStoreMap

  A mapping of C<artifactStore> objects and their corresponding AWS
Regions. There must be an artifact store for the pipeline Region and
for each cross-region action in the pipeline.

You must include either C<artifactStore> or C<artifactStores> in your
pipeline, but you cannot use both. If you create a cross-region action
in your pipeline, you must use C<artifactStores>.


=head2 B<REQUIRED> Name => Str

  The name of the action to be performed.


=head2 B<REQUIRED> RoleArn => Str

  The Amazon Resource Name (ARN) for AWS CodePipeline to use to either
perform actions with no C<actionRoleArn>, or to use to assume roles for
actions with an C<actionRoleArn>.


=head2 B<REQUIRED> Stages => ArrayRef[CodePipeline_StageDeclaration]

  The stage in which to perform the action.


=head2 Version => Int

  The version number of the pipeline. A new pipeline always has a version
number of 1. This number is incremented when a pipeline is updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

