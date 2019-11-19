# Generated from json/callresult_class.tt

package Paws::CloudHSMv2::InitializeClusterResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudHSMv2::Types qw//;
  has State => (is => 'ro', isa => Str);
  has StateMessage => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'State' => {
                            'type' => 'Str'
                          },
               'StateMessage' => {
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

Paws::CloudHSMv2::InitializeClusterResponse

=head1 ATTRIBUTES


=head2 State => Str

The cluster's state.

Valid values are: C<"CREATE_IN_PROGRESS">, C<"UNINITIALIZED">, C<"INITIALIZE_IN_PROGRESS">, C<"INITIALIZED">, C<"ACTIVE">, C<"UPDATE_IN_PROGRESS">, C<"DELETE_IN_PROGRESS">, C<"DELETED">, C<"DEGRADED">
=head2 StateMessage => Str

A description of the cluster's state.


=head2 _request_id => Str


=cut

1;