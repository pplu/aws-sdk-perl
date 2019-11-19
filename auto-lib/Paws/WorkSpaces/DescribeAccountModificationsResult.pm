# Generated from json/callresult_class.tt

package Paws::WorkSpaces::DescribeAccountModificationsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkSpaces::Types qw/WorkSpaces_AccountModification/;
  has AccountModifications => (is => 'ro', isa => ArrayRef[WorkSpaces_AccountModification]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AccountModifications' => {
                                           'type' => 'ArrayRef[WorkSpaces_AccountModification]',
                                           'class' => 'Paws::WorkSpaces::AccountModification'
                                         },
               'NextToken' => {
                                'type' => 'Str'
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

Paws::WorkSpaces::DescribeAccountModificationsResult

=head1 ATTRIBUTES


=head2 AccountModifications => ArrayRef[WorkSpaces_AccountModification]

The list of modifications to the configuration of BYOL.


=head2 NextToken => Str

The token to use to retrieve the next set of results, or null if no
more results are available.


=head2 _request_id => Str


=cut

1;