
package Paws::PersonalizeRuntime::GetPersonalizedRanking;
  use Moose;
  has CampaignArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'campaignArn', required => 1);
  has Context => (is => 'ro', isa => 'Paws::PersonalizeRuntime::Context', traits => ['NameInRequest'], request_name => 'context');
  has InputList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'inputList', required => 1);
  has UserId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPersonalizedRanking');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/personalize-ranking');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::PersonalizeRuntime::GetPersonalizedRankingResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PersonalizeRuntime::GetPersonalizedRanking - Arguments for method GetPersonalizedRanking on L<Paws::PersonalizeRuntime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPersonalizedRanking on the
L<Amazon Personalize Runtime|Paws::PersonalizeRuntime> service. Use the attributes of this class
as arguments to method GetPersonalizedRanking.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPersonalizedRanking.

=head1 SYNOPSIS

    my $personalize-runtime = Paws->service('PersonalizeRuntime');
    my $GetPersonalizedRankingResponse =
      $personalize -runtime->GetPersonalizedRanking(
      CampaignArn => 'MyArn',
      InputList   => [
        'MyItemID', ...    # max: 256
      ],
      UserId  => 'MyUserID',
      Context => {
        'MyAttributeName' =>
          'MyAttributeValue',    # key: max: 150, value: max: 1000
      },    # OPTIONAL
      );

    # Results:
    my $PersonalizedRanking =
      $GetPersonalizedRankingResponse->PersonalizedRanking;

 # Returns a L<Paws::PersonalizeRuntime::GetPersonalizedRankingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize-runtime/GetPersonalizedRanking>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CampaignArn => Str

The Amazon Resource Name (ARN) of the campaign to use for generating
the personalized ranking.



=head2 Context => L<Paws::PersonalizeRuntime::Context>

The contextual metadata to use when getting recommendations. Contextual
metadata includes any interaction information that might be relevant
when getting a user's recommendations, such as the user's current
location or device type. For more information, see Contextual Metadata.



=head2 B<REQUIRED> InputList => ArrayRef[Str|Undef]

A list of items (itemId's) to rank. If an item was not included in the
training dataset, the item is appended to the end of the reranked list.
The maximum is 500.



=head2 B<REQUIRED> UserId => Str

The user for which you want the campaign to provide a personalized
ranking.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPersonalizedRanking in L<Paws::PersonalizeRuntime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

