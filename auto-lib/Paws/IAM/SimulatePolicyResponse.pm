# Generated from callresult_class.tt

package Paws::IAM::SimulatePolicyResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::IAM::Types qw/IAM_EvaluationResult/;
  has EvaluationResults => (is => 'ro', isa => ArrayRef[IAM_EvaluationResult]);
  has IsTruncated => (is => 'ro', isa => Bool);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
                             'type' => 'Str'
                           },
               'IsTruncated' => {
                                  'type' => 'Bool'
                                },
               'EvaluationResults' => {
                                        'class' => 'Paws::IAM::EvaluationResult',
                                        'type' => 'ArrayRef[IAM_EvaluationResult]'
                                      }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::SimulatePolicyResponse

=head1 ATTRIBUTES


=head2 EvaluationResults => ArrayRef[IAM_EvaluationResult]

The results of the simulation.


=head2 IsTruncated => Bool

A flag that indicates whether there are more items to return. If your
results were truncated, you can make a subsequent pagination request
using the C<Marker> request parameter to retrieve more items. Note that
IAM might return fewer than the C<MaxItems> number of results even when
there are more results available. We recommend that you check
C<IsTruncated> after every call to ensure that you receive all your
results.


=head2 Marker => Str

When C<IsTruncated> is C<true>, this element is present and contains
the value to use for the C<Marker> parameter in a subsequent pagination
request.


=head2 _request_id => Str


=cut

