
package Paws::IoT::ListPoliciesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_Policy/;
  has NextMarker => (is => 'ro', isa => Str);
  has Policies => (is => 'ro', isa => ArrayRef[IoT_Policy]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextMarker' => 'nextMarker',
                       'Policies' => 'policies'
                     },
  'types' => {
               'NextMarker' => {
                                 'type' => 'Str'
                               },
               'Policies' => {
                               'type' => 'ArrayRef[IoT_Policy]',
                               'class' => 'Paws::IoT::Policy'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListPoliciesResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

The marker for the next set of results, or null if there are no
additional results.


=head2 Policies => ArrayRef[IoT_Policy]

The descriptions of the policies.


=head2 _request_id => Str


=cut

