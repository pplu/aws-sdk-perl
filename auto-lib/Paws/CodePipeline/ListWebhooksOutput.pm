# Generated from json/callresult_class.tt

package Paws::CodePipeline::ListWebhooksOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodePipeline::Types qw/CodePipeline_ListWebhookItem/;
  has NextToken => (is => 'ro', isa => Str);
  has Webhooks => (is => 'ro', isa => ArrayRef[CodePipeline_ListWebhookItem]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Webhooks' => {
                               'class' => 'Paws::CodePipeline::ListWebhookItem',
                               'type' => 'ArrayRef[CodePipeline_ListWebhookItem]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'Webhooks' => 'webhooks'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ListWebhooksOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the amount of returned information is significantly large, an
identifier is also returned and can be used in a subsequent
ListWebhooks call to return the next set of webhooks in the list.


=head2 Webhooks => ArrayRef[CodePipeline_ListWebhookItem]

The JSON detail returned for each webhook in the list output for the
ListWebhooks call.


=head2 _request_id => Str


=cut

1;