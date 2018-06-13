
package Paws::WorkDocs::DescribeResourcePermissions;
  use Moose;
  has AuthenticationToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Authentication');
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit');
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'marker');
  has PrincipalId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'principalId');
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeResourcePermissions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/resources/{ResourceId}/permissions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkDocs::DescribeResourcePermissionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::DescribeResourcePermissions - Arguments for method DescribeResourcePermissions on L<Paws::WorkDocs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeResourcePermissions on the
L<Amazon WorkDocs|Paws::WorkDocs> service. Use the attributes of this class
as arguments to method DescribeResourcePermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeResourcePermissions.

=head1 SYNOPSIS

    my $workdocs = Paws->service('WorkDocs');
    my $DescribeResourcePermissionsResponse =
      $workdocs->DescribeResourcePermissions(
      ResourceId          => 'MyResourceIdType',
      AuthenticationToken => 'MyAuthenticationHeaderType',    # OPTIONAL
      Limit               => 1,                               # OPTIONAL
      Marker              => 'MyPageMarkerType',              # OPTIONAL
      PrincipalId         => 'MyIdType',                      # OPTIONAL
      );

    # Results:
    my $Marker     = $DescribeResourcePermissionsResponse->Marker;
    my $Principals = $DescribeResourcePermissionsResponse->Principals;

    # Returns a L<Paws::WorkDocs::DescribeResourcePermissionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workdocs/DescribeResourcePermissions>

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. Do not set this field when using
administrative API actions, as in accessing the API using AWS
credentials.



=head2 Limit => Int

The maximum number of items to return with this call.



=head2 Marker => Str

The marker for the next set of results. (You received this marker from
a previous call)



=head2 PrincipalId => Str

The ID of the principal to filter permissions by.



=head2 B<REQUIRED> ResourceId => Str

The ID of the resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeResourcePermissions in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

