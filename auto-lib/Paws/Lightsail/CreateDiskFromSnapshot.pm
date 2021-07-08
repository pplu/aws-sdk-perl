
package Paws::Lightsail::CreateDiskFromSnapshot;
  use Moose;
  has AddOns => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::AddOnRequest]', traits => ['NameInRequest'], request_name => 'addOns' );
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZone' , required => 1);
  has DiskName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'diskName' , required => 1);
  has DiskSnapshotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'diskSnapshotName' );
  has RestoreDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'restoreDate' );
  has SizeInGb => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'sizeInGb' , required => 1);
  has SourceDiskName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceDiskName' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has UseLatestRestorableAutoSnapshot => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'useLatestRestorableAutoSnapshot' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDiskFromSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::CreateDiskFromSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateDiskFromSnapshot - Arguments for method CreateDiskFromSnapshot on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDiskFromSnapshot on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method CreateDiskFromSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDiskFromSnapshot.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $CreateDiskFromSnapshotResult = $lightsail->CreateDiskFromSnapshot(
      AvailabilityZone => 'MyNonEmptyString',
      DiskName         => 'MyResourceName',
      SizeInGb         => 1,
      AddOns           => [
        {
          AddOnType                => 'AutoSnapshot',    # values: AutoSnapshot
          AutoSnapshotAddOnRequest => {
            SnapshotTimeOfDay => 'MyTimeOfDay',          # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      DiskSnapshotName => 'MyResourceName',    # OPTIONAL
      RestoreDate      => 'Mystring',          # OPTIONAL
      SourceDiskName   => 'Mystring',          # OPTIONAL
      Tags             => [
        {
          Key   => 'MyTagKey',      # OPTIONAL
          Value => 'MyTagValue',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      UseLatestRestorableAutoSnapshot => 1,    # OPTIONAL
    );

    # Results:
    my $Operations = $CreateDiskFromSnapshotResult->Operations;

    # Returns a L<Paws::Lightsail::CreateDiskFromSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/CreateDiskFromSnapshot>

=head1 ATTRIBUTES


=head2 AddOns => ArrayRef[L<Paws::Lightsail::AddOnRequest>]

An array of objects that represent the add-ons to enable for the new
disk.



=head2 B<REQUIRED> AvailabilityZone => Str

The Availability Zone where you want to create the disk (e.g.,
C<us-east-2a>). Choose the same Availability Zone as the Lightsail
instance where you want to create the disk.

Use the GetRegions operation to list the Availability Zones where
Lightsail is currently available.



=head2 B<REQUIRED> DiskName => Str

The unique Lightsail disk name (e.g., C<my-disk>).



=head2 DiskSnapshotName => Str

The name of the disk snapshot (e.g., C<my-snapshot>) from which to
create the new storage disk.

Constraint:

=over

=item *

This parameter cannot be defined together with the C<source disk name>
parameter. The C<disk snapshot name> and C<source disk name> parameters
are mutually exclusive.

=back




=head2 RestoreDate => Str

The date of the automatic snapshot to use for the new disk. Use the
C<get auto snapshots> operation to identify the dates of the available
automatic snapshots.

Constraints:

=over

=item *

Must be specified in C<YYYY-MM-DD> format.

=item *

This parameter cannot be defined together with the C<use latest
restorable auto snapshot> parameter. The C<restore date> and C<use
latest restorable auto snapshot> parameters are mutually exclusive.

=item *

Define this parameter only when creating a new disk from an automatic
snapshot. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots).

=back




=head2 B<REQUIRED> SizeInGb => Int

The size of the disk in GB (e.g., C<32>).



=head2 SourceDiskName => Str

The name of the source disk from which the source automatic snapshot
was created.

Constraints:

=over

=item *

This parameter cannot be defined together with the C<disk snapshot
name> parameter. The C<source disk name> and C<disk snapshot name>
parameters are mutually exclusive.

=item *

Define this parameter only when creating a new disk from an automatic
snapshot. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots).

=back




=head2 Tags => ArrayRef[L<Paws::Lightsail::Tag>]

The tag keys and optional values to add to the resource during create.

Use the C<TagResource> action to tag a resource after it's created.



=head2 UseLatestRestorableAutoSnapshot => Bool

A Boolean value to indicate whether to use the latest available
automatic snapshot.

Constraints:

=over

=item *

This parameter cannot be defined together with the C<restore date>
parameter. The C<use latest restorable auto snapshot> and C<restore
date> parameters are mutually exclusive.

=item *

Define this parameter only when creating a new disk from an automatic
snapshot. For more information, see the Lightsail Dev Guide
(https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots).

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDiskFromSnapshot in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

