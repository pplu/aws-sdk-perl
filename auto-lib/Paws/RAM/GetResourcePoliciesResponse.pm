
package Paws::RAM::GetResourcePoliciesResponse;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::RAM::Types qw//;
  has NextToken => (is => 'ro', isa => Str);
  has Policies => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Policies' => 'policies'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Policies' => {
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

Paws::RAM::GetResourcePoliciesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 Policies => ArrayRef[Str|Undef]

A key policy document, in JSON format.


=head2 _request_id => Str


=cut

