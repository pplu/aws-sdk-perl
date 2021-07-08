
package Paws::AuditManager::ListKeywordsForDataSource;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Source => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'source', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListKeywordsForDataSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/dataSourceKeywords');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::ListKeywordsForDataSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::ListKeywordsForDataSource - Arguments for method ListKeywordsForDataSource on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListKeywordsForDataSource on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method ListKeywordsForDataSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListKeywordsForDataSource.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $ListKeywordsForDataSourceResponse =
      $auditmanager->ListKeywordsForDataSource(
      Source     => 'AWS_Cloudtrail',
      MaxResults => 1,                  # OPTIONAL
      NextToken  => 'MyToken',          # OPTIONAL
      );

    # Results:
    my $Keywords  = $ListKeywordsForDataSourceResponse->Keywords;
    my $NextToken = $ListKeywordsForDataSourceResponse->NextToken;

    # Returns a L<Paws::AuditManager::ListKeywordsForDataSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/ListKeywordsForDataSource>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Represents the maximum number of results per page, or per API request
call.



=head2 NextToken => Str

The pagination token used to fetch the next set of results.



=head2 B<REQUIRED> Source => Str

The control mapping data source to which the keywords apply.

Valid values are: C<"AWS_Cloudtrail">, C<"AWS_Config">, C<"AWS_Security_Hub">, C<"AWS_API_Call">, C<"MANUAL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListKeywordsForDataSource in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

