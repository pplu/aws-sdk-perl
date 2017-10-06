
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

Paws::GameLift::CreateBuild - Arguments for method CreateBuild on Paws::GameLift

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBuild on the 
Amazon GameLift service. Use the attributes of this class
as arguments to method CreateBuild.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBuild.

As an example:

  $service_obj->CreateBuild(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Name => Str

Descriptive label that is associated with a build. Build names do not
need to be unique. You can use UpdateBuild to change this value later.



=head2 OperatingSystem => Str

Operating system that the game server binaries are built to run on.
This value determines the type of fleet resources that you can use for
this build. If your game build contains multiple executables, they all
must run on the same operating system.

Valid values are: C<"WINDOWS_2012">, C<"AMAZON_LINUX">

=head2 StorageLocation => L<Paws::GameLift::S3Location>

Amazon S3 location of the game build files to be uploaded. The S3
bucket must be owned by the same AWS account that you're using to
manage Amazon GameLift. It also must in the same region that you want
to create a new build in. Before calling C<CreateBuild> with this
location, you must allow Amazon GameLift to access your Amazon S3
bucket (see Create a Build with Files in Amazon S3
(http://docs.aws.amazon.com/gamelift/latest/developerguide/gamelift-build-cli-uploading.html#gamelift-build-cli-uploading-create-build)).



=head2 Version => Str

Version that is associated with this build. Version strings do not need
to be unique. You can use UpdateBuild to change this value later.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBuild in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

