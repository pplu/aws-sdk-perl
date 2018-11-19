package Paws::Pinpoint::MetricDimension;
  use Moose;
  has ComparisonOperator => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::MetricDimension

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::MetricDimension object:

  $service_obj->Method(Att1 => { ComparisonOperator => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::MetricDimension object:

  $result = $service_obj->Method(...);
  $result->Att1->ComparisonOperator

=head1 DESCRIPTION

Custom metric dimension

=head1 ATTRIBUTES


=head2 ComparisonOperator => Str

  The operator that you're using to compare metric values. Possible
values: GREATER_THAN, LESS_THAN, GREATER_THAN_OR_EQUAL,
LESS_THAN_OR_EQUAL, or EQUAL


=head2 Value => Num

  The value to be compared.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

