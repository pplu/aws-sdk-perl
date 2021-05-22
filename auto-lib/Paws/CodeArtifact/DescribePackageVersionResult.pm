
package Paws::CodeArtifact::DescribePackageVersionResult;
  use Moose;
  has PackageVersion => (is => 'ro', isa => 'Paws::CodeArtifact::PackageVersionDescription', traits => ['NameInRequest'], request_name => 'packageVersion', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeArtifact::DescribePackageVersionResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> PackageVersion => L<Paws::CodeArtifact::PackageVersionDescription>

A PackageVersionDescription
(https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html)
object that contains information about the requested package version.


=head2 _request_id => Str


=cut

