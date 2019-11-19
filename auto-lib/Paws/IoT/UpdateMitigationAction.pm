
package Paws::IoT::UpdateMitigationAction;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_MitigationActionParams/;
  has ActionName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ActionParams => (is => 'ro', isa => IoT_MitigationActionParams, predicate => 1);
  has RoleArn => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateMitigationAction');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/mitigationactions/actions/{actionName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PATCH');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::UpdateMitigationActionResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'ActionName' => 'actionName'
                  },
  'NameInRequest' => {
                       'RoleArn' => 'roleArn',
                       'ActionParams' => 'actionParams'
                     },
  'IsRequired' => {
                    'ActionName' => 1
                  },
  'types' => {
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'ActionName' => {
                                 'type' => 'Str'
                               },
               'ActionParams' => {
                                   'class' => 'Paws::IoT::MitigationActionParams',
                                   'type' => 'IoT_MitigationActionParams'
                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateMitigationAction - Arguments for method UpdateMitigationAction on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMitigationAction on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method UpdateMitigationAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMitigationAction.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $UpdateMitigationActionResponse = $iot->UpdateMitigationAction(
      ActionName   => 'MyMitigationActionName',
      ActionParams => {
        AddThingsToThingGroupParams => {
          ThingGroupNames => [
            'MyThingGroupName', ...    # min: 1, max: 128
          ],                           # min: 1, max: 10
          OverrideDynamicGroups => 1,  # OPTIONAL
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
      },    # OPTIONAL
      RoleArn => 'MyRoleArn',    # OPTIONAL
    );

    # Results:
    my $ActionArn = $UpdateMitigationActionResponse->ActionArn;
    my $ActionId  = $UpdateMitigationActionResponse->ActionId;

    # Returns a L<Paws::IoT::UpdateMitigationActionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/UpdateMitigationAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionName => Str

The friendly name for the mitigation action. You can't change the name
by using C<UpdateMitigationAction>. Instead, you must delete and
re-create the mitigation action with the new name.



=head2 ActionParams => IoT_MitigationActionParams

Defines the type of action and the parameters for that action.



=head2 RoleArn => Str

The ARN of the IAM role that is used to apply the mitigation action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMitigationAction in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

