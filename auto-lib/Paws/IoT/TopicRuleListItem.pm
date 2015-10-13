package Paws::IoT::TopicRuleListItem;
  use Moose;
  has createdAt => (is => 'ro', isa => 'Str');
  has ruleDisabled => (is => 'ro', isa => 'Bool');
  has ruleName => (is => 'ro', isa => 'Str');
  has topicPattern => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::TopicRuleListItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::TopicRuleListItem object:

  $service_obj->Method(Att1 => { createdAt => $value, ..., topicPattern => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::TopicRuleListItem object:

  $result = $service_obj->Method(...);
  $result->Att1->createdAt

=head1 DESCRIPTION

Describes a rule.

=head1 ATTRIBUTES

=head2 createdAt => Str

  The date and time the rule was created.

=head2 ruleDisabled => Bool

  Specifies whether the rule is disabled.

=head2 ruleName => Str

  The name of the rule.

=head2 topicPattern => Str

  The pattern for the topic names that apply.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

