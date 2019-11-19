# Generated from callargs_class.tt

package Paws::RDS::DeleteInstallationMedia;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDS::Types qw//;
  has InstallationMediaId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DeleteInstallationMedia');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RDS::InstallationMedia');
  class_has _result_key => (isa => Str, is => 'ro', default => 'DeleteInstallationMediaResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InstallationMediaId' => {
                                          'type' => 'Str'
                                        }
             },
  'IsRequired' => {
                    'InstallationMediaId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DeleteInstallationMedia - Arguments for method DeleteInstallationMedia on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteInstallationMedia on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method DeleteInstallationMedia.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteInstallationMedia.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $InstallationMedia = $rds->DeleteInstallationMedia(
      InstallationMediaId => 'MyString',

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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/DeleteInstallationMedia>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstallationMediaId => Str

The installation medium ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteInstallationMedia in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

