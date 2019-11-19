
package Paws::IoT::ListTargetsForPolicyResponse;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::IoT::Types qw//;
  has NextMarker => (is => 'ro', isa => Str);
  has Targets => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextMarker' => 'nextMarker',
                       'Targets' => 'targets'
                     },
  'types' => {
               'NextMarker' => {
                                 'type' => 'Str'
                               },
               'Targets' => {
                              'type' => 'ArrayRef[Str|Undef]'
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

Paws::IoT::ListTargetsForPolicyResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

A marker used to get the next set of results.


=head2 Targets => ArrayRef[Str|Undef]

The policy targets.


=head2 _request_id => Str


=cut

