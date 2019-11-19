# Generated from json/callresult_class.tt

package Paws::CodeCommit::ListRepositoriesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeCommit::Types qw/CodeCommit_RepositoryNameIdPair/;
  has NextToken => (is => 'ro', isa => Str);
  has Repositories => (is => 'ro', isa => ArrayRef[CodeCommit_RepositoryNameIdPair]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Repositories' => 'repositories'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Repositories' => {
                                   'type' => 'ArrayRef[CodeCommit_RepositoryNameIdPair]',
                                   'class' => 'Paws::CodeCommit::RepositoryNameIdPair'
                                 },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::ListRepositoriesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

An enumeration token that allows the operation to batch the results of
the operation. Batch sizes are 1,000 for list repository operations.
When the client sends the token back to AWS CodeCommit, another page of
1,000 records is retrieved.


=head2 Repositories => ArrayRef[CodeCommit_RepositoryNameIdPair]

Lists the repositories called by the list repositories operation.


=head2 _request_id => Str


=cut

1;