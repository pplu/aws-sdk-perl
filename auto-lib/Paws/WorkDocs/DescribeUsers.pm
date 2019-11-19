
package Paws::WorkDocs::DescribeUsers;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::WorkDocs::Types qw//;
  has AuthenticationToken => (is => 'ro', isa => Str, predicate => 1);
  has Fields => (is => 'ro', isa => Str, predicate => 1);
  has Include => (is => 'ro', isa => Str, predicate => 1);
  has Limit => (is => 'ro', isa => Int, predicate => 1);
  has Marker => (is => 'ro', isa => Str, predicate => 1);
  has Order => (is => 'ro', isa => Str, predicate => 1);
  has OrganizationId => (is => 'ro', isa => Str, predicate => 1);
  has Query => (is => 'ro', isa => Str, predicate => 1);
  has Sort => (is => 'ro', isa => Str, predicate => 1);
  has UserIds => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeUsers');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/api/v1/users');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WorkDocs::DescribeUsersResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Sort' => {
                           'type' => 'Str'
                         },
               'UserIds' => {
                              'type' => 'Str'
                            },
               'Marker' => {
                             'type' => 'Str'
                           },
               'AuthenticationToken' => {
                                          'type' => 'Str'
                                        },
               'Query' => {
                            'type' => 'Str'
                          },
               'Fields' => {
                             'type' => 'Str'
                           },
               'OrganizationId' => {
                                     'type' => 'Str'
                                   },
               'Order' => {
                            'type' => 'Str'
                          },
               'Include' => {
                              'type' => 'Str'
                            },
               'Limit' => {
                            'type' => 'Int'
                          }
             },
  'ParamInQuery' => {
                      'Marker' => 'marker',
                      'Query' => 'query',
                      'UserIds' => 'userIds',
                      'Sort' => 'sort',
                      'OrganizationId' => 'organizationId',
                      'Fields' => 'fields',
                      'Order' => 'order',
                      'Limit' => 'limit',
                      'Include' => 'include'
                    },
  'ParamInHeader' => {
                       'AuthenticationToken' => 'Authentication'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::DescribeUsers - Arguments for method DescribeUsers on L<Paws::WorkDocs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeUsers on the
L<Amazon WorkDocs|Paws::WorkDocs> service. Use the attributes of this class
as arguments to method DescribeUsers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeUsers.

=head1 SYNOPSIS

    my $workdocs = Paws->service('WorkDocs');
    my $DescribeUsersResponse = $workdocs->DescribeUsers(
      AuthenticationToken => 'MyAuthenticationHeaderType',    # OPTIONAL
      Fields              => 'MyFieldNamesType',              # OPTIONAL
      Include             => 'ALL',                           # OPTIONAL
      Limit               => 1,                               # OPTIONAL
      Marker              => 'MyPageMarkerType',              # OPTIONAL
      Order               => 'ASCENDING',                     # OPTIONAL
      OrganizationId      => 'MyIdType',                      # OPTIONAL
      Query               => 'MySearchQueryType',             # OPTIONAL
      Sort                => 'USER_NAME',                     # OPTIONAL
      UserIds             => 'MyUserIdsType',                 # OPTIONAL
    );

    # Results:
    my $Marker             = $DescribeUsersResponse->Marker;
    my $TotalNumberOfUsers = $DescribeUsersResponse->TotalNumberOfUsers;
    my $Users              = $DescribeUsersResponse->Users;

    # Returns a L<Paws::WorkDocs::DescribeUsersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workdocs/DescribeUsers>

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. Do not set this field when using
administrative API actions, as in accessing the API using AWS
credentials.



=head2 Fields => Str

A comma-separated list of values. Specify "STORAGE_METADATA" to include
the user storage quota and utilization information.



=head2 Include => Str

The state of the users. Specify "ALL" to include inactive users.

Valid values are: C<"ALL">, C<"ACTIVE_PENDING">

=head2 Limit => Int

The maximum number of items to return.



=head2 Marker => Str

The marker for the next set of results. (You received this marker from
a previous call.)



=head2 Order => Str

The order for the results.

Valid values are: C<"ASCENDING">, C<"DESCENDING">

=head2 OrganizationId => Str

The ID of the organization.



=head2 Query => Str

A query to filter users by user name.



=head2 Sort => Str

The sorting criteria.

Valid values are: C<"USER_NAME">, C<"FULL_NAME">, C<"STORAGE_LIMIT">, C<"USER_STATUS">, C<"STORAGE_USED">

=head2 UserIds => Str

The IDs of the users.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeUsers in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

