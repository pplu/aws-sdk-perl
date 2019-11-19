# Generated from json/callresult_class.tt

package Paws::CodeBuild::BatchGetProjectsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CodeBuild::Types qw/CodeBuild_Project/;
  has Projects => (is => 'ro', isa => ArrayRef[CodeBuild_Project]);
  has ProjectsNotFound => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Projects' => 'projects',
                       'ProjectsNotFound' => 'projectsNotFound'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ProjectsNotFound' => {
                                       'type' => 'ArrayRef[Str|Undef]'
                                     },
               'Projects' => {
                               'class' => 'Paws::CodeBuild::Project',
                               'type' => 'ArrayRef[CodeBuild_Project]'
                             }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::BatchGetProjectsOutput

=head1 ATTRIBUTES


=head2 Projects => ArrayRef[CodeBuild_Project]

Information about the requested build projects.


=head2 ProjectsNotFound => ArrayRef[Str|Undef]

The names of build projects for which information could not be found.


=head2 _request_id => Str


=cut

1;