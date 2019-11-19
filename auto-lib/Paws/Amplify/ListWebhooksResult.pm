
package Paws::Amplify::ListWebhooksResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Amplify::Types qw/Amplify_Webhook/;
  has NextToken => (is => 'ro', isa => Str);
  has Webhooks => (is => 'ro', isa => ArrayRef[Amplify_Webhook], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Webhooks' => 'webhooks'
                     },
  'IsRequired' => {
                    'Webhooks' => 1
                  },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Webhooks' => {
                               'type' => 'ArrayRef[Amplify_Webhook]',
                               'class' => 'Paws::Amplify::Webhook'
                             }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::ListWebhooksResult

=head1 ATTRIBUTES


=head2 NextToken => Str

Pagination token. If non-null pagination token is returned in a result,
then pass its value in another request to fetch more entries.


=head2 B<REQUIRED> Webhooks => ArrayRef[Amplify_Webhook]

List of webhooks.


=head2 _request_id => Str


=cut

