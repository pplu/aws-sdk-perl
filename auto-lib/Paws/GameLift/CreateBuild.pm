
package Paws::GameLift::CreateBuild;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has OperatingSystem => (is => 'ro', isa => 'Str');
  has StorageLocation => (is => 'ro', isa => 'Paws::GameLift::S3Location');
  has Version => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBuild');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::CreateBuildOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateBuild - Arguments for method CreateBuild on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBuild on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method CreateBuild.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBuild.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $CreateBuildOutput = $gamelift->CreateBuild(
      Name            => 'MyNonZeroAndMaxString',    # OPTIONAL
      OperatingSystem => 'WINDOWS_2012',             # OPTIONAL
      StorageLocation => {
        Bucket  => 'MyNonEmptyString',               # min: 1; OPTIONAL
        Key     => 'MyNonEmptyString',               # min: 1; OPTIONAL
        RoleArn => 'MyNonEmptyString',               # min: 1; OPTIONAL
      },    # OPTIONAL
      Version => 'MyNonZeroAndMaxString',    # OPTIONAL
    );

    # Results:
    my $Build             = $CreateBuildOutput->Build;
    my $StorageLocation   = $CreateBuildOutput->StorageLocation;
    my $UploadCredentials = $CreateBuildOutput->UploadCredentials;

    # Returns a L<Paws::GameLift::CreateBuildOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/CreateBuild>

=head1 ATTRIBUTES


=head2 Name => Str

Descriptive label that is associated with a build. Build names do not
need to be unique. You can use UpdateBuild to change this value later.



=head2 OperatingSystem => Str

Operating system that the game server binaries are built to run on.
This value determines the type of fleet resources that you can use for
this build. If your game build contains multiple executables, they all
must run on the same operating system. If an operating system is not
specified when creating a build, Amazon GameLift uses the default value
(WINDOWS_2012). This value cannot be changed later.

Valid values are: C<"WINDOWS_2012">, C<"AMAZON_LINUX">

=head2 StorageLocation => L<Paws::GameLift::S3Location>

Information indicating where your game build files are stored. Use this
parameter only when creating a build with files stored in an Amazon S3
bucket that you own. The storage location must specify an Amazon S3
bucket name and key, as well as a role ARN that you set up to allow
Amazon GameLift to access your Amazon S3 bucket. The S3 bucket must be
in the same region that you want to create a new build in.



=head2 Version => Str

Version that is associated with this build. Version strings do not need
to be unique. You can use UpdateBuild to change this value later.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBuild in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

