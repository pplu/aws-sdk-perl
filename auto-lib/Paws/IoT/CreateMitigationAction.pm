
package Paws::IoT::CreateMitigationAction;
  use Moose;
  has ActionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'actionName', required => 1);
  has ActionParams => (is => 'ro', isa => 'Paws::IoT::MitigationActionParams', traits => ['NameInRequest'], request_name => 'actionParams', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMitigationAction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/mitigationactions/actions/{actionName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CreateMitigationActionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateMitigationAction - Arguments for method CreateMitigationAction on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMitigationAction on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreateMitigationAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMitigationAction.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CreateMitigationActionResponse = $iot->CreateMitigationAction(
      ActionName   => 'MyMitigationActionName',
      ActionParams => {
        AddThingsToThingGroupParams => {
          ThingGroupNames => [
            'MyThingGroupName', ...    # min: 1, max: 128
          ],    # min: 1, max: 10
          OverrideDynamicGroups => 1,    # OPTIONAL
        },    # OPTIONAL
        EnableIoTLoggingParams => {
          LogLevel => 'DEBUG',    # values: DEBUG, INFO, ERROR, WARN, DISABLED
          RoleArnForLogging => 'MyRoleArn',    # min: 20, max: 2048

        },    # OPTIONAL
        PublishFindingToSnsParams => {
          TopicArn => 'MySnsTopicArn',    # max: 350

        },    # OPTIONAL
        ReplaceDefaultPolicyVersionParams => {
          TemplateName => 'BLANK_POLICY',    # values: BLANK_POLICY

        },    # OPTIONAL
        UpdateCACertificateParams => {
          Action => 'DEACTIVATE',    # values: DEACTIVATE

        },    # OPTIONAL
        UpdateDeviceCertificateParams => {
          Action => 'DEACTIVATE',    # values: DEACTIVATE

        },    # OPTIONAL
      },
      RoleArn => 'MyRoleArn',
      Tags    => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ActionArn = $CreateMitigationActionResponse->ActionArn;
    my $ActionId  = $CreateMitigationActionResponse->ActionId;

    # Returns a L<Paws::IoT::CreateMitigationActionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreateMitigationAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionName => Str

A friendly name for the action. Choose a friendly name that accurately
describes the action (for example, C<EnableLoggingAction>).



=head2 B<REQUIRED> ActionParams => L<Paws::IoT::MitigationActionParams>

Defines the type of action and the parameters for that action.



=head2 B<REQUIRED> RoleArn => Str

The ARN of the IAM role that is used to apply the mitigation action.



=head2 Tags => ArrayRef[L<Paws::IoT::Tag>]

Metadata that can be used to manage the mitigation action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMitigationAction in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

