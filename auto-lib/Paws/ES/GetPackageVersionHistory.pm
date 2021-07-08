
package Paws::ES::GetPackageVersionHistory;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has PackageID => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'PackageID', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPackageVersionHistory');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/packages/{PackageID}/history');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::GetPackageVersionHistoryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::GetPackageVersionHistory - Arguments for method GetPackageVersionHistory on L<Paws::ES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPackageVersionHistory on the
L<Amazon Elasticsearch Service|Paws::ES> service. Use the attributes of this class
as arguments to method GetPackageVersionHistory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPackageVersionHistory.

=head1 SYNOPSIS

    my $es = Paws->service('ES');
    my $GetPackageVersionHistoryResponse = $es->GetPackageVersionHistory(
      PackageID  => 'MyPackageID',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $GetPackageVersionHistoryResponse->NextToken;
    my $PackageID = $GetPackageVersionHistoryResponse->PackageID;
    my $PackageVersionHistoryList =
      $GetPackageVersionHistoryResponse->PackageVersionHistoryList;

    # Returns a L<Paws::ES::GetPackageVersionHistoryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/es/GetPackageVersionHistory>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Limits results to a maximum number of versions.



=head2 NextToken => Str

Used for pagination. Only necessary if a previous API call includes a
non-null NextToken value. If provided, returns results for the next
page.



=head2 B<REQUIRED> PackageID => Str

Returns an audit history of versions of the package.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPackageVersionHistory in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

