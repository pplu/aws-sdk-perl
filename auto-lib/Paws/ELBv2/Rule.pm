package Paws::ELBv2::Rule;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::Action]');
  has Conditions => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::RuleCondition]');
  has IsDefault => (is => 'ro', isa => 'Bool');
  has Priority => (is => 'ro', isa => 'Str');
  has RuleArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::Rule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::Rule object:

  $service_obj->Method(Att1 => { Actions => $value, ..., RuleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::Rule object:

  $result = $service_obj->Method(...);
  $result->Att1->Actions

=head1 DESCRIPTION

Information about a rule.

=head1 ATTRIBUTES


=head2 Actions => ArrayRef[L<Paws::ELBv2::Action>]

  The actions.


=head2 Conditions => ArrayRef[L<Paws::ELBv2::RuleCondition>]

  The conditions.


=head2 IsDefault => Bool

  Indicates whether this is the default rule.


=head2 Priority => Str

  The priority.


=head2 RuleArn => Str

  The Amazon Resource Name (ARN) of the rule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

