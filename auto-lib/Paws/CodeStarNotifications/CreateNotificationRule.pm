
package Paws::CodeStarNotifications::CreateNotificationRule;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CodeStarNotifications::Types qw/CodeStarNotifications_Target CodeStarNotifications_Tags/;
  has ClientRequestToken => (is => 'ro', isa => Str, predicate => 1);
  has DetailType => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has EventTypeIds => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Resource => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Status => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => CodeStarNotifications_Tags, predicate => 1);
  has Targets => (is => 'ro', isa => ArrayRef[CodeStarNotifications_Target], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateNotificationRule');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/createNotificationRule');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodeStarNotifications::CreateNotificationRuleResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EventTypeIds' => {
                                   'type' => 'ArrayRef[Str|Undef]'
                                 },
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       },
               'Name' => {
                           'type' => 'Str'
                         },
               'Tags' => {
                           'type' => 'CodeStarNotifications_Tags',
                           'class' => 'Paws::CodeStarNotifications::Tags'
                         },
               'Resource' => {
                               'type' => 'Str'
                             },
               'Status' => {
                             'type' => 'Str'
                           },
               'DetailType' => {
                                 'type' => 'Str'
                               },
               'Targets' => {
                              'class' => 'Paws::CodeStarNotifications::Target',
                              'type' => 'ArrayRef[CodeStarNotifications_Target]'
                            }
             },
  'IsRequired' => {
                    'DetailType' => 1,
                    'Resource' => 1,
                    'EventTypeIds' => 1,
                    'Targets' => 1,
                    'Name' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarNotifications::CreateNotificationRule - Arguments for method CreateNotificationRule on L<Paws::CodeStarNotifications>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNotificationRule on the
L<AWS CodeStar Notifications|Paws::CodeStarNotifications> service. Use the attributes of this class
as arguments to method CreateNotificationRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNotificationRule.

=head1 SYNOPSIS

    my $codestar-notifications = Paws->service('CodeStarNotifications');
    my $CreateNotificationRuleResult =
      $codestar -notifications->CreateNotificationRule(
      DetailType   => 'BASIC',
      EventTypeIds => [
        'MyEventTypeId', ...    # min: 1, max: 200
      ],
      Name     => 'MyNotificationRuleName',
      Resource => 'MyNotificationRuleResource',
      Targets  => [
        {
          TargetAddress => 'MyTargetAddress',    # min: 1, max: 320; OPTIONAL
          TargetType    => 'MyTargetType',       # OPTIONAL
        },
        ...
      ],
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      Status             => 'ENABLED',                 # OPTIONAL
      Tags               => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $Arn = $CreateNotificationRuleResult->Arn;

# Returns a L<Paws::CodeStarNotifications::CreateNotificationRuleResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codestar-notifications/CreateNotificationRule>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique, client-generated idempotency token that, when provided in a
request, ensures the request cannot be repeated with a changed
parameter. If a request with the same parameters is received and a
token is included, the request returns information about the initial
request that used that token.

The AWS SDKs prepopulate client request tokens. If you are using an AWS
SDK, an idempotency token is created for you.



=head2 B<REQUIRED> DetailType => Str

The level of detail to include in the notifications for this resource.
BASIC will include only the contents of the event as it would appear in
AWS CloudWatch. FULL will include any supplemental information provided
by AWS CodeStar Notifications and/or the service for the resource for
which the notification is created.

Valid values are: C<"BASIC">, C<"FULL">

=head2 B<REQUIRED> EventTypeIds => ArrayRef[Str|Undef]

A list of event types associated with this notification rule. For a
list of allowed events, see EventTypeSummary.



=head2 B<REQUIRED> Name => Str

The name for the notification rule. Notifictaion rule names must be
unique in your AWS account.



=head2 B<REQUIRED> Resource => Str

The Amazon Resource Name (ARN) of the resource to associate with the
notification rule. Supported resources include pipelines in AWS
CodePipeline, repositories in AWS CodeCommit, and build projects in AWS
CodeBuild.



=head2 Status => Str

The status of the notification rule. The default value is ENABLED. If
the status is set to DISABLED, notifications aren't sent for the
notification rule.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 Tags => CodeStarNotifications_Tags

A list of tags to apply to this notification rule. Key names cannot
start with "aws".



=head2 B<REQUIRED> Targets => ArrayRef[CodeStarNotifications_Target]

A list of Amazon Resource Names (ARNs) of SNS topics to associate with
the notification rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNotificationRule in L<Paws::CodeStarNotifications>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

