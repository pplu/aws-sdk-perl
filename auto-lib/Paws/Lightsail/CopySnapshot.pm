
package Paws::Lightsail::CopySnapshot;
  use Moose;
  has RestoreDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'restoreDate' );
  has SourceRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceRegion' , required => 1);
  has SourceResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceResourceName' );
  has SourceSnapshotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceSnapshotName' );
  has TargetSnapshotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetSnapshotName' , required => 1);
  has UseLatestRestorableAutoSnapshot => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'useLatestRestorableAutoSnapshot' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CopySnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::CopySnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CopySnapshot - Arguments for method CopySnapshot on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CopySnapshot on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method CopySnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CopySnapshot.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $CopySnapshotResult = $lightsail->CopySnapshot(
      SourceRegion                    => 'us-east-1',
      TargetSnapshotName              => 'MyResourceName',
      RestoreDate                     => 'Mystring',          # OPTIONAL
      SourceResourceName              => 'Mystring',          # OPTIONAL
      SourceSnapshotName              => 'MyResourceName',    # OPTIONAL
      UseLatestRestorableAutoSnapshot => 1,                   # OPTIONAL
    );

    # Results:
    my $Operations = $CopySnapshotResult->Operations;

    # Returns a L<Paws::Lightsail::CopySnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/CopySnapshot>

=head1 ATTRIBUTES


=head2 RestoreDate => Str

The date of the source automatic snapshot to copy. Use the C<get auto
snapshots> operation to identify the dates of the available automatic
snapshots.

Constraints:

=over

=item *

Must be specified in C<YYYY-MM-DD> format.

=item *

This parameter cannot be defined together with the C<use latest
restorable auto snapshot> parameter. The C<restore date> and C<use
latest restorable auto snapshot> parameters are mutually exclusive.

=item *

Define this parameter only when copying an automatic snapshot as a
manual snapshot. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-keeping-automatic-snapshots).

=back




=head2 B<REQUIRED> SourceRegion => Str

The AWS Region where the source manual or automatic snapshot is
located.

Valid values are: C<"us-east-1">, C<"us-east-2">, C<"us-west-1">, C<"us-west-2">, C<"eu-west-1">, C<"eu-west-2">, C<"eu-west-3">, C<"eu-central-1">, C<"ca-central-1">, C<"ap-south-1">, C<"ap-southeast-1">, C<"ap-southeast-2">, C<"ap-northeast-1">, C<"ap-northeast-2">

=head2 SourceResourceName => Str

The name of the source instance or disk from which the source automatic
snapshot was created.

Constraint:

=over

=item *

Define this parameter only when copying an automatic snapshot as a
manual snapshot. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-keeping-automatic-snapshots).

=back




=head2 SourceSnapshotName => Str

The name of the source manual snapshot to copy.

Constraint:

=over

=item *

Define this parameter only when copying a manual snapshot as another
manual snapshot.

=back




=head2 B<REQUIRED> TargetSnapshotName => Str

The name of the new manual snapshot to be created as a copy.



=head2 UseLatestRestorableAutoSnapshot => Bool

A Boolean value to indicate whether to use the latest available
automatic snapshot of the specified source instance or disk.

Constraints:

=over

=item *

This parameter cannot be defined together with the C<restore date>
parameter. The C<use latest restorable auto snapshot> and C<restore
date> parameters are mutually exclusive.

=item *

Define this parameter only when copying an automatic snapshot as a
manual snapshot. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-keeping-automatic-snapshots).

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CopySnapshot in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

