
package Paws::PersonalizeRuntime::GetRecommendations;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::PersonalizeRuntime::Types qw//;
  has CampaignArn => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ItemId => (is => 'ro', isa => Str, predicate => 1);
  has NumResults => (is => 'ro', isa => Int, predicate => 1);
  has UserId => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetRecommendations');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/recommendations');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::PersonalizeRuntime::GetRecommendationsResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'CampaignArn' => 1
                  },
  'NameInRequest' => {
                       'UserId' => 'userId',
                       'ItemId' => 'itemId',
                       'CampaignArn' => 'campaignArn',
                       'NumResults' => 'numResults'
                     },
  'types' => {
               'ItemId' => {
                             'type' => 'Str'
                           },
               'NumResults' => {
                                 'type' => 'Int'
                               },
               'CampaignArn' => {
                                  'type' => 'Str'
                                },
               'UserId' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }

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
      ItemId      => 'MyItemID',    # OPTIONAL
      NumResults  => 1,             # OPTIONAL
      UserId      => 'MyUserID',    # OPTIONAL
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



=head2 ItemId => Str

The item ID to provide recommendations for.

Required for C<RELATED_ITEMS> recipe type.



=head2 NumResults => Int

The number of results to return. The default is 25. The maximum is 100.



=head2 UserId => Str

The user ID to provide recommendations for.

Required for C<USER_PERSONALIZATION> recipe type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRecommendations in L<Paws::PersonalizeRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

