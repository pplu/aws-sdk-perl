
package Paws::PersonalizeRuntime::GetRecommendations;
  use Moose;
  has CampaignArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'campaignArn', required => 1);
  has Context => (is => 'ro', isa => 'Paws::PersonalizeRuntime::Context', traits => ['NameInRequest'], request_name => 'context');
  has ItemId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'itemId');
  has NumResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'numResults');
  has UserId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRecommendations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/recommendations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PersonalizeRuntime::GetRecommendationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PersonalizeRuntime::GetRecommendations - Arguments for method GetRecommendations on L<Paws::PersonalizeRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRecommendations on the
L<Amazon Personalize Runtime|Paws::PersonalizeRuntime> service. Use the attributes of this class
as arguments to method GetRecommendations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRecommendations.

=head1 SYNOPSIS

    my $personalize-runtime = Paws->service('PersonalizeRuntime');
    my $GetRecommendationsResponse = $personalize -runtime->GetRecommendations(
      CampaignArn => 'MyArn',
      Context     => {
        'MyAttributeName' =>
          'MyAttributeValue',    # key: max: 150, value: max: 1000
      },    # OPTIONAL
      ItemId     => 'MyItemID',    # OPTIONAL
      NumResults => 1,             # OPTIONAL
      UserId     => 'MyUserID',    # OPTIONAL
    );

    # Results:
    my $ItemList = $GetRecommendationsResponse->ItemList;

    # Returns a L<Paws::PersonalizeRuntime::GetRecommendationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize-runtime/GetRecommendations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CampaignArn => Str

The Amazon Resource Name (ARN) of the campaign to use for getting
recommendations.



=head2 Context => L<Paws::PersonalizeRuntime::Context>

The contextual metadata to use when getting recommendations. Contextual
metadata includes any interaction information that might be relevant
when getting a user's recommendations, such as the user's current
location or device type. For more information, see Contextual Metadata.



=head2 ItemId => Str

The item ID to provide recommendations for.

Required for C<RELATED_ITEMS> recipe type.



=head2 NumResults => Int

The number of results to return. The default is 25. The maximum is 500.



=head2 UserId => Str

The user ID to provide recommendations for.

Required for C<USER_PERSONALIZATION> recipe type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRecommendations in L<Paws::PersonalizeRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

