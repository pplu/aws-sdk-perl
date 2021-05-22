
package Paws::SecurityHub::ListOrganizationAdminAccounts;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOrganizationAdminAccounts');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/organization/admin');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::ListOrganizationAdminAccountsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ListOrganizationAdminAccounts - Arguments for method ListOrganizationAdminAccounts on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOrganizationAdminAccounts on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method ListOrganizationAdminAccounts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOrganizationAdminAccounts.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $ListOrganizationAdminAccountsResponse =
      $securityhub->ListOrganizationAdminAccounts(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $AdminAccounts = $ListOrganizationAdminAccountsResponse->AdminAccounts;
    my $NextToken     = $ListOrganizationAdminAccountsResponse->NextToken;

 # Returns a L<Paws::SecurityHub::ListOrganizationAdminAccountsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/ListOrganizationAdminAccounts>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to return in the response.



=head2 NextToken => Str

The token that is required for pagination. On your first call to the
C<ListOrganizationAdminAccounts> operation, set the value of this
parameter to C<NULL>. For subsequent calls to the operation, to
continue listing data, set the value of this parameter to the value
returned from the previous response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOrganizationAdminAccounts in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

