package Paws::Quicksight::FilterOperation;
  use Moose;
  has ConditionExpression => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::FilterOperation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::FilterOperation object:

  $service_obj->Method(Att1 => { ConditionExpression => $value, ..., ConditionExpression => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::FilterOperation object:

  $result = $service_obj->Method(...);
  $result->Att1->ConditionExpression

=head1 DESCRIPTION

A transform operation that filters rows based on a condition.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConditionExpression => Str

  An expression that must evaluate to a Boolean value. Rows for which the
expression evaluates to true are kept in the dataset.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

