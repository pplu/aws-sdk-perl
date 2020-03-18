package Paws::ComputeOptimizer::RecommendationSource;
  use Moose;
  has RecommendationSourceArn => (is => 'ro', isa => 'Str', request_name => 'recommendationSourceArn', traits => ['NameInRequest']);
  has RecommendationSourceType => (is => 'ro', isa => 'Str', request_name => 'recommendationSourceType', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::RecommendationSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ComputeOptimizer::RecommendationSource object:

  $service_obj->Method(Att1 => { RecommendationSourceArn => $value, ..., RecommendationSourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ComputeOptimizer::RecommendationSource object:

  $result = $service_obj->Method(...);
  $result->Att1->RecommendationSourceArn

=head1 DESCRIPTION

Describes the source of a recommendation, such as an Amazon EC2
instance or Auto Scaling group.

=head1 ATTRIBUTES


=head2 RecommendationSourceArn => Str

  The Amazon Resource Name (ARN) of the recommendation source.


=head2 RecommendationSourceType => Str

  The resource type of the recommendation source.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

