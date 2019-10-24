# Generated from json/callresult_class.tt

package Paws::SSM::DescribeOpsItemsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SSM::Types qw/SSM_OpsItemSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has OpsItemSummaries => (is => 'ro', isa => ArrayRef[SSM_OpsItemSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'OpsItemSummaries' => {
                                       'class' => 'Paws::SSM::OpsItemSummary',
                                       'type' => 'ArrayRef[SSM_OpsItemSummary]'
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

Paws::SSM::DescribeOpsItemsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 OpsItemSummaries => ArrayRef[SSM_OpsItemSummary]

A list of OpsItems.


=head2 _request_id => Str


=cut

1;