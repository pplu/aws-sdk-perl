# Generated from json/callresult_class.tt

package Paws::CodeBuild::ListCuratedEnvironmentImagesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeBuild::Types qw/CodeBuild_EnvironmentPlatform/;
  has Platforms => (is => 'ro', isa => ArrayRef[CodeBuild_EnvironmentPlatform]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Platforms' => 'platforms'
                     },
  'types' => {
               'Platforms' => {
                                'class' => 'Paws::CodeBuild::EnvironmentPlatform',
                                'type' => 'ArrayRef[CodeBuild_EnvironmentPlatform]'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ListCuratedEnvironmentImagesOutput

=head1 ATTRIBUTES


=head2 Platforms => ArrayRef[CodeBuild_EnvironmentPlatform]

Information about supported platforms for Docker images that are
managed by AWS CodeBuild.


=head2 _request_id => Str


=cut

1;