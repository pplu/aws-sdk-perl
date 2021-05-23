
package Paws::DevOpsGuru::ListRecommendations;
  use Moose;
  has InsightId => (is => 'ro', isa => 'Str', required => 1);
  has Locale => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRecommendations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/recommendations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DevOpsGuru::ListRecommendationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::ListRecommendations - Arguments for method ListRecommendations on L<Paws::DevOpsGuru>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRecommendations on the
L<Amazon DevOps Guru|Paws::DevOpsGuru> service. Use the attributes of this class
as arguments to method ListRecommendations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRecommendations.

=head1 SYNOPSIS

    my $devops-guru = Paws->service('DevOpsGuru');
    my $ListRecommendationsResponse = $devops -guru->ListRecommendations(
      InsightId => 'MyInsightId',
      Locale    => 'DE_DE',              # OPTIONAL
      NextToken => 'MyUuidNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken       = $ListRecommendationsResponse->NextToken;
    my $Recommendations = $ListRecommendationsResponse->Recommendations;

    # Returns a L<Paws::DevOpsGuru::ListRecommendationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devops-guru/ListRecommendations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InsightId => Str

The ID of the requested insight.



=head2 Locale => Str

A locale that specifies the language to use for recommendations.

Valid values are: C<"DE_DE">, C<"EN_US">, C<"EN_GB">, C<"ES_ES">, C<"FR_FR">, C<"IT_IT">, C<"JA_JP">, C<"KO_KR">, C<"PT_BR">, C<"ZH_CN">, C<"ZH_TW">

=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRecommendations in L<Paws::DevOpsGuru>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

