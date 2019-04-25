
package Paws::DMS::RebootReplicationInstance;
  use Moose;
  has ForceFailover => (is => 'ro', isa => 'Bool');
  has ReplicationInstanceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RebootReplicationInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::RebootReplicationInstanceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::RebootReplicationInstance - Arguments for method RebootReplicationInstance on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RebootReplicationInstance on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method RebootReplicationInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RebootReplicationInstance.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $RebootReplicationInstanceResponse = $dms->RebootReplicationInstance(
      ReplicationInstanceArn => 'MyString',
      ForceFailover          => 1,            # OPTIONAL
    );

    # Results:
    my $ReplicationInstance =
      $RebootReplicationInstanceResponse->ReplicationInstance;

    # Returns a L<Paws::DMS::RebootReplicationInstanceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/RebootReplicationInstance>

=head1 ATTRIBUTES


=head2 ForceFailover => Bool

If this parameter is C<true>, the reboot is conducted through a
Multi-AZ failover. (If the instance isn't configured for Multi-AZ, then
you can't specify C<true>.)



=head2 B<REQUIRED> ReplicationInstanceArn => Str

The Amazon Resource Name (ARN) of the replication instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RebootReplicationInstance in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

