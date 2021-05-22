
package Paws::CustomerProfiles::ListDomains;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDomains');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::ListDomainsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::ListDomains - Arguments for method ListDomains on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDomains on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method ListDomains.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDomains.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $ListDomainsResponse = $profile->ListDomains(
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'Mytoken',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListDomainsResponse->Items;
    my $NextToken = $ListDomainsResponse->NextToken;

    # Returns a L<Paws::CustomerProfiles::ListDomainsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/ListDomains>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of objects returned per page.



=head2 NextToken => Str

The pagination token from the previous ListDomain API call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDomains in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

