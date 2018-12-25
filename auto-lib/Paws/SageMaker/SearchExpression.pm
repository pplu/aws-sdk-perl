package Paws::SageMaker::SearchExpression;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Filter]');
  has NestedFilters => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::NestedFilters]');
  has Operator => (is => 'ro', isa => 'Str');
  has SubExpressions => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::SearchExpression]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::SearchExpression

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::SearchExpression object:

  $service_obj->Method(Att1 => { Filters => $value, ..., SubExpressions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::SearchExpression object:

  $result = $service_obj->Method(...);
  $result->Att1->Filters

=head1 DESCRIPTION

A multi-expression that searches for the specified resource or
resources in a search. All resource objects that satisfy the
expression's condition are included in the search results. You must
specify at least one subexpression, filter, or nested filter. A
C<SearchExpression> can contain up to twenty elements.

A C<SearchExpression> contains the following components:

=over

=item *

A list of C<Filter> objects. Each filter defines a simple Boolean
expression comprised of a resource property name, Boolean operator, and
value.

=item *

A list of C<NestedFilter> objects. Each nested filter defines a list of
Boolean expressions using a list of resource properties. A nested
filter is satisfied if a single object in the list satisfies all
Boolean expressions.

=item *

A list of C<SearchExpression> objects. A search expression object can
be nested in a list of search expression objects.

=item *

A Boolean operator: C<And> or C<Or>.

=back


=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::SageMaker::Filter>]

  A list of filter objects.


=head2 NestedFilters => ArrayRef[L<Paws::SageMaker::NestedFilters>]

  A list of nested filter objects.


=head2 Operator => Str

  A Boolean operator used to evaluate the search expression. If you want
every conditional statement in all lists to be satisfied for the entire
search expression to be true, specify C<And>. If only a single
conditional statement needs to be true for the entire search expression
to be true, specify C<Or>. The default value is C<And>.


=head2 SubExpressions => ArrayRef[L<Paws::SageMaker::SearchExpression>]

  A list of search expression objects.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

