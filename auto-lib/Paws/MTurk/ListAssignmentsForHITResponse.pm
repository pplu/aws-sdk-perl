# Generated from json/callresult_class.tt

package Paws::MTurk::ListAssignmentsForHITResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::MTurk::Types qw/MTurk_Assignment/;
  has Assignments => (is => 'ro', isa => ArrayRef[MTurk_Assignment]);
  has NextToken => (is => 'ro', isa => Str);
  has NumResults => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Assignments' => {
                                  'class' => 'Paws::MTurk::Assignment',
                                  'type' => 'ArrayRef[MTurk_Assignment]'
                                },
               'NextToken' => {
                                'type' => 'Str'
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

Paws::MTurk::ListAssignmentsForHITResponse

=head1 ATTRIBUTES


=head2 Assignments => ArrayRef[MTurk_Assignment]

The collection of Assignment data structures returned by this call.


=head2 NextToken => Str




=head2 NumResults => Int

The number of assignments on the page in the filtered results list,
equivalent to the number of assignments returned by this call.


=head2 _request_id => Str


=cut

1;