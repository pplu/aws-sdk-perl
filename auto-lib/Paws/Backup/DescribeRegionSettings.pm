
package Paws::Backup::DescribeRegionSettings;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRegionSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/account-settings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::DescribeRegionSettingsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::DescribeRegionSettings - Arguments for method DescribeRegionSettings on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRegionSettings on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method DescribeRegionSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRegionSettings.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $DescribeRegionSettingsOutput = $backup->DescribeRegionSettings();

    # Results:
    my $ResourceTypeOptInPreference =
      $DescribeRegionSettingsOutput->ResourceTypeOptInPreference;

    # Returns a L<Paws::Backup::DescribeRegionSettingsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/DescribeRegionSettings>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRegionSettings in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

