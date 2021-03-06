# Generated by default/object.tt
package Paws::GlueDataBrew::ConditionExpression;
  use Moose;
  has Condition => (is => 'ro', isa => 'Str', required => 1);
  has TargetColumn => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::ConditionExpression

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GlueDataBrew::ConditionExpression object:

  $service_obj->Method(Att1 => { Condition => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GlueDataBrew::ConditionExpression object:

  $result = $service_obj->Method(...);
  $result->Att1->Condition

=head1 DESCRIPTION

Represents an individual condition that evaluates to true or false.

Conditions are used with recipe actions. The action is only performed
for column values where the condition evaluates to true.

If a recipe requires more than one condition, then the recipe must
specify multiple C<ConditionExpression> elements. Each condition is
applied to the rows in a dataset first, before the recipe action is
performed.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Condition => Str

A specific condition to apply to a recipe action. For more information,
see Recipe structure
(https://docs.aws.amazon.com/databrew/latest/dg/recipes.html#recipes.structure)
in the I<Glue DataBrew Developer Guide>.


=head2 B<REQUIRED> TargetColumn => Str

A column to apply this condition to.


=head2 Value => Str

A value that the condition must evaluate to for the condition to
succeed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GlueDataBrew>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

