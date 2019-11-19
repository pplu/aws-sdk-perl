# Generated from callargs_class.tt

package Paws::RDS::ImportInstallationMedia;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDS::Types qw//;
  has CustomAvailabilityZoneId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Engine => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has EngineInstallationMediaPath => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has EngineVersion => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has OSInstallationMediaPath => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ImportInstallationMedia');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RDS::InstallationMedia');
  class_has _result_key => (isa => Str, is => 'ro', default => 'ImportInstallationMediaResult');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'EngineInstallationMediaPath' => 1,
                    'CustomAvailabilityZoneId' => 1,
                    'Engine' => 1,
                    'OSInstallationMediaPath' => 1,
                    'EngineVersion' => 1
                  },
  'types' => {
               'CustomAvailabilityZoneId' => {
                                               'type' => 'Str'
                                             },
               'Engine' => {
                             'type' => 'Str'
                           },
               'OSInstallationMediaPath' => {
                                              'type' => 'Str'
                                            },
               'EngineInstallationMediaPath' => {
                                                  'type' => 'Str'
                                                },
               'EngineVersion' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ImportInstallationMedia - Arguments for method ImportInstallationMedia on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportInstallationMedia on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method ImportInstallationMedia.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportInstallationMedia.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $InstallationMedia = $rds->ImportInstallationMedia(
      CustomAvailabilityZoneId    => 'MyString',
      Engine                      => 'MyString',
      EngineInstallationMediaPath => 'MyString',
      EngineVersion               => 'MyString',
      OSInstallationMediaPath     => 'MyString',

    );

    # Results:
    my $CustomAvailabilityZoneId = $InstallationMedia->CustomAvailabilityZoneId;
    my $Engine                   = $InstallationMedia->Engine;
    my $EngineInstallationMediaPath =
      $InstallationMedia->EngineInstallationMediaPath;
    my $EngineVersion           = $InstallationMedia->EngineVersion;
    my $FailureCause            = $InstallationMedia->FailureCause;
    my $InstallationMediaId     = $InstallationMedia->InstallationMediaId;
    my $OSInstallationMediaPath = $InstallationMedia->OSInstallationMediaPath;
    my $Status                  = $InstallationMedia->Status;

    # Returns a L<Paws::RDS::InstallationMedia> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ImportInstallationMedia>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CustomAvailabilityZoneId => Str

The identifier of the custom Availability Zone (AZ) to import the
installation media to.



=head2 B<REQUIRED> Engine => Str

The name of the database engine to be used for this instance.

The list only includes supported DB engines that require an on-premises
customer provided license.

Valid Values:

=over

=item *

C<sqlserver-ee>

=item *

C<sqlserver-se>

=item *

C<sqlserver-ex>

=item *

C<sqlserver-web>

=back




=head2 B<REQUIRED> EngineInstallationMediaPath => Str

The path to the installation medium for the specified DB engine.

Example:
C<SQLServerISO/en_sql_server_2016_enterprise_x64_dvd_8701793.iso>



=head2 B<REQUIRED> EngineVersion => Str

The version number of the database engine to use.

For a list of valid engine versions, call DescribeDBEngineVersions.

The following are the database engines and links to information about
the major and minor versions. The list only includes DB engines that
require an on-premises customer provided license.

B<Microsoft SQL Server>

See Version and Feature Support on Amazon RDS
(https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_SQLServer.html#SQLServer.Concepts.General.FeatureSupport)
in the I<Amazon RDS User Guide.>



=head2 B<REQUIRED> OSInstallationMediaPath => Str

The path to the installation medium for the operating system associated
with the specified DB engine.

Example: C<WindowsISO/en_windows_server_2016_x64_dvd_9327751.iso>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportInstallationMedia in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

