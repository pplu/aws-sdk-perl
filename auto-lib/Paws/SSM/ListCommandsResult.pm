# Generated from json/callresult_class.tt

package Paws::SSM::ListCommandsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_Command/;
  has Commands => (is => 'ro', isa => ArrayRef[SSM_Command]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Commands' => {
                               'class' => 'Paws::SSM::Command',
                               'type' => 'ArrayRef[SSM_Command]'
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

Paws::SSM::ListCommandsResult

=head1 ATTRIBUTES


=head2 Commands => ArrayRef[SSM_Command]

(Optional) The list of commands requested by the user.


=head2 NextToken => Str

(Optional) The token for the next set of items to return. (You received
this token from a previous call.)


=head2 _request_id => Str


=cut

1;