# Generated from json/callresult_class.tt

package Paws::SSM::ListAssociationsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_Association/;
  has Associations => (is => 'ro', isa => ArrayRef[SSM_Association]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Associations' => {
                                   'class' => 'Paws::SSM::Association',
                                   'type' => 'ArrayRef[SSM_Association]'
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

Paws::SSM::ListAssociationsResult

=head1 ATTRIBUTES


=head2 Associations => ArrayRef[SSM_Association]

The associations.


=head2 NextToken => Str

The token to use when requesting the next set of items. If there are no
additional items to return, the string is empty.


=head2 _request_id => Str


=cut

1;