
package Paws::StorageGateway::CreateTapePool;
  use Moose;
  has PoolName => (is => 'ro', isa => 'Str', required => 1);
  has RetentionLockTimeInDays => (is => 'ro', isa => 'Int');
  has RetentionLockType => (is => 'ro', isa => 'Str');
  has StorageClass => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTapePool');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::CreateTapePoolOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::CreateTapePool - Arguments for method CreateTapePool on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTapePool on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method CreateTapePool.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTapePool.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    my $CreateTapePoolOutput = $storagegateway->CreateTapePool(
      PoolName                => 'MyPoolName',
      StorageClass            => 'DEEP_ARCHIVE',
      RetentionLockTimeInDays => 1,                # OPTIONAL
      RetentionLockType       => 'COMPLIANCE',     # OPTIONAL
      Tags                    => [
        {
          Key   => 'MyTagKey',                     # min: 1, max: 128
          Value => 'MyTagValue',                   # max: 256

        },
        ...
      ],                                           # OPTIONAL
    );

    # Results:
    my $PoolARN = $CreateTapePoolOutput->PoolARN;

    # Returns a L<Paws::StorageGateway::CreateTapePoolOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/CreateTapePool>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PoolName => Str

The name of the new custom tape pool.



=head2 RetentionLockTimeInDays => Int

Tape retention lock time is set in days. Tape retention lock can be
enabled for up to 100 years (36,500 days).



=head2 RetentionLockType => Str

Tape retention lock can be configured in two modes. When configured in
governance mode, AWS accounts with specific IAM permissions are
authorized to remove the tape retention lock from archived virtual
tapes. When configured in compliance mode, the tape retention lock
cannot be removed by any user, including the root AWS account.

Valid values are: C<"COMPLIANCE">, C<"GOVERNANCE">, C<"NONE">

=head2 B<REQUIRED> StorageClass => Str

The storage class that is associated with the new custom pool. When you
use your backup application to eject the tape, the tape is archived
directly into the storage class (S3 Glacier or S3 Glacier Deep Archive)
that corresponds to the pool.

Valid values are: C<"DEEP_ARCHIVE">, C<"GLACIER">

=head2 Tags => ArrayRef[L<Paws::StorageGateway::Tag>]

A list of up to 50 tags that can be assigned to tape pool. Each tag is
a key-value pair.

Valid characters for key and value are letters, spaces, and numbers
representable in UTF-8 format, and the following special characters: +
- = . _ : / @. The maximum length of a tag's key is 128 characters, and
the maximum length for a tag's value is 256.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTapePool in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

