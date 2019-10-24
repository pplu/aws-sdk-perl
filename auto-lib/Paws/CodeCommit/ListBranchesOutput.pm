# Generated from json/callresult_class.tt

package Paws::CodeCommit::ListBranchesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CodeCommit::Types qw//;
  has Branches => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Branches' => {
                               'type' => 'ArrayRef[Str|Undef]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Branches' => 'branches'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::ListBranchesOutput

=head1 ATTRIBUTES


=head2 Branches => ArrayRef[Str|Undef]

The list of branch names.


=head2 NextToken => Str

An enumeration token that returns the batch of the results.


=head2 _request_id => Str


=cut

1;