# Generated from json/callresult_class.tt

package Paws::CodeBuild::UpdateProjectOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeBuild::Types qw/CodeBuild_Project/;
  has Project => (is => 'ro', isa => CodeBuild_Project);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Project' => 'project'
                     },
  'types' => {
               'Project' => {
                              'type' => 'CodeBuild_Project',
                              'class' => 'Paws::CodeBuild::Project'
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

Paws::CodeBuild::UpdateProjectOutput

=head1 ATTRIBUTES


=head2 Project => CodeBuild_Project

Information about the build project that was changed.


=head2 _request_id => Str


=cut

1;