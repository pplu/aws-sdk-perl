
package Paws::WorkDocs::DescribeNotificationSubscriptions;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit');
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'marker');
  has OrganizationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'OrganizationId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNotificationSubscriptions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/organizations/{OrganizationId}/subscriptions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkDocs::DescribeNotificationSubscriptionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::DescribeNotificationSubscriptions - Arguments for method DescribeNotificationSubscriptions on L<Paws::WorkDocs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeNotificationSubscriptions on the
L<Amazon WorkDocs|Paws::WorkDocs> service. Use the attributes of this class
as arguments to method DescribeNotificationSubscriptions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeNotificationSubscriptions.

=head1 SYNOPSIS

    my $workdocs = Paws->service('WorkDocs');
    my $DescribeNotificationSubscriptionsResponse =
      $workdocs->DescribeNotificationSubscriptions(
      OrganizationId => 'MyIdType',
      Limit          => 1,                     # OPTIONAL
      Marker         => 'MyPageMarkerType',    # OPTIONAL
      );

    # Results:
    my $Marker = $DescribeNotificationSubscriptionsResponse->Marker;
    my $Subscriptions =
      $DescribeNotificationSubscriptionsResponse->Subscriptions;

# Returns a L<Paws::WorkDocs::DescribeNotificationSubscriptionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workdocs/DescribeNotificationSubscriptions>

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of items to return with this call.



=head2 Marker => Str

The marker for the next set of results. (You received this marker from
a previous call.)



=head2 B<REQUIRED> OrganizationId => Str

The ID of the organization.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeNotificationSubscriptions in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

