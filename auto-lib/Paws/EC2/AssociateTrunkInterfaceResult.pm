
package Paws::EC2::AssociateTrunkInterfaceResult;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', request_name => 'clientToken', traits => ['NameInRequest',]);
  has InterfaceAssociation => (is => 'ro', isa => 'Paws::EC2::TrunkInterfaceAssociation', request_name => 'interfaceAssociation', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssociateTrunkInterfaceResult

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to Ensure
Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).


=head2 InterfaceAssociation => L<Paws::EC2::TrunkInterfaceAssociation>

Information about the association between the trunk network interface
and branch network interface.


=head2 _request_id => Str


=cut

