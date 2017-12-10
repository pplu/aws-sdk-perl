
package Paws::EC2::ModifyInstanceCreditSpecificationResult;
  use Moose;
  has SuccessfulInstanceCreditSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SuccessfulInstanceCreditSpecificationItem]', request_name => 'successfulInstanceCreditSpecificationSet', traits => ['NameInRequest',]);
  has UnsuccessfulInstanceCreditSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::UnsuccessfulInstanceCreditSpecificationItem]', request_name => 'unsuccessfulInstanceCreditSpecificationSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyInstanceCreditSpecificationResult

=head1 ATTRIBUTES


=head2 SuccessfulInstanceCreditSpecifications => ArrayRef[L<Paws::EC2::SuccessfulInstanceCreditSpecificationItem>]

Information about the instances whose credit option for CPU usage was
successfully modified.


=head2 UnsuccessfulInstanceCreditSpecifications => ArrayRef[L<Paws::EC2::UnsuccessfulInstanceCreditSpecificationItem>]

Information about the instances whose credit option for CPU usage was
not modified.


=head2 _request_id => Str


=cut

