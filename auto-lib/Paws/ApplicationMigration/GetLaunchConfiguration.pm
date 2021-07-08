
package Paws::ApplicationMigration::GetLaunchConfiguration;
  use Moose;
  has SourceServerID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceServerID', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLaunchConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetLaunchConfiguration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::LaunchConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::GetLaunchConfiguration - Arguments for method GetLaunchConfiguration on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLaunchConfiguration on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method GetLaunchConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLaunchConfiguration.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $LaunchConfiguration = $mgn->GetLaunchConfiguration(
      SourceServerID => 'MySourceServerID',

    );

    # Results:
    my $CopyPrivateIp       = $LaunchConfiguration->CopyPrivateIp;
    my $CopyTags            = $LaunchConfiguration->CopyTags;
    my $Ec2LaunchTemplateID = $LaunchConfiguration->Ec2LaunchTemplateID;
    my $LaunchDisposition   = $LaunchConfiguration->LaunchDisposition;
    my $Licensing           = $LaunchConfiguration->Licensing;
    my $Name                = $LaunchConfiguration->Name;
    my $SourceServerID      = $LaunchConfiguration->SourceServerID;
    my $TargetInstanceTypeRightSizingMethod =
      $LaunchConfiguration->TargetInstanceTypeRightSizingMethod;

    # Returns a L<Paws::ApplicationMigration::LaunchConfiguration> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/GetLaunchConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceServerID => Str

Request to get Launch Configuration information by Source Server ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLaunchConfiguration in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

