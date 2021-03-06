# Generated by default/object.tt
package Paws::CostExplorer::RightsizingRecommendationMetadata;
  use Moose;
  has AdditionalMetadata => (is => 'ro', isa => 'Str');
  has GenerationTimestamp => (is => 'ro', isa => 'Str');
  has LookbackPeriodInDays => (is => 'ro', isa => 'Str');
  has RecommendationId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::RightsizingRecommendationMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::RightsizingRecommendationMetadata object:

  $service_obj->Method(Att1 => { AdditionalMetadata => $value, ..., RecommendationId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::RightsizingRecommendationMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalMetadata

=head1 DESCRIPTION

Metadata for this recommendation set.

=head1 ATTRIBUTES


=head2 AdditionalMetadata => Str

Additional metadata that may be applicable to the recommendation.


=head2 GenerationTimestamp => Str

The timestamp for when AWS made this recommendation.


=head2 LookbackPeriodInDays => Str

How many days of previous usage that AWS considers when making this
recommendation.


=head2 RecommendationId => Str

The ID for this specific recommendation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

