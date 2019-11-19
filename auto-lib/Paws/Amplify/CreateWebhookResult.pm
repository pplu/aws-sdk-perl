
package Paws::Amplify::CreateWebhookResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Amplify::Types qw/Amplify_Webhook/;
  has Webhook => (is => 'ro', isa => Amplify_Webhook, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Webhook' => 1
                  },
  'NameInRequest' => {
                       'Webhook' => 'webhook'
                     },
  'types' => {
               'Webhook' => {
                              'class' => 'Paws::Amplify::Webhook',
                              'type' => 'Amplify_Webhook'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::CreateWebhookResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Webhook => Amplify_Webhook

Webhook structure.


=head2 _request_id => Str


=cut

