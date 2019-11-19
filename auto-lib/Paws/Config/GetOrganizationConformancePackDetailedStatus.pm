# Generated from json/callargs_class.tt

package Paws::Config::GetOrganizationConformancePackDetailedStatus;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Config::Types qw/Config_OrganizationResourceDetailedStatusFilters/;
  has Filters => (is => 'ro', isa => Config_OrganizationResourceDetailedStatusFilters, predicate => 1);
  has Limit => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has OrganizationConformancePackName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetOrganizationConformancePackDetailedStatus');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Config::GetOrganizationConformancePackDetailedStatusResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OrganizationConformancePackName' => {
                                                      'type' => 'Str'
                                                    },
               'Limit' => {
                            'type' => 'Int'
                          },
               'Filters' => {
                              'class' => 'Paws::Config::OrganizationResourceDetailedStatusFilters',
                              'type' => 'Config_OrganizationResourceDetailedStatusFilters'
                            },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'OrganizationConformancePackName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetOrganizationConformancePackDetailedStatus - Arguments for method GetOrganizationConformancePackDetailedStatus on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetOrganizationConformancePackDetailedStatus on the
L<AWS Config|Paws::Config> service. Use the attributes of this class
as arguments to method GetOrganizationConformancePackDetailedStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetOrganizationConformancePackDetailedStatus.

=head1 SYNOPSIS

    my $config = Paws->service('Config');
    my $GetOrganizationConformancePackDetailedStatusResponse =
      $config->GetOrganizationConformancePackDetailedStatus(
      OrganizationConformancePackName => 'MyOrganizationConformancePackName',
      Filters                         => {
        AccountId => 'MyAccountId',        # OPTIONAL
        Status    => 'CREATE_SUCCESSFUL'
        , # values: CREATE_SUCCESSFUL, CREATE_IN_PROGRESS, CREATE_FAILED, DELETE_SUCCESSFUL, DELETE_FAILED, DELETE_IN_PROGRESS, UPDATE_SUCCESSFUL, UPDATE_IN_PROGRESS, UPDATE_FAILED; OPTIONAL
      },    # OPTIONAL
      Limit     => 1,             # OPTIONAL
      NextToken => 'MyString',    # OPTIONAL
      );

    # Results:
    my $NextToken =
      $GetOrganizationConformancePackDetailedStatusResponse->NextToken;
    my $OrganizationConformancePackDetailedStatuses =
      $GetOrganizationConformancePackDetailedStatusResponse
      ->OrganizationConformancePackDetailedStatuses;

# Returns a L<Paws::Config::GetOrganizationConformancePackDetailedStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/config/GetOrganizationConformancePackDetailedStatus>

=head1 ATTRIBUTES


=head2 Filters => Config_OrganizationResourceDetailedStatusFilters

An C<OrganizationResourceDetailedStatusFilters> object.



=head2 Limit => Int

The maximum number of C<OrganizationConformancePackDetailedStatuses>
returned on each page. If you do not specify a number, AWS Config uses
the default. The default is 100.



=head2 NextToken => Str

The nextToken string returned on a previous page that you use to get
the next page of results in a paginated response.



=head2 B<REQUIRED> OrganizationConformancePackName => Str

The name of organization conformance pack for which you want status
details for member accounts.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetOrganizationConformancePackDetailedStatus in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

