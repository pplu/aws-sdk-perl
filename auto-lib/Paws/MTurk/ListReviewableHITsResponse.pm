# Generated from json/callresult_class.tt

package Paws::MTurk::ListReviewableHITsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::MTurk::Types qw/MTurk_HIT/;
  has HITs => (is => 'ro', isa => ArrayRef[MTurk_HIT]);
  has NextToken => (is => 'ro', isa => Str);
  has NumResults => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'NumResults' => {
                                 'type' => 'Int'
                               },
               'HITs' => {
                           'class' => 'Paws::MTurk::HIT',
                           'type' => 'ArrayRef[MTurk_HIT]'
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

Paws::MTurk::ListReviewableHITsResponse

=head1 ATTRIBUTES


=head2 HITs => ArrayRef[MTurk_HIT]

The list of HIT elements returned by the query.


=head2 NextToken => Str




=head2 NumResults => Int

The number of HITs on this page in the filtered results list,
equivalent to the number of HITs being returned by this call.


=head2 _request_id => Str


=cut

1;