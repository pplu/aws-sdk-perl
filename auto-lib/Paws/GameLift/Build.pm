package Paws::GameLift::Build;
  use Moose;
  has BuildId => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OperatingSystem => (is => 'ro', isa => 'Str');
  has SizeOnDisk => (is => 'ro', isa => 'Int');
  has Status => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::Build

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::Build object:

  $service_obj->Method(Att1 => { BuildId => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::Build object:

  $result = $service_obj->Method(...);
  $result->Att1->BuildId

=head1 DESCRIPTION

Properties describing a game build.

=over

=item *

CreateBuild

=item *

ListBuilds

=item *

DescribeBuild

=item *

UpdateBuild

=item *

DeleteBuild

=back


=head1 ATTRIBUTES


=head2 BuildId => Str

  Unique identifier for a build.


=head2 CreationTime => Str

  Time stamp indicating when this data object was created. Format is a
number expressed in Unix time as milliseconds (for example
"1469498468.057").


=head2 Name => Str

  Descriptive label that is associated with a build. Build names do not
need to be unique. It can be set using CreateBuild or UpdateBuild.


=head2 OperatingSystem => Str

  Operating system that the game server binaries are built to run on.
This value determines the type of fleet resources that you can use for
this build.


=head2 SizeOnDisk => Int

  File size of the uploaded game build, expressed in bytes. When the
build status is C<INITIALIZED>, this value is 0.


=head2 Status => Str

  Current status of the build.

Possible build statuses include the following:

=over

=item *

B<INITIALIZED> -- A new build has been defined, but no files have been
uploaded. You cannot create fleets for builds that are in this status.
When a build is successfully created, the build status is set to this
value.

=item *

B<READY> -- The game build has been successfully uploaded. You can now
create new fleets for this build.

=item *

B<FAILED> -- The game build upload failed. You cannot create new fleets
for this build.

=back



=head2 Version => Str

  Version that is associated with this build. Version strings do not need
to be unique. This value can be set using CreateBuild or UpdateBuild.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

