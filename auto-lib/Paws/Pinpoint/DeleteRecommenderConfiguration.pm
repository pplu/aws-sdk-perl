
package Paws::Pinpoint::DeleteRecommenderConfiguration;
  use Moose;
  has RecommenderId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'recommender-id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRecommenderConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/recommenders/{recommender-id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::DeleteRecommenderConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::DeleteRecommenderConfiguration - Arguments for method DeleteRecommenderConfiguration on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRecommenderConfiguration on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method DeleteRecommenderConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRecommenderConfiguration.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $DeleteRecommenderConfigurationResponse =
      $pinpoint->DeleteRecommenderConfiguration(
      RecommenderId => 'My__string',

      );

    # Results:
    my $RecommenderConfigurationResponse =
      $DeleteRecommenderConfigurationResponse->RecommenderConfigurationResponse;

   # Returns a L<Paws::Pinpoint::DeleteRecommenderConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/DeleteRecommenderConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RecommenderId => Str

The unique identifier for the recommender model configuration. This
identifier is displayed as the B<Recommender ID> on the Amazon Pinpoint
console.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRecommenderConfiguration in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

