package Paws::CodeBuild::ProjectCache;
  use Moose;
  has Location => (is => 'ro', isa => 'Str', request_name => 'location', traits => ['NameInRequest']);
  has Modes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'modes', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ProjectCache

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::ProjectCache object:

  $service_obj->Method(Att1 => { Location => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::ProjectCache object:

  $result = $service_obj->Method(...);
  $result->Att1->Location

=head1 DESCRIPTION

Information about the cache for the build project.

=head1 ATTRIBUTES


=head2 Location => Str

  Information about the cache location:

=over

=item *

C<NO_CACHE> or C<LOCAL>: This value is ignored.

=item *

C<S3>: This is the S3 bucket name/prefix.

=back



=head2 Modes => ArrayRef[Str|Undef]

  If you use a C<LOCAL> cache, the local cache mode. You can use one or
more local cache modes at the same time.

=over

=item *

C<LOCAL_SOURCE_CACHE> mode caches Git metadata for primary and
secondary sources. After the cache is created, subsequent builds pull
only the change between commits. This mode is a good choice for
projects with a clean working directory and a source that is a large
Git repository. If you choose this option and your project does not use
a Git repository (GitHub, GitHub Enterprise, or Bitbucket), the option
is ignored.

=item *

C<LOCAL_DOCKER_LAYER_CACHE> mode caches existing Docker layers. This
mode is a good choice for projects that build or pull large Docker
images. It can prevent the performance issues caused by pulling large
Docker images down from the network.

=over

=item *

You can use a Docker layer cache in the Linux enviornment only.

=item *

The C<privileged> flag must be set so that your project has the
required Docker permissions.

=item *

You should consider the security implications before you use a Docker
layer cache.

=back

=back

=over

=item *

C<LOCAL_CUSTOM_CACHE> mode caches directories you specify in the
buildspec file. This mode is a good choice if your build scenario is
not suited to one of the other three local cache modes. If you use a
custom cache:

=over

=item *

Only directories can be specified for caching. You cannot specify
individual files.

=item *

Symlinks are used to reference cached directories.

=item *

Cached directories are linked to your build before it downloads its
project sources. Cached items are overriden if a source item has the
same name. Directories are specified using cache paths in the buildspec
file.

=back

=back



=head2 B<REQUIRED> Type => Str

  The type of cache used by the build project. Valid values include:

=over

=item *

C<NO_CACHE>: The build project does not use any cache.

=item *

C<S3>: The build project reads and writes from and to S3.

=item *

C<LOCAL>: The build project stores a cache locally on a build host that
is only available to that build host.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

