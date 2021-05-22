
package Paws::CustomerProfiles::ListProfileObjectTypeTemplates;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProfileObjectTypeTemplates');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/templates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::ListProfileObjectTypeTemplatesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::ListProfileObjectTypeTemplates - Arguments for method ListProfileObjectTypeTemplates on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProfileObjectTypeTemplates on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method ListProfileObjectTypeTemplates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProfileObjectTypeTemplates.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $ListProfileObjectTypeTemplatesResponse =
      $profile->ListProfileObjectTypeTemplates(
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'Mytoken',    # OPTIONAL
      );

    # Results:
    my $Items     = $ListProfileObjectTypeTemplatesResponse->Items;
    my $NextToken = $ListProfileObjectTypeTemplatesResponse->NextToken;

# Returns a L<Paws::CustomerProfiles::ListProfileObjectTypeTemplatesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/ListProfileObjectTypeTemplates>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of objects returned per page.



=head2 NextToken => Str

The pagination token from the previous ListObjectTypeTemplates API
call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProfileObjectTypeTemplates in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

