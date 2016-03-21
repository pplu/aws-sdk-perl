package Paws::IoT::TopicRule;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Action]', xmlname => 'actions', request_name => 'actions', traits => ['Unwrapped','NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', xmlname => 'createdAt', request_name => 'createdAt', traits => ['Unwrapped','NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', xmlname => 'description', request_name => 'description', traits => ['Unwrapped','NameInRequest']);
  has RuleDisabled => (is => 'ro', isa => 'Bool', xmlname => 'ruleDisabled', request_name => 'ruleDisabled', traits => ['Unwrapped','NameInRequest']);
  has RuleName => (is => 'ro', isa => 'Str', xmlname => 'ruleName', request_name => 'ruleName', traits => ['Unwrapped','NameInRequest']);
  has Sql => (is => 'ro', isa => 'Str', xmlname => 'sql', request_name => 'sql', traits => ['Unwrapped','NameInRequest']);
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


=head2 Actions => ArrayRef[L<Paws::IoT::Action>]

  The actions associated with the rule.


=head2 CreatedAt => Str

  The date and time the rule was created.


=head2 Description => Str

  The description of the rule.


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

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

