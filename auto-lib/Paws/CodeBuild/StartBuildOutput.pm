# Generated from json/callresult_class.tt

package Paws::CodeBuild::StartBuildOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeBuild::Types qw/CodeBuild_Build/;
  has Build => (is => 'ro', isa => CodeBuild_Build);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Build' => {
                            'type' => 'CodeBuild_Build',
                            'class' => 'Paws::CodeBuild::Build'
                          },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Build' => 'build'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::StartBuildOutput

=head1 ATTRIBUTES


=head2 Build => CodeBuild_Build

Information about the build to be run.


=head2 _request_id => Str


=cut

1;