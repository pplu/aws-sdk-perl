
package Paws::Lightsail::CreateDiskFromSnapshot;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZone' , required => 1);
  has DiskName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'diskName' , required => 1);
  has DiskSnapshotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'diskSnapshotName' , required => 1);
  has SizeInGb => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'sizeInGb' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

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
      DiskSnapshotName => 'MyResourceName',
      SizeInGb         => 1,
      Tags             => [
        {
          Key   => 'MyTagKey',      # OPTIONAL
          Value => 'MyTagValue',    # OPTIONAL
        },
        ...
      ],                            # OPTIONAL
    );

    # Results:
    my $Operations = $CreateDiskFromSnapshotResult->Operations;

    # Returns a L<Paws::Lightsail::CreateDiskFromSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/CreateDiskFromSnapshot>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AvailabilityZone => Str

The Availability Zone where you want to create the disk (e.g.,
C<us-east-2a>). Choose the same Availability Zone as the Lightsail
instance where you want to create the disk.

Use the GetRegions operation to list the Availability Zones where
Lightsail is currently available.



=head2 B<REQUIRED> DiskName => Str

The unique Lightsail disk name (e.g., C<my-disk>).



=head2 B<REQUIRED> DiskSnapshotName => Str

The name of the disk snapshot (e.g., C<my-snapshot>) from which to
create the new storage disk.



=head2 B<REQUIRED> SizeInGb => Int

The size of the disk in GB (e.g., C<32>).



=head2 Tags => ArrayRef[L<Paws::Lightsail::Tag>]

The tag keys and optional values to add to the resource during create.

To tag a resource after it has been created, see the C<tag resource>
operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDiskFromSnapshot in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

