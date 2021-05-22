
package Paws::IAM::CreateVirtualMFADevice;
  use Moose;
  has Path => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IAM::Tag]');
  has VirtualMFADeviceName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVirtualMFADevice');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::CreateVirtualMFADeviceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateVirtualMFADeviceResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateVirtualMFADevice - Arguments for method CreateVirtualMFADevice on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVirtualMFADevice on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method CreateVirtualMFADevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVirtualMFADevice.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    my $CreateVirtualMFADeviceResponse = $iam->CreateVirtualMFADevice(
      VirtualMFADeviceName => 'MyvirtualMFADeviceName',
      Path                 => 'MypathType',               # OPTIONAL
      Tags                 => [
        {
          Key   => 'MytagKeyType',                        # min: 1, max: 128
          Value => 'MytagValueType',                      # max: 256

        },
        ...
      ],                                                  # OPTIONAL
    );

    # Results:
    my $VirtualMFADevice = $CreateVirtualMFADeviceResponse->VirtualMFADevice;

    # Returns a L<Paws::IAM::CreateVirtualMFADeviceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/CreateVirtualMFADevice>

=head1 ATTRIBUTES


=head2 Path => Str

The path for the virtual MFA device. For more information about paths,
see IAM identifiers
(https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
in the I<IAM User Guide>.

This parameter is optional. If it is not included, it defaults to a
slash (/).

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
either a forward slash (/) by itself or a string that must begin and
end with forward slashes. In addition, it can contain any ASCII
character from the ! (C<\u0021>) through the DEL character (C<\u007F>),
including most punctuation characters, digits, and upper and lowercased
letters.



=head2 Tags => ArrayRef[L<Paws::IAM::Tag>]

A list of tags that you want to attach to the new IAM virtual MFA
device. Each tag consists of a key name and an associated value. For
more information about tagging, see Tagging IAM resources
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html) in the
I<IAM User Guide>.

If any one of the tags is invalid or if you exceed the allowed maximum
number of tags, then the entire request fails and the resource is not
created.



=head2 B<REQUIRED> VirtualMFADeviceName => Str

The name of the virtual MFA device. Use with path to uniquely identify
a virtual MFA device.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVirtualMFADevice in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

