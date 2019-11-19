
package Paws::Greengrass::GetSubscriptionDefinitionVersionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw/Greengrass_SubscriptionDefinitionVersion/;
  has Arn => (is => 'ro', isa => Str);
  has CreationTimestamp => (is => 'ro', isa => Str);
  has Definition => (is => 'ro', isa => Greengrass_SubscriptionDefinitionVersion);
  has Id => (is => 'ro', isa => Str);
  has NextToken => (is => 'ro', isa => Str);
  has Version => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CreationTimestamp' => {
                                        'type' => 'Str'
                                      },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Id' => {
                         'type' => 'Str'
                       },
               'Definition' => {
                                 'class' => 'Paws::Greengrass::SubscriptionDefinitionVersion',
                                 'type' => 'Greengrass_SubscriptionDefinitionVersion'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Version' => {
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

Paws::Greengrass::GetSubscriptionDefinitionVersionResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the subscription definition version.


=head2 CreationTimestamp => Str

The time, in milliseconds since the epoch, when the subscription
definition version was created.


=head2 Definition => Greengrass_SubscriptionDefinitionVersion

Information about the subscription definition version.


=head2 Id => Str

The ID of the subscription definition version.


=head2 NextToken => Str

The token for the next set of results, or ''null'' if there are no
additional results.


=head2 Version => Str

The version of the subscription definition version.


=head2 _request_id => Str


=cut

