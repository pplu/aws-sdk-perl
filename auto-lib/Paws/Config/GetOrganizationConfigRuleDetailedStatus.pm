
package Paws::Config::GetOrganizationConfigRuleDetailedStatus;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::Config::StatusDetailFilters');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OrganizationConfigRuleName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetOrganizationConfigRuleDetailedStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::GetOrganizationConfigRuleDetailedStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetOrganizationConfigRuleDetailedStatus - Arguments for method GetOrganizationConfigRuleDetailedStatus on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetOrganizationConfigRuleDetailedStatus on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method GetOrganizationConfigRuleDetailedStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetOrganizationConfigRuleDetailedStatus.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $GetOrganizationConfigRuleDetailedStatusResponse =
      $config->GetOrganizationConfigRuleDetailedStatus(
      OrganizationConfigRuleName => 'MyOrganizationConfigRuleName',
      Filters                    => {
        AccountId               => 'MyAccountId',        # OPTIONAL
        MemberAccountRuleStatus => 'CREATE_SUCCESSFUL'
        , # values: CREATE_SUCCESSFUL, CREATE_IN_PROGRESS, CREATE_FAILED, UPDATE_SUCCESSFUL, UPDATE_FAILED, UPDATE_IN_PROGRESS, DELETE_SUCCESSFUL, DELETE_FAILED, DELETE_IN_PROGRESS; OPTIONAL
      },    # OPTIONAL
      Limit     => 1,             # OPTIONAL
      NextToken => 'MyString',    # OPTIONAL
      );

    # Results:
    my $NextToken = $GetOrganizationConfigRuleDetailedStatusResponse->NextToken;
    my $OrganizationConfigRuleDetailedStatus =
      $GetOrganizationConfigRuleDetailedStatusResponse
      ->OrganizationConfigRuleDetailedStatus;

# Returns a L<Paws::Config::GetOrganizationConfigRuleDetailedStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/GetOrganizationConfigRuleDetailedStatus>

=head1 ATTRIBUTES


=head2 Filters => L<Paws::Config::StatusDetailFilters>

A C<StatusDetailFilters> object.



=head2 Limit => Int

The maximum number of C<OrganizationConfigRuleDetailedStatus> returned
on each page. If you do not specify a number, AWS Config uses the
default. The default is 100.



=head2 NextToken => Str

The C<nextToken> string returned on a previous page that you use to get
the next page of results in a paginated response.



=head2 B<REQUIRED> OrganizationConfigRuleName => Str

The name of organization config rule for which you want status details
for member accounts.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetOrganizationConfigRuleDetailedStatus in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

