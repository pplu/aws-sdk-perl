# Generated from json/callresult_class.tt

package Paws::MTurk::ListWorkerBlocksResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::MTurk::Types qw/MTurk_WorkerBlock/;
  has NextToken => (is => 'ro', isa => Str);
  has NumResults => (is => 'ro', isa => Int);
  has WorkerBlocks => (is => 'ro', isa => ArrayRef[MTurk_WorkerBlock]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NumResults' => {
                                 'type' => 'Int'
                               },
               'WorkerBlocks' => {
                                   'class' => 'Paws::MTurk::WorkerBlock',
                                   'type' => 'ArrayRef[MTurk_WorkerBlock]'
                                 },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MTurk::ListWorkerBlocksResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 NumResults => Int

The number of assignments on the page in the filtered results list,
equivalent to the number of assignments returned by this call.


=head2 WorkerBlocks => ArrayRef[MTurk_WorkerBlock]

The list of WorkerBlocks, containing the collection of Worker IDs and
reasons for blocking.


=head2 _request_id => Str


=cut

1;