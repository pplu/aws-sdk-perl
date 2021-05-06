
package Paws::IoT::DescribeMitigationActionResponse;
  use Moose;
  has ActionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionArn');
  has ActionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionId');
  has ActionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionName');
  has ActionParams => (is => 'ro', isa => 'Paws::IoT::MitigationActionParams', traits => ['NameInRequest'], request_name => 'actionParams');
  has ActionType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionType');
  has CreationDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationDate');
  has LastModifiedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModifiedDate');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');

  has _request_id => (is => 'ro', isa => 'Str');
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


=head2 ActionParams => L<Paws::IoT::MitigationActionParams>

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

