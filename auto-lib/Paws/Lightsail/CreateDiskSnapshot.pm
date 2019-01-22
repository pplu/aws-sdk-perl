
package Paws::Lightsail::CreateDiskSnapshot;
  use Moose;
  has DiskName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'diskName' );
  has DiskSnapshotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'diskSnapshotName' , required => 1);
  has InstanceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceName' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDiskSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::CreateDiskSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateDiskSnapshot - Arguments for method CreateDiskSnapshot on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDiskSnapshot on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method CreateDiskSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDiskSnapshot.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $CreateDiskSnapshotResult = $lightsail->CreateDiskSnapshot(
      DiskSnapshotName => 'MyResourceName',
      DiskName         => 'MyResourceName',    # OPTIONAL
      InstanceName     => 'MyResourceName',    # OPTIONAL
      Tags             => [
        {
          Key   => 'MyTagKey',                 # OPTIONAL
          Value => 'MyTagValue',               # OPTIONAL
        },
        ...
      ],                                       # OPTIONAL
    );

    # Results:
    my $Operations = $CreateDiskSnapshotResult->Operations;

    # Returns a L<Paws::Lightsail::CreateDiskSnapshotResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/CreateDiskSnapshot>

=head1 ATTRIBUTES


=head2 DiskName => Str

The unique name of the source disk (e.g., C<Disk-Virginia-1>).

This parameter cannot be defined together with the C<instance name>
parameter. The C<disk name> and C<instance name> parameters are
mutually exclusive.



=head2 B<REQUIRED> DiskSnapshotName => Str

The name of the destination disk snapshot (e.g., C<my-disk-snapshot>)
based on the source disk.



=head2 InstanceName => Str

The unique name of the source instance (e.g.,
C<Amazon_Linux-512MB-Virginia-1>). When this is defined, a snapshot of
the instance's system volume is created.

This parameter cannot be defined together with the C<disk name>
parameter. The C<instance name> and C<disk name> parameters are
mutually exclusive.



=head2 Tags => ArrayRef[L<Paws::Lightsail::Tag>]

The tag keys and optional values to add to the resource during create.

To tag a resource after it has been created, see the C<tag resource>
operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDiskSnapshot in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

