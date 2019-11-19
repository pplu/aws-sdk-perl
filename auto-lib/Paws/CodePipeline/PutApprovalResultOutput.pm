# Generated from json/callresult_class.tt

package Paws::CodePipeline::PutApprovalResultOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodePipeline::Types qw//;
  has ApprovedAt => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApprovedAt' => {
                                 'type' => 'Str'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ApprovedAt' => 'approvedAt'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::PutApprovalResultOutput

=head1 ATTRIBUTES


=head2 ApprovedAt => Str

The timestamp showing when the approval or rejection was submitted.


=head2 _request_id => Str


=cut

1;