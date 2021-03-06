# Generated by default/object.tt
package Paws::CodeBuild::BuildSummary;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has BuildStatus => (is => 'ro', isa => 'Str', request_name => 'buildStatus', traits => ['NameInRequest']);
  has PrimaryArtifact => (is => 'ro', isa => 'Paws::CodeBuild::ResolvedArtifact', request_name => 'primaryArtifact', traits => ['NameInRequest']);
  has RequestedOn => (is => 'ro', isa => 'Str', request_name => 'requestedOn', traits => ['NameInRequest']);
  has SecondaryArtifacts => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::ResolvedArtifact]', request_name => 'secondaryArtifacts', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::BuildSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::BuildSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., SecondaryArtifacts => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::BuildSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains summary information about a batch build group.

=head1 ATTRIBUTES


=head2 Arn => Str

The batch build ARN.


=head2 BuildStatus => Str

The status of the build group.

=over

=item FAILED

The build group failed.

=item FAULT

The build group faulted.

=item IN_PROGRESS

The build group is still in progress.

=item STOPPED

The build group stopped.

=item SUCCEEDED

The build group succeeded.

=item TIMED_OUT

The build group timed out.

=back



=head2 PrimaryArtifact => L<Paws::CodeBuild::ResolvedArtifact>

A C<ResolvedArtifact> object that represents the primary build
artifacts for the build group.


=head2 RequestedOn => Str

When the build was started, expressed in Unix time format.


=head2 SecondaryArtifacts => ArrayRef[L<Paws::CodeBuild::ResolvedArtifact>]

An array of C<ResolvedArtifact> objects that represents the secondary
build artifacts for the build group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

