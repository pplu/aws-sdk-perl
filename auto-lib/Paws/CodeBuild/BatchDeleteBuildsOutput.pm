# Generated from json/callresult_class.tt

package Paws::CodeBuild::BatchDeleteBuildsOutput;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::CodeBuild::Types qw/CodeBuild_BuildNotDeleted/;
  has BuildsDeleted => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has BuildsNotDeleted => (is => 'ro', isa => ArrayRef[CodeBuild_BuildNotDeleted]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BuildsDeleted' => {
                                    'type' => 'ArrayRef[Str|Undef]'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'BuildsNotDeleted' => {
                                       'type' => 'ArrayRef[CodeBuild_BuildNotDeleted]',
                                       'class' => 'Paws::CodeBuild::BuildNotDeleted'
                                     }
             },
  'NameInRequest' => {
                       'BuildsNotDeleted' => 'buildsNotDeleted',
                       'BuildsDeleted' => 'buildsDeleted'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::BatchDeleteBuildsOutput

=head1 ATTRIBUTES


=head2 BuildsDeleted => ArrayRef[Str|Undef]

The IDs of the builds that were successfully deleted.


=head2 BuildsNotDeleted => ArrayRef[CodeBuild_BuildNotDeleted]

Information about any builds that could not be successfully deleted.


=head2 _request_id => Str


=cut

1;