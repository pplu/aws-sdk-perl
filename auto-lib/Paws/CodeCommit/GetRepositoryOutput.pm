# Generated from json/callresult_class.tt

package Paws::CodeCommit::GetRepositoryOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw/CodeCommit_RepositoryMetadata/;
  has RepositoryMetadata => (is => 'ro', isa => CodeCommit_RepositoryMetadata);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RepositoryMetadata' => {
                                         'class' => 'Paws::CodeCommit::RepositoryMetadata',
                                         'type' => 'CodeCommit_RepositoryMetadata'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'RepositoryMetadata' => 'repositoryMetadata'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetRepositoryOutput

=head1 ATTRIBUTES


=head2 RepositoryMetadata => CodeCommit_RepositoryMetadata

Information about the repository.


=head2 _request_id => Str


=cut

1;