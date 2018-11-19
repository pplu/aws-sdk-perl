package Paws::CodeBuild::ProjectSourceVersion;
  use Moose;
  has SourceIdentifier => (is => 'ro', isa => 'Str', request_name => 'sourceIdentifier', traits => ['NameInRequest'], required => 1);
  has SourceVersion => (is => 'ro', isa => 'Str', request_name => 'sourceVersion', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ProjectSourceVersion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::ProjectSourceVersion object:

  $service_obj->Method(Att1 => { SourceIdentifier => $value, ..., SourceVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::ProjectSourceVersion object:

  $result = $service_obj->Method(...);
  $result->Att1->SourceIdentifier

=head1 DESCRIPTION

A source identifier and its corresponding version.

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceIdentifier => Str

  An identifier for a source in the build project.


=head2 B<REQUIRED> SourceVersion => Str

  The source version for the corresponding source identifier. If
specified, must be one of:

=over

=item *

For AWS CodeCommit: the commit ID to use.

=item *

For GitHub: the commit ID, pull request ID, branch name, or tag name
that corresponds to the version of the source code you want to build.
If a pull request ID is specified, it must use the format
C<pr/pull-request-ID> (for example, C<pr/25>). If a branch name is
specified, the branch's HEAD commit ID is used. If not specified, the
default branch's HEAD commit ID is used.

=item *

For Bitbucket: the commit ID, branch name, or tag name that corresponds
to the version of the source code you want to build. If a branch name
is specified, the branch's HEAD commit ID is used. If not specified,
the default branch's HEAD commit ID is used.

=item *

For Amazon Simple Storage Service (Amazon S3): the version ID of the
object that represents the build input ZIP file to use.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

