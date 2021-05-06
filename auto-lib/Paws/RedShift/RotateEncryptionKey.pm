
package Paws::RedShift::RotateEncryptionKey;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RotateEncryptionKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::RotateEncryptionKeyResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RotateEncryptionKeyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::RotateEncryptionKey - Arguments for method RotateEncryptionKey on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RotateEncryptionKey on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method RotateEncryptionKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RotateEncryptionKey.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $RotateEncryptionKeyResult = $redshift->RotateEncryptionKey(
      ClusterIdentifier => 'MyString',

    );

    # Results:
    my $Cluster = $RotateEncryptionKeyResult->Cluster;

    # Returns a L<Paws::RedShift::RotateEncryptionKeyResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/RotateEncryptionKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterIdentifier => Str

The unique identifier of the cluster that you want to rotate the
encryption keys for.

Constraints: Must be the name of valid cluster that has encryption
enabled.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RotateEncryptionKey in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

