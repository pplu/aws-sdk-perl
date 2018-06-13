
package Paws::EC2::DeleteSnapshot;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has SnapshotId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteSnapshot - Arguments for method DeleteSnapshot on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSnapshot on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DeleteSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSnapshot.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
   # To delete a snapshot
   # This example deletes a snapshot with the snapshot ID of
   # ``snap-1234567890abcdef0``. If the command succeeds, no output is returned.
    $ec2->DeleteSnapshot(
      {
        'SnapshotId' => 'snap-1234567890abcdef0'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DeleteSnapshot>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> SnapshotId => Str

The ID of the EBS snapshot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSnapshot in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

