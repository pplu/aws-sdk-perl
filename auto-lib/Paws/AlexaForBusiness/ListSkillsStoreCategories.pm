
package Paws::AlexaForBusiness::ListSkillsStoreCategories;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSkillsStoreCategories');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::ListSkillsStoreCategoriesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::ListSkillsStoreCategories - Arguments for method ListSkillsStoreCategories on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSkillsStoreCategories on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method ListSkillsStoreCategories.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSkillsStoreCategories.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $ListSkillsStoreCategoriesResponse = $a4b->ListSkillsStoreCategories(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $CategoryList = $ListSkillsStoreCategoriesResponse->CategoryList;
    my $NextToken    = $ListSkillsStoreCategoriesResponse->NextToken;

# Returns a L<Paws::AlexaForBusiness::ListSkillsStoreCategoriesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/ListSkillsStoreCategories>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of categories returned, per paginated calls.



=head2 NextToken => Str

The tokens used for pagination.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSkillsStoreCategories in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

