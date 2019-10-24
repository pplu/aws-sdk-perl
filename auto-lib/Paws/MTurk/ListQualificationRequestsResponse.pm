# Generated from json/callresult_class.tt

package Paws::MTurk::ListQualificationRequestsResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::MTurk::Types qw/MTurk_QualificationRequest/;
  has NextToken => (is => 'ro', isa => Str);
  has NumResults => (is => 'ro', isa => Int);
  has QualificationRequests => (is => 'ro', isa => ArrayRef[MTurk_QualificationRequest]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'QualificationRequests' => {
                                            'class' => 'Paws::MTurk::QualificationRequest',
                                            'type' => 'ArrayRef[MTurk_QualificationRequest]'
                                          },
               'NumResults' => {
                                 'type' => 'Int'
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

Paws::MTurk::ListQualificationRequestsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 NumResults => Int

The number of Qualification requests on this page in the filtered
results list, equivalent to the number of Qualification requests being
returned by this call.


=head2 QualificationRequests => ArrayRef[MTurk_QualificationRequest]

The Qualification request. The response includes one
QualificationRequest element for each Qualification request returned by
the query.


=head2 _request_id => Str


=cut

1;