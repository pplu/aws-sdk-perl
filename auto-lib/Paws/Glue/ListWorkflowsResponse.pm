# Generated from json/callresult_class.tt

package Paws::Glue::ListWorkflowsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Glue::Types qw//;
  has NextToken => (is => 'ro', isa => Str);
  has Workflows => (is => 'ro', isa => ArrayRef[Str|Undef]);

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
               'Workflows' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListWorkflowsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A continuation token, if not all workflow names have been returned.


=head2 Workflows => ArrayRef[Str|Undef]

List of names of workflows in the account.


=head2 _request_id => Str


=cut

1;