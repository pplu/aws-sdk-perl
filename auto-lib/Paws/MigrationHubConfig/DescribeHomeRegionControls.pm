
package Paws::MigrationHubConfig::DescribeHomeRegionControls;
  use Moose;
  has ControlId => (is => 'ro', isa => 'Str');
  has HomeRegion => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Target => (is => 'ro', isa => 'Paws::MigrationHubConfig::Target');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeHomeRegionControls');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubConfig::DescribeHomeRegionControlsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubConfig::DescribeHomeRegionControls - Arguments for method DescribeHomeRegionControls on L<Paws::MigrationHubConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeHomeRegionControls on the
L<AWS Migration Hub Config|Paws::MigrationHubConfig> service. Use the attributes of this class
as arguments to method DescribeHomeRegionControls.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeHomeRegionControls.

=head1 SYNOPSIS

    my $migrationhub-config = Paws->service('MigrationHubConfig');
    my $DescribeHomeRegionControlsResult =
      $migrationhub -config->DescribeHomeRegionControls(
      ControlId  => 'MyControlId',     # OPTIONAL
      HomeRegion => 'MyHomeRegion',    # OPTIONAL
      MaxResults => 1,                 # OPTIONAL
      NextToken  => 'MyToken',         # OPTIONAL
      Target     => {
        Type => 'ACCOUNT',             # values: ACCOUNT
        Id   => 'MyTargetId',          # min: 12, max: 12; OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $HomeRegionControls =
      $DescribeHomeRegionControlsResult->HomeRegionControls;
    my $NextToken = $DescribeHomeRegionControlsResult->NextToken;

# Returns a L<Paws::MigrationHubConfig::DescribeHomeRegionControlsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-config/DescribeHomeRegionControls>

=head1 ATTRIBUTES


=head2 ControlId => Str

The C<ControlID> is a unique identifier string of your
C<HomeRegionControl> object.



=head2 HomeRegion => Str

The name of the home region you'd like to view.



=head2 MaxResults => Int

The maximum number of filtering results to display per page.



=head2 NextToken => Str

If a C<NextToken> was returned by a previous call, more results are
available. To retrieve the next page of results, make the call again
using the returned token in C<NextToken>.



=head2 Target => L<Paws::MigrationHubConfig::Target>

The target parameter specifies the identifier to which the home region
is applied, which is always of type C<ACCOUNT>. It applies the home
region to the current C<ACCOUNT>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeHomeRegionControls in L<Paws::MigrationHubConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

