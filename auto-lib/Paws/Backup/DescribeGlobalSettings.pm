
package Paws::Backup::DescribeGlobalSettings;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeGlobalSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-settings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::DescribeGlobalSettingsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::DescribeGlobalSettings - Arguments for method DescribeGlobalSettings on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeGlobalSettings on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method DescribeGlobalSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeGlobalSettings.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $DescribeGlobalSettingsOutput = $backup->DescribeGlobalSettings();

    # Results:
    my $GlobalSettings = $DescribeGlobalSettingsOutput->GlobalSettings;
    my $LastUpdateTime = $DescribeGlobalSettingsOutput->LastUpdateTime;

    # Returns a L<Paws::Backup::DescribeGlobalSettingsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/DescribeGlobalSettings>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeGlobalSettings in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

