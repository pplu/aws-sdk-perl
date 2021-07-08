
package Paws::Pinpoint::UpdateRecommenderConfiguration;
  use Moose;
  has RecommenderId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'recommender-id', required => 1);
  has UpdateRecommenderConfiguration => (is => 'ro', isa => 'Paws::Pinpoint::UpdateRecommenderConfigurationObj', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'UpdateRecommenderConfiguration');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRecommenderConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/recommenders/{recommender-id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::UpdateRecommenderConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::UpdateRecommenderConfiguration - Arguments for method UpdateRecommenderConfiguration on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRecommenderConfiguration on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method UpdateRecommenderConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRecommenderConfiguration.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $UpdateRecommenderConfigurationResponse =
      $pinpoint->UpdateRecommenderConfiguration(
      RecommenderId                  => 'My__string',
      UpdateRecommenderConfiguration => {
        RecommendationProviderRoleArn => 'My__string',
        RecommendationProviderUri     => 'My__string',
        Attributes  => { 'My__string' => 'My__string', },    # OPTIONAL
        Description => 'My__string',
        Name        => 'My__string',
        RecommendationProviderIdType => 'My__string',
        RecommendationTransformerUri => 'My__string',
        RecommendationsDisplayName   => 'My__string',
        RecommendationsPerMessage    => 1,                   # OPTIONAL
      },

      );

    # Results:
    my $RecommenderConfigurationResponse =
      $UpdateRecommenderConfigurationResponse->RecommenderConfigurationResponse;

   # Returns a L<Paws::Pinpoint::UpdateRecommenderConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/UpdateRecommenderConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RecommenderId => Str

The unique identifier for the recommender model configuration. This
identifier is displayed as the B<Recommender ID> on the Amazon Pinpoint
console.



=head2 B<REQUIRED> UpdateRecommenderConfiguration => L<Paws::Pinpoint::UpdateRecommenderConfigurationObj>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRecommenderConfiguration in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

