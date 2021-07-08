
package Paws::GuardDuty::ListOrganizationAdminAccounts;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOrganizationAdminAccounts');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/admin');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::ListOrganizationAdminAccountsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListOrganizationAdminAccounts - Arguments for method ListOrganizationAdminAccounts on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOrganizationAdminAccounts on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method ListOrganizationAdminAccounts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOrganizationAdminAccounts.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $ListOrganizationAdminAccountsResponse =
      $guardduty->ListOrganizationAdminAccounts(
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
      );

    # Results:
    my $AdminAccounts = $ListOrganizationAdminAccountsResponse->AdminAccounts;
    my $NextToken     = $ListOrganizationAdminAccountsResponse->NextToken;

   # Returns a L<Paws::GuardDuty::ListOrganizationAdminAccountsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/ListOrganizationAdminAccounts>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in the response.



=head2 NextToken => Str

A token to use for paginating results that are returned in the
response. Set the value of this parameter to null for the first request
to a list action. For subsequent calls, use the C<NextToken> value
returned from the previous request to continue listing results after
the first page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOrganizationAdminAccounts in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

