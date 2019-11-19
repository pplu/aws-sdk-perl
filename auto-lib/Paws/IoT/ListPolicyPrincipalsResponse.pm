
package Paws::IoT::ListPolicyPrincipalsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::IoT::Types qw//;
  has NextMarker => (is => 'ro', isa => Str);
  has Principals => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Principals' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'NextMarker' => {
                                 'type' => 'Str'
                               }
             },
  'NameInRequest' => {
                       'NextMarker' => 'nextMarker',
                       'Principals' => 'principals'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListPolicyPrincipalsResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

The marker for the next set of results, or null if there are no
additional results.


=head2 Principals => ArrayRef[Str|Undef]

The descriptions of the principals.


=head2 _request_id => Str


=cut

