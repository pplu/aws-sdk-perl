
package Paws::Quicksight::CreateDashboard;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has DashboardId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DashboardId', required => 1);
  has DashboardPublishOptions => (is => 'ro', isa => 'Paws::Quicksight::DashboardPublishOptions');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::Quicksight::Parameters');
  has Permissions => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::ResourcePermission]');
  has SourceEntity => (is => 'ro', isa => 'Paws::Quicksight::DashboardSourceEntity', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Quicksight::Tag]');
  has VersionDescription => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDashboard');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/dashboards/{DashboardId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::CreateDashboardResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::CreateDashboard - Arguments for method CreateDashboard on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDashboard on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method CreateDashboard.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDashboard.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $CreateDashboardResponse = $quicksight->CreateDashboard(
      AwsAccountId => 'MyAwsAccountId',
      DashboardId  => 'MyRestrictiveResourceId',
      Name         => 'MyDashboardName',
      SourceEntity => {
        SourceTemplate => {
          Arn               => 'MyArn',
          DataSetReferences => [
            {
              DataSetArn         => 'MyArn',
              DataSetPlaceholder => 'MyNonEmptyString',

            },
            ...
          ],    # min: 1

        },    # OPTIONAL
      },
      DashboardPublishOptions => {
        AdHocFilteringOption => {
          AvailabilityStatus => 'ENABLED', # values: ENABLED, DISABLED; OPTIONAL
        },    # OPTIONAL
        ExportToCSVOption => {
          AvailabilityStatus => 'ENABLED', # values: ENABLED, DISABLED; OPTIONAL
        },    # OPTIONAL
        SheetControlsOption => {
          VisibilityState => 'EXPANDED', # values: EXPANDED, COLLAPSED; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Parameters => {
        DateTimeParameters => [
          {
            Name   => 'MyNonEmptyString',
            Values => [ '1970-01-01T01:00:00', ... ],

          },
          ...
        ],    # max: 100; OPTIONAL
        DecimalParameters => [
          {
            Name   => 'MyNonEmptyString',
            Values => [ 1, ... ],

          },
          ...
        ],    # max: 100; OPTIONAL
        IntegerParameters => [
          {
            Name   => 'MyNonEmptyString',
            Values => [ 1, ... ],

          },
          ...
        ],    # max: 100; OPTIONAL
        StringParameters => [
          {
            Name   => 'MyNonEmptyString',
            Values => [ 'MyString', ... ],

          },
          ...
        ],    # max: 100; OPTIONAL
      },    # OPTIONAL
      Permissions => [
        {
          Actions   => [ 'MyString', ... ],    # min: 1, max: 16
          Principal => 'MyPrincipal',          # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
      VersionDescription => 'MyVersionDescription',    # OPTIONAL
    );

    # Results:
    my $Arn            = $CreateDashboardResponse->Arn;
    my $CreationStatus = $CreateDashboardResponse->CreationStatus;
    my $DashboardId    = $CreateDashboardResponse->DashboardId;
    my $RequestId      = $CreateDashboardResponse->RequestId;
    my $Status         = $CreateDashboardResponse->Status;
    my $VersionArn     = $CreateDashboardResponse->VersionArn;

    # Returns a L<Paws::Quicksight::CreateDashboardResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/CreateDashboard>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account where you want to create the dashboard.



=head2 B<REQUIRED> DashboardId => Str

The ID for the dashboard, also added to the IAM policy.



=head2 DashboardPublishOptions => L<Paws::Quicksight::DashboardPublishOptions>

Options for publishing the dashboard when you create it:

=over

=item *

C<AvailabilityStatus> for C<AdHocFilteringOption> - This status can be
either C<ENABLED> or C<DISABLED>. When this is set to C<DISABLED>,
QuickSight disables the left filter pane on the published dashboard,
which can be used for ad hoc (one-time) filtering. This option is
C<ENABLED> by default.

=item *

C<AvailabilityStatus> for C<ExportToCSVOption> - This status can be
either C<ENABLED> or C<DISABLED>. The visual option to export data to
.csv format isn't enabled when this is set to C<DISABLED>. This option
is C<ENABLED> by default.

=item *

C<VisibilityState> for C<SheetControlsOption> - This visibility state
can be either C<COLLAPSED> or C<EXPANDED>. The sheet controls pane is
collapsed by default when set to true. This option is C<COLLAPSED> by
default.

=back




=head2 B<REQUIRED> Name => Str

The display name of the dashboard.



=head2 Parameters => L<Paws::Quicksight::Parameters>

A structure that contains the parameters of the dashboard. These are
parameter overrides for a dashboard. A dashboard can have any type of
parameters, and some parameters might accept multiple values. You can
use the dashboard permissions structure described following to override
two string parameters that accept multiple values.



=head2 Permissions => ArrayRef[L<Paws::Quicksight::ResourcePermission>]

A structure that contains the permissions of the dashboard. You can use
this structure for granting permissions with principal and action
information.



=head2 B<REQUIRED> SourceEntity => L<Paws::Quicksight::DashboardSourceEntity>

The source entity from which the dashboard is created. The source
entity accepts the Amazon Resource Name (ARN) of the source template or
analysis and also references the replacement datasets for the
placeholders set when creating the template. The replacement datasets
need to follow the same schema as the datasets for which placeholders
were created when creating the template.

If you are creating a dashboard from a source entity in a different AWS
account, use the ARN of the source template.



=head2 Tags => ArrayRef[L<Paws::Quicksight::Tag>]

Contains a map of the key-value pairs for the resource tag or tags
assigned to the dashboard.



=head2 VersionDescription => Str

A description for the first version of the dashboard being created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDashboard in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

