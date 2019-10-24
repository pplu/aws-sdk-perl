
package Paws::MediaConnect::ListFlowsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaConnect::Types qw/MediaConnect_ListedFlow/;
  has Flows => (is => 'ro', isa => ArrayRef[MediaConnect_ListedFlow]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Flows' => {
                            'class' => 'Paws::MediaConnect::ListedFlow',
                            'type' => 'ArrayRef[MediaConnect_ListedFlow]'
                          },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Flows' => 'flows',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::ListFlowsResponse

=head1 ATTRIBUTES


=head2 Flows => ArrayRef[MediaConnect_ListedFlow]

A list of flow summaries.


=head2 NextToken => Str

The token that identifies which batch of results that you want to see.
For example, you submit a ListFlows request with MaxResults set at 5.
The service returns the first batch of results (up to 5) and a
NextToken value. To see the next batch of results, you can submit the
ListFlows request a second time and specify the NextToken value.


=head2 _request_id => Str


=cut

