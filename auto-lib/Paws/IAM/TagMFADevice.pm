
package Paws::IAM::TagMFADevice;
  use Moose;
  has SerialNumber => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IAM::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagMFADevice');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::TagMFADevice - Arguments for method TagMFADevice on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagMFADevice on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method TagMFADevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagMFADevice.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    $iam->TagMFADevice(
      SerialNumber => 'MyserialNumberType',
      Tags         => [
        {
          Key   => 'MytagKeyType',      # min: 1, max: 128
          Value => 'MytagValueType',    # max: 256

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/TagMFADevice>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SerialNumber => Str

The unique identifier for the IAM virtual MFA device to which you want
to add tags. For virtual MFA devices, the serial number is the same as
the ARN.

This parameter accepts (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters that consist
of upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: =,.@-



=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::IAM::Tag>]

The list of tags that you want to attach to the IAM virtual MFA device.
Each tag consists of a key name and an associated value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagMFADevice in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

