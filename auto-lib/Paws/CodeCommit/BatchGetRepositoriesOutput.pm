# Generated from json/callresult_class.tt

package Paws::CodeCommit::BatchGetRepositoriesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CodeCommit::Types qw/CodeCommit_RepositoryMetadata/;
  has Repositories => (is => 'ro', isa => ArrayRef[CodeCommit_RepositoryMetadata]);
  has RepositoriesNotFound => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Repositories' => 'repositories',
                       'RepositoriesNotFound' => 'repositoriesNotFound'
                     },
  'types' => {
               'Repositories' => {
                                   'class' => 'Paws::CodeCommit::RepositoryMetadata',
                                   'type' => 'ArrayRef[CodeCommit_RepositoryMetadata]'
                                 },
               'RepositoriesNotFound' => {
                                           'type' => 'ArrayRef[Str|Undef]'
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

Paws::CodeCommit::BatchGetRepositoriesOutput

=head1 ATTRIBUTES


=head2 Repositories => ArrayRef[CodeCommit_RepositoryMetadata]

A list of repositories returned by the batch get repositories
operation.


=head2 RepositoriesNotFound => ArrayRef[Str|Undef]

Returns a list of repository names for which information could not be
found.


=head2 _request_id => Str


=cut

1;