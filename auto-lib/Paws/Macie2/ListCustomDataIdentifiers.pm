
package Paws::Macie2::ListCustomDataIdentifiers;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCustomDataIdentifiers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/custom-data-identifiers/list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::ListCustomDataIdentifiersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::ListCustomDataIdentifiers - Arguments for method ListCustomDataIdentifiers on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCustomDataIdentifiers on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method ListCustomDataIdentifiers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCustomDataIdentifiers.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $ListCustomDataIdentifiersResponse = $macie2->ListCustomDataIdentifiers(
      MaxResults => 1,               # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListCustomDataIdentifiersResponse->Items;
    my $NextToken = $ListCustomDataIdentifiersResponse->NextToken;

    # Returns a L<Paws::Macie2::ListCustomDataIdentifiersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/ListCustomDataIdentifiers>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to include in each page of the response.



=head2 NextToken => Str

The nextToken string that specifies which page of results to return in
a paginated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCustomDataIdentifiers in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

