package Paws::ComputeOptimizer::RecommendationSummary;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', request_name => 'accountId', traits => ['NameInRequest']);
  has RecommendationResourceType => (is => 'ro', isa => 'Str', request_name => 'recommendationResourceType', traits => ['NameInRequest']);
  has Summaries => (is => 'ro', isa => 'ArrayRef[Paws::ComputeOptimizer::Summary]', request_name => 'summaries', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::RecommendationSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ComputeOptimizer::RecommendationSummary object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., Summaries => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ComputeOptimizer::RecommendationSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

A summary of a recommendation.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The AWS account ID of the recommendation summary.


=head2 RecommendationResourceType => Str

  The resource type of the recommendation.


=head2 Summaries => ArrayRef[L<Paws::ComputeOptimizer::Summary>]

  An array of objects that describe a recommendation summary.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

