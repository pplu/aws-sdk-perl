# Generated from default/object.tt
package Paws::CodePipeline::ArtifactDetail;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodePipeline::Types qw/CodePipeline_S3Location/;
  has Name => (is => 'ro', isa => Str);
  has S3location => (is => 'ro', isa => CodePipeline_S3Location);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'S3location' => {
                                 'class' => 'Paws::CodePipeline::S3Location',
                                 'type' => 'CodePipeline_S3Location'
                               }
             },
  'NameInRequest' => {
                       'Name' => 'name',
                       'S3location' => 's3location'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ArtifactDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ArtifactDetail object:

  $service_obj->Method(Att1 => { Name => $value, ..., S3location => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ArtifactDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Artifact details for the action execution, such as the artifact
location.

=head1 ATTRIBUTES


=head2 Name => Str

  The artifact object name for the action execution.


=head2 S3location => CodePipeline_S3Location

  The Amazon S3 artifact location for the action execution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

