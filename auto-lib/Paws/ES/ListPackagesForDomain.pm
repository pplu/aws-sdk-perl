
package Paws::ES::ListPackagesForDomain;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPackagesForDomain');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/domain/{DomainName}/packages');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::ListPackagesForDomainResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::ListPackagesForDomain - Arguments for method ListPackagesForDomain on L<Paws::ES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPackagesForDomain on the
L<Amazon Elasticsearch Service|Paws::ES> service. Use the attributes of this class
as arguments to method ListPackagesForDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPackagesForDomain.

=head1 SYNOPSIS

    my $es = Paws->service('ES');
    my $ListPackagesForDomainResponse = $es->ListPackagesForDomain(
      DomainName => 'MyDomainName',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $DomainPackageDetailsList =
      $ListPackagesForDomainResponse->DomainPackageDetailsList;
    my $NextToken = $ListPackagesForDomainResponse->NextToken;

    # Returns a L<Paws::ES::ListPackagesForDomainResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/es/ListPackagesForDomain>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The name of the domain for which you want to list associated packages.



=head2 MaxResults => Int

Limits results to a maximum number of packages.



=head2 NextToken => Str

Used for pagination. Only necessary if a previous API call includes a
non-null NextToken value. If provided, returns results for the next
page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPackagesForDomain in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

