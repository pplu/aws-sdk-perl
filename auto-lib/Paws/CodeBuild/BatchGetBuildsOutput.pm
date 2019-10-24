# Generated from json/callresult_class.tt

package Paws::CodeBuild::BatchGetBuildsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CodeBuild::Types qw/CodeBuild_Build/;
  has Builds => (is => 'ro', isa => ArrayRef[CodeBuild_Build]);
  has BuildsNotFound => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Builds' => {
                             'class' => 'Paws::CodeBuild::Build',
                             'type' => 'ArrayRef[CodeBuild_Build]'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BuildsNotFound' => {
                                     'type' => 'ArrayRef[Str|Undef]'
                                   }
             },
  'NameInRequest' => {
                       'Builds' => 'builds',
                       'BuildsNotFound' => 'buildsNotFound'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::BatchGetBuildsOutput

=head1 ATTRIBUTES


=head2 Builds => ArrayRef[CodeBuild_Build]

Information about the requested builds.


=head2 BuildsNotFound => ArrayRef[Str|Undef]

The IDs of builds for which information could not be found.


=head2 _request_id => Str


=cut

1;