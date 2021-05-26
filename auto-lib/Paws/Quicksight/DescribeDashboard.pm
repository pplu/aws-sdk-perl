
package Paws::Quicksight::DescribeDashboard;
  use Moose;
  has AliasName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'alias-name');
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has DashboardId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DashboardId', required => 1);
  has VersionNumber => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'version-number');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDashboard');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/dashboards/{DashboardId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::DescribeDashboardResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeDashboard - Arguments for method DescribeDashboard on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDashboard on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method DescribeDashboard.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDashboard.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $DescribeDashboardResponse = $quicksight->DescribeDashboard(
      AwsAccountId  => 'MyAwsAccountId',
      DashboardId   => 'MyRestrictiveResourceId',
      AliasName     => 'MyAliasName',               # OPTIONAL
      VersionNumber => 1,                           # OPTIONAL
    );

    # Results:
    my $Dashboard = $DescribeDashboardResponse->Dashboard;
    my $RequestId = $DescribeDashboardResponse->RequestId;
    my $Status    = $DescribeDashboardResponse->Status;

    # Returns a L<Paws::Quicksight::DescribeDashboardResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/DescribeDashboard>

=head1 ATTRIBUTES


=head2 AliasName => Str

The alias name.



=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account that contains the dashboard that you're
describing.



=head2 B<REQUIRED> DashboardId => Str

The ID for the dashboard.



=head2 VersionNumber => Int

The version number for the dashboard. If a version number isn't passed,
the latest published dashboard version is described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDashboard in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

