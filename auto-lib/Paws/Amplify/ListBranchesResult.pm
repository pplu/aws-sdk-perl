
package Paws::Amplify::ListBranchesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Amplify::Types qw/Amplify_Branch/;
  has Branches => (is => 'ro', isa => ArrayRef[Amplify_Branch], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Branches' => {
                               'class' => 'Paws::Amplify::Branch',
                               'type' => 'ArrayRef[Amplify_Branch]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Branches' => 'branches'
                     },
  'IsRequired' => {
                    'Branches' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::ListBranchesResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Branches => ArrayRef[Amplify_Branch]

List of branches for an Amplify App.


=head2 NextToken => Str

Pagination token. If non-null pagination token is returned in a result,
then pass its value in another request to fetch more entries.


=head2 _request_id => Str


=cut

