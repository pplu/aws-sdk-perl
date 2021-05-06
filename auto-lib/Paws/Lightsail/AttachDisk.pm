
package Paws::Lightsail::AttachDisk;
  use Moose;
  has DiskName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'diskName' , required => 1);
  has DiskPath => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'diskPath' , required => 1);
  has InstanceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachDisk');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::AttachDiskResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::AttachDisk - Arguments for method AttachDisk on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AttachDisk on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method AttachDisk.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AttachDisk.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $AttachDiskResult = $lightsail->AttachDisk(
      DiskName     => 'MyResourceName',
      DiskPath     => 'MyNonEmptyString',
      InstanceName => 'MyResourceName',

    );

    # Results:
    my $Operations = $AttachDiskResult->Operations;

    # Returns a L<Paws::Lightsail::AttachDiskResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/AttachDisk>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DiskName => Str

The unique Lightsail disk name (e.g., C<my-disk>).



=head2 B<REQUIRED> DiskPath => Str

The disk path to expose to the instance (e.g., C</dev/xvdf>).



=head2 B<REQUIRED> InstanceName => Str

The name of the Lightsail instance where you want to utilize the
storage disk.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AttachDisk in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

