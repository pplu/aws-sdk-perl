
package Paws::MigrationHubConfig::CreateHomeRegionControl;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has HomeRegion => (is => 'ro', isa => 'Str', required => 1);
  has Target => (is => 'ro', isa => 'Paws::MigrationHubConfig::Target', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHomeRegionControl');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubConfig::CreateHomeRegionControlResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubConfig::CreateHomeRegionControl - Arguments for method CreateHomeRegionControl on L<Paws::MigrationHubConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateHomeRegionControl on the
L<AWS Migration Hub Config|Paws::MigrationHubConfig> service. Use the attributes of this class
as arguments to method CreateHomeRegionControl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateHomeRegionControl.

=head1 SYNOPSIS

    my $migrationhub-config = Paws->service('MigrationHubConfig');
    my $CreateHomeRegionControlResult =
      $migrationhub -config->CreateHomeRegionControl(
      HomeRegion => 'MyHomeRegion',
      Target     => {
        Type => 'ACCOUNT',       # values: ACCOUNT
        Id   => 'MyTargetId',    # min: 12, max: 12; OPTIONAL
      },
      DryRun => 1,               # OPTIONAL
      );

    # Results:
    my $HomeRegionControl = $CreateHomeRegionControlResult->HomeRegionControl;

  # Returns a L<Paws::MigrationHubConfig::CreateHomeRegionControlResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-config/CreateHomeRegionControl>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Optional Boolean flag to indicate whether any effect should take place.
It tests whether the caller has permission to make the call.



=head2 B<REQUIRED> HomeRegion => Str

The name of the home region of the calling account.



=head2 B<REQUIRED> Target => L<Paws::MigrationHubConfig::Target>

The account for which this command sets up a home region control. The
C<Target> is always of type C<ACCOUNT>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateHomeRegionControl in L<Paws::MigrationHubConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

