package Paws::CloudWatchEvents::Rule;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has EventPattern => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has ScheduleExpression => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::Rule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchEvents::Rule object:

  $service_obj->Method(Att1 => { Arn => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchEvents::Rule object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains information about a rule in Amazon CloudWatch Events. A
ListRulesResult contains a list of Rules.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the rule.


=head2 Description => Str

  The description of the rule.


=head2 EventPattern => Str

  The event pattern of the rule.


=head2 Name => Str

  The rule's name.


=head2 RoleArn => Str

  The Amazon Resource Name (ARN) associated with the role that is used
for target invocation.


=head2 ScheduleExpression => Str

  The scheduling expression. For example, "cron(0 20 * * ? *)", "rate(5
minutes)".


=head2 State => Str

  The rule's state.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

