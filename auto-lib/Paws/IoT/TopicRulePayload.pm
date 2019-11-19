# Generated from default/object.tt
package Paws::IoT::TopicRulePayload;
  use Moo;
  use Types::Standard qw/ArrayRef Str Bool/;
  use Paws::IoT::Types qw/IoT_Action/;
  has Actions => (is => 'ro', isa => ArrayRef[IoT_Action], required => 1);
  has AwsIotSqlVersion => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has ErrorAction => (is => 'ro', isa => IoT_Action);
  has RuleDisabled => (is => 'ro', isa => Bool);
  has Sql => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ErrorAction' => {
                                  'type' => 'IoT_Action',
                                  'class' => 'Paws::IoT::Action'
                                },
               'Sql' => {
                          'type' => 'Str'
                        },
               'RuleDisabled' => {
                                   'type' => 'Bool'
                                 },
               'Actions' => {
                              'type' => 'ArrayRef[IoT_Action]',
                              'class' => 'Paws::IoT::Action'
                            },
               'AwsIotSqlVersion' => {
                                       'type' => 'Str'
                                     },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Actions' => 1,
                    'Sql' => 1
                  },
  'NameInRequest' => {
                       'ErrorAction' => 'errorAction',
                       'RuleDisabled' => 'ruleDisabled',
                       'Sql' => 'sql',
                       'Actions' => 'actions',
                       'AwsIotSqlVersion' => 'awsIotSqlVersion',
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::TopicRulePayload

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::TopicRulePayload object:

  $service_obj->Method(Att1 => { Actions => $value, ..., Sql => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::TopicRulePayload object:

  $result = $service_obj->Method(...);
  $result->Att1->Actions

=head1 DESCRIPTION

Describes a rule.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Actions => ArrayRef[IoT_Action]

  The actions associated with the rule.


=head2 AwsIotSqlVersion => Str

  The version of the SQL rules engine to use when evaluating the rule.


=head2 Description => Str

  The description of the rule.


=head2 ErrorAction => IoT_Action

  The action to take when an error occurs.


=head2 RuleDisabled => Bool

  Specifies whether the rule is disabled.


=head2 B<REQUIRED> Sql => Str

  The SQL statement used to query the topic. For more information, see
AWS IoT SQL Reference
(https://docs.aws.amazon.com/iot/latest/developerguide/iot-rules.html#aws-iot-sql-reference)
in the I<AWS IoT Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

