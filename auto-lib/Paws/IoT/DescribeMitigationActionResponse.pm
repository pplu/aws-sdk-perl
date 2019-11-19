
package Paws::IoT::DescribeMitigationActionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_MitigationActionParams/;
  has ActionArn => (is => 'ro', isa => Str);
  has ActionId => (is => 'ro', isa => Str);
  has ActionName => (is => 'ro', isa => Str);
  has ActionParams => (is => 'ro', isa => IoT_MitigationActionParams);
  has ActionType => (is => 'ro', isa => Str);
  has CreationDate => (is => 'ro', isa => Str);
  has LastModifiedDate => (is => 'ro', isa => Str);
  has RoleArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'LastModifiedDate' => 'lastModifiedDate',
                       'CreationDate' => 'creationDate',
                       'ActionArn' => 'actionArn',
                       'ActionParams' => 'actionParams',
                       'ActionType' => 'actionType',
                       'RoleArn' => 'roleArn',
                       'ActionName' => 'actionName',
                       'ActionId' => 'actionId'
                     },
  'types' => {
               'ActionParams' => {
                                   'type' => 'IoT_MitigationActionParams',
                                   'class' => 'Paws::IoT::MitigationActionParams'
                                 },
               'ActionType' => {
                                 'type' => 'Str'
                               },
               'ActionId' => {
                               'type' => 'Str'
                             },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'ActionName' => {
                                 'type' => 'Str'
                               },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'ActionArn' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LastModifiedDate' => {
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

Paws::IoT::DescribeMitigationActionResponse

=head1 ATTRIBUTES


=head2 ActionArn => Str

The ARN that identifies this migration action.


=head2 ActionId => Str

A unique identifier for this action.


=head2 ActionName => Str

The friendly name that uniquely identifies the mitigation action.


=head2 ActionParams => IoT_MitigationActionParams

Parameters that control how the mitigation action is applied, specific
to the type of mitigation action.


=head2 ActionType => Str

The type of mitigation action.

Valid values are: C<"UPDATE_DEVICE_CERTIFICATE">, C<"UPDATE_CA_CERTIFICATE">, C<"ADD_THINGS_TO_THING_GROUP">, C<"REPLACE_DEFAULT_POLICY_VERSION">, C<"ENABLE_IOT_LOGGING">, C<"PUBLISH_FINDING_TO_SNS">
=head2 CreationDate => Str

The date and time when the mitigation action was added to your AWS
account.


=head2 LastModifiedDate => Str

The date and time when the mitigation action was last changed.


=head2 RoleArn => Str

The ARN of the IAM role used to apply this action.


=head2 _request_id => Str


=cut

