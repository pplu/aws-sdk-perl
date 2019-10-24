# Generated from json/callresult_class.tt

package Paws::SSM::SendCommandResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw/SSM_Command/;
  has Command => (is => 'ro', isa => SSM_Command);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Command' => {
                              'class' => 'Paws::SSM::Command',
                              'type' => 'SSM_Command'
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

Paws::SSM::SendCommandResult

=head1 ATTRIBUTES


=head2 Command => SSM_Command

The request as it was received by Systems Manager. Also provides the
command ID which can be used future references to this request.


=head2 _request_id => Str


=cut

1;