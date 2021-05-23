
package Paws::Pinpoint::CreateRecommenderConfiguration;
  use Moose;
  has CreateRecommenderConfiguration => (is => 'ro', isa => 'Paws::Pinpoint::CreateRecommenderConfigurationObj', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'CreateRecommenderConfiguration');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRecommenderConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/recommenders');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::CreateRecommenderConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::CreateRecommenderConfiguration - Arguments for method CreateRecommenderConfiguration on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRecommenderConfiguration on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method CreateRecommenderConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRecommenderConfiguration.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $CreateRecommenderConfigurationResponse =
      $pinpoint->CreateRecommenderConfiguration(
      CreateRecommenderConfiguration => {
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
      $CreateRecommenderConfigurationResponse->RecommenderConfigurationResponse;

   # Returns a L<Paws::Pinpoint::CreateRecommenderConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/CreateRecommenderConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreateRecommenderConfiguration => L<Paws::Pinpoint::CreateRecommenderConfigurationObj>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRecommenderConfiguration in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

