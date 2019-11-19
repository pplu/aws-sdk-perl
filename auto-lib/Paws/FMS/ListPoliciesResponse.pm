# Generated from json/callresult_class.tt

package Paws::FMS::ListPoliciesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::FMS::Types qw/FMS_PolicySummary/;
  has NextToken => (is => 'ro', isa => Str);
  has PolicyList => (is => 'ro', isa => ArrayRef[FMS_PolicySummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PolicyList' => {
                                 'class' => 'Paws::FMS::PolicySummary',
                                 'type' => 'ArrayRef[FMS_PolicySummary]'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::FMS::ListPoliciesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If you have more C<PolicySummary> objects than the number that you
specified for C<MaxResults> in the request, the response includes a
C<NextToken> value. To list more C<PolicySummary> objects, submit
another C<ListPolicies> request, and specify the C<NextToken> value
from the response in the C<NextToken> value in the next request.


=head2 PolicyList => ArrayRef[FMS_PolicySummary]

An array of C<PolicySummary> objects.


=head2 _request_id => Str


=cut

1;