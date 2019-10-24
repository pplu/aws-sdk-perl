# Generated from json/callresult_class.tt

package Paws::CodePipeline::PutWebhookOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodePipeline::Types qw/CodePipeline_ListWebhookItem/;
  has Webhook => (is => 'ro', isa => CodePipeline_ListWebhookItem);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Webhook' => {
                              'class' => 'Paws::CodePipeline::ListWebhookItem',
                              'type' => 'CodePipeline_ListWebhookItem'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Webhook' => 'webhook'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::PutWebhookOutput

=head1 ATTRIBUTES


=head2 Webhook => CodePipeline_ListWebhookItem

The detail returned from creating the webhook, such as the webhook
name, webhook URL, and webhook ARN.


=head2 _request_id => Str


=cut

1;