package Paws::IoT::TopicRule;
  use Moose;
  has actions => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Action]');
  has createdAt => (is => 'ro', isa => 'Str');
  has description => (is => 'ro', isa => 'Str');
  has ruleDisabled => (is => 'ro', isa => 'Bool');
  has ruleName => (is => 'ro', isa => 'Str');
  has sql => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::TopicRule

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::TopicRule object:

  $service_obj->Method(Att1 => { actions => $value, ..., sql => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::TopicRule object:

  $result = $service_obj->Method(...);
  $result->Att1->actions

=head1 ATTRIBUTES

=head2 actions => ArrayRef[Paws::IoT::Action]

  

The actions associated with the rule.










=head2 createdAt => Str

  

The date and time the rule was created.










=head2 description => Str

  

The description of the rule.










=head2 ruleDisabled => Bool

  

Specifies whether the rule is disabled.










=head2 ruleName => Str

  

The name of the rule.










=head2 sql => Str

  

The SQL statement used to query the topic. When using a SQL query with
multiple lines, be sure to escape the newline characters properly.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

