package Paws::ComputeOptimizer::Filter;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'values', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::Filter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ComputeOptimizer::Filter object:

  $service_obj->Method(Att1 => { Name => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ComputeOptimizer::Filter object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Describes a filter that returns a more specific list of
recommendations.

=head1 ATTRIBUTES


=head2 Name => Str

  The name of the filter.

Specify C<Finding> to filter the results to a specific findings
classification.

Specify C<RecommendationSourceType> to filter the results to a specific
resource type.


=head2 Values => ArrayRef[Str|Undef]

  The value of the filter.

If you specify the C<name> parameter as C<Finding>, and you're
recommendations for an I<instance>, then the valid values are
C<Underprovisioned>, C<Overprovisioned>, C<NotOptimized>, or
C<Optimized>.

If you specify the C<name> parameter as C<Finding>, and you're
recommendations for an I<Auto Scaling group>, then the valid values are
C<Optimized>, or C<NotOptimized>.

If you specify the C<name> parameter as C<RecommendationSourceType>,
then the valid values are C<EC2Instance>, or C<AutoScalingGroup>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

