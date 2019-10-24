# Generated from json/callresult_class.tt

package Paws::CodeCommit::DeleteRepositoryOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw//;
  has RepositoryId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RepositoryId' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'RepositoryId' => 'repositoryId'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::DeleteRepositoryOutput

=head1 ATTRIBUTES


=head2 RepositoryId => Str

The ID of the repository that was deleted.


=head2 _request_id => Str


=cut

1;