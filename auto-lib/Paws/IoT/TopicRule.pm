# Generated from default/object.tt
package Paws::IoT::TopicRule;
  use Moo;
  use Types::Standard qw/ArrayRef Str Bool/;
  use Paws::IoT::Types qw/IoT_Action/;
  has Actions => (is => 'ro', isa => ArrayRef[IoT_Action]);
  has AwsIotSqlVersion => (is => 'ro', isa => Str);
  has CreatedAt => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has ErrorAction => (is => 'ro', isa => IoT_Action);
  has RuleDisabled => (is => 'ro', isa => Bool);
  has RuleName => (is => 'ro', isa => Str);
  has Sql => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Description' => {
                                  'type' => 'Str'
                                },
               'AwsIotSqlVersion' => {
                                       'type' => 'Str'
                                     },
               'CreatedAt' => {
                                'type' => 'Str'
                              },
               'Actions' => {
                              'class' => 'Paws::IoT::Action',
                              'type' => 'ArrayRef[IoT_Action]'
                            },
               'RuleDisabled' => {
                                   'type' => 'Bool'
                                 },
               'Sql' => {
                          'type' => 'Str'
                        },
               'ErrorAction' => {
                                  'class' => 'Paws::IoT::Action',
                                  'type' => 'IoT_Action'
                                },
               'RuleName' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'CreatedAt' => 'createdAt',
                       'Actions' => 'actions',
                       'AwsIotSqlVersion' => 'awsIotSqlVersion',
                       'Description' => 'description',
                       'RuleName' => 'ruleName',
                       'ErrorAction' => 'errorAction',
                       'RuleDisabled' => 'ruleDisabled',
                       'Sql' => 'sql'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::TopicRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::TopicRule object:

  $service_obj->Method(Att1 => { Actions => $value, ..., Sql => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::TopicRule object:

  $result = $service_obj->Method(...);
  $result->Att1->Actions

=head1 DESCRIPTION

Describes a rule.

=head1 ATTRIBUTES


=head2 Actions => ArrayRef[IoT_Action]

  The actions associated with the rule.


=head2 AwsIotSqlVersion => Str

  The version of the SQL rules engine to use when evaluating the rule.


=head2 CreatedAt => Str

  The date and time the rule was created.


=head2 Description => Str

  The description of the rule.


=head2 ErrorAction => IoT_Action

  The action to perform when an error occurs.


=head2 RuleDisabled => Bool

  Specifies whether the rule is disabled.


=head2 RuleName => Str

  The name of the rule.


=head2 Sql => Str

  The SQL statement used to query the topic. When using a SQL query with
multiple lines, be sure to escape the newline characters.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

