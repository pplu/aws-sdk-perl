
package Paws::EC2::PurchaseScheduledInstances;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has PurchaseRequests => (is => 'ro', isa => 'ArrayRef[Paws::EC2::PurchaseRequest]', traits => ['NameInRequest'], request_name => 'PurchaseRequest' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PurchaseScheduledInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::PurchaseScheduledInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::PurchaseScheduledInstances - Arguments for method PurchaseScheduledInstances on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PurchaseScheduledInstances on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method PurchaseScheduledInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PurchaseScheduledInstances.

As an example:

  $service_obj->PurchaseScheduledInstances(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that ensures the idempotency of the
request. For more information, see Ensuring Idempotency.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> PurchaseRequests => ArrayRef[L<Paws::EC2::PurchaseRequest>]

One or more purchase requests.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PurchaseScheduledInstances in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

