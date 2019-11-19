# Generated from default/object.tt
package Paws::Amplify::Webhook;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Amplify::Types qw//;
  has BranchName => (is => 'ro', isa => Str, required => 1);
  has CreateTime => (is => 'ro', isa => Str, required => 1);
  has Description => (is => 'ro', isa => Str, required => 1);
  has UpdateTime => (is => 'ro', isa => Str, required => 1);
  has WebhookArn => (is => 'ro', isa => Str, required => 1);
  has WebhookId => (is => 'ro', isa => Str, required => 1);
  has WebhookUrl => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'BranchName' => 'branchName',
                       'Description' => 'description',
                       'WebhookUrl' => 'webhookUrl',
                       'WebhookId' => 'webhookId',
                       'WebhookArn' => 'webhookArn',
                       'UpdateTime' => 'updateTime',
                       'CreateTime' => 'createTime'
                     },
  'IsRequired' => {
                    'CreateTime' => 1,
                    'UpdateTime' => 1,
                    'WebhookArn' => 1,
                    'WebhookId' => 1,
                    'WebhookUrl' => 1,
                    'Description' => 1,
                    'BranchName' => 1
                  },
  'types' => {
               'WebhookArn' => {
                                 'type' => 'Str'
                               },
               'WebhookId' => {
                                'type' => 'Str'
                              },
               'UpdateTime' => {
                                 'type' => 'Str'
                               },
               'CreateTime' => {
                                 'type' => 'Str'
                               },
               'Description' => {
                                  'type' => 'Str'
                                },
               'BranchName' => {
                                 'type' => 'Str'
                               },
               'WebhookUrl' => {
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

Paws::Amplify::Webhook

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Amplify::Webhook object:

  $service_obj->Method(Att1 => { BranchName => $value, ..., WebhookUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Amplify::Webhook object:

  $result = $service_obj->Method(...);
  $result->Att1->BranchName

=head1 DESCRIPTION

Structure for webhook, which associates a webhook with an Amplify App.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BranchName => Str

  Name for a branch, part of an Amplify App.


=head2 B<REQUIRED> CreateTime => Str

  Create date / time for a webhook.


=head2 B<REQUIRED> Description => Str

  Description for a webhook.


=head2 B<REQUIRED> UpdateTime => Str

  Update date / time for a webhook.


=head2 B<REQUIRED> WebhookArn => Str

  ARN for the webhook.


=head2 B<REQUIRED> WebhookId => Str

  Id of the webhook.


=head2 B<REQUIRED> WebhookUrl => Str

  Url of the webhook.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

