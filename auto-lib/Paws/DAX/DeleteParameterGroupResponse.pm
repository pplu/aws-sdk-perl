# Generated from json/callresult_class.tt

package Paws::DAX::DeleteParameterGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DAX::Types qw//;
  has DeletionMessage => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DeletionMessage' => {
                                      'type' => 'Str'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DAX::DeleteParameterGroupResponse

=head1 ATTRIBUTES


=head2 DeletionMessage => Str

A user-specified message for this action (i.e., a reason for deleting
the parameter group).


=head2 _request_id => Str


=cut

1;