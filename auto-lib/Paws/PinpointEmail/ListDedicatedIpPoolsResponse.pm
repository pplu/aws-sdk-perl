
package Paws::PinpointEmail::ListDedicatedIpPoolsResponse;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::PinpointEmail::Types qw//;
  has DedicatedIpPools => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DedicatedIpPools' => {
                                       'type' => 'ArrayRef[Str|Undef]'
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

1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::ListDedicatedIpPoolsResponse

=head1 ATTRIBUTES


=head2 DedicatedIpPools => ArrayRef[Str|Undef]

A list of all of the dedicated IP pools that are associated with your
Amazon Pinpoint account.


=head2 NextToken => Str

A token that indicates that there are additional IP pools to list. To
view additional IP pools, issue another request to
C<ListDedicatedIpPools>, passing this token in the C<NextToken>
parameter.


=head2 _request_id => Str


=cut

