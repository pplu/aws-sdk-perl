
package Paws::KMS::UpdatePrimaryRegion;
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has PrimaryRegion => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePrimaryRegion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::UpdatePrimaryRegion - Arguments for method UpdatePrimaryRegion on L<Paws::KMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePrimaryRegion on the
L<AWS Key Management Service|Paws::KMS> service. Use the attributes of this class
as arguments to method UpdatePrimaryRegion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePrimaryRegion.

=head1 SYNOPSIS

    my $kms = Paws->service('KMS');
    $kms->UpdatePrimaryRegion(
      KeyId         => 'MyKeyIdType',
      PrimaryRegion => 'MyRegionType',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kms/UpdatePrimaryRegion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> KeyId => Str

Identifies the current primary key. When the operation completes, this
CMK will be a replica key.

Specify the key ID or key ARN of a multi-Region primary key.

For example:

=over

=item *

Key ID: C<mrk-1234abcd12ab34cd56ef1234567890ab>

=item *

Key ARN:
C<arn:aws:kms:us-east-2:111122223333:key/mrk-1234abcd12ab34cd56ef1234567890ab>

=back

To get the key ID and key ARN for a CMK, use ListKeys or DescribeKey.



=head2 B<REQUIRED> PrimaryRegion => Str

The AWS Region of the new primary key. Enter the Region ID, such as
C<us-east-1> or C<ap-southeast-2>. There must be an existing replica
key in this Region.

When the operation completes, the multi-Region key in this Region will
be the primary key.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePrimaryRegion in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

