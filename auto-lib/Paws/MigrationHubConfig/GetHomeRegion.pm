
package Paws::MigrationHubConfig::GetHomeRegion;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetHomeRegion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubConfig::GetHomeRegionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubConfig::GetHomeRegion - Arguments for method GetHomeRegion on L<Paws::MigrationHubConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetHomeRegion on the
L<AWS Migration Hub Config|Paws::MigrationHubConfig> service. Use the attributes of this class
as arguments to method GetHomeRegion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetHomeRegion.

=head1 SYNOPSIS

    my $migrationhub-config = Paws->service('MigrationHubConfig');
    my $GetHomeRegionResult = $migrationhub -config->GetHomeRegion();

    # Results:
    my $HomeRegion = $GetHomeRegionResult->HomeRegion;

    # Returns a L<Paws::MigrationHubConfig::GetHomeRegionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-config/GetHomeRegion>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetHomeRegion in L<Paws::MigrationHubConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

