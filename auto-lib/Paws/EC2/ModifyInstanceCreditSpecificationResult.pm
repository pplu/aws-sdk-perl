
package Paws::EC2::ModifyInstanceCreditSpecificationResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_UnsuccessfulInstanceCreditSpecificationItem EC2_SuccessfulInstanceCreditSpecificationItem/;
  has SuccessfulInstanceCreditSpecifications => (is => 'ro', isa => ArrayRef[EC2_SuccessfulInstanceCreditSpecificationItem]);
  has UnsuccessfulInstanceCreditSpecifications => (is => 'ro', isa => ArrayRef[EC2_UnsuccessfulInstanceCreditSpecificationItem]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'SuccessfulInstanceCreditSpecifications' => 'successfulInstanceCreditSpecificationSet',
                       'UnsuccessfulInstanceCreditSpecifications' => 'unsuccessfulInstanceCreditSpecificationSet'
                     },
  'types' => {
               'UnsuccessfulInstanceCreditSpecifications' => {
                                                               'class' => 'Paws::EC2::UnsuccessfulInstanceCreditSpecificationItem',
                                                               'type' => 'ArrayRef[EC2_UnsuccessfulInstanceCreditSpecificationItem]'
                                                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SuccessfulInstanceCreditSpecifications' => {
                                                             'class' => 'Paws::EC2::SuccessfulInstanceCreditSpecificationItem',
                                                             'type' => 'ArrayRef[EC2_SuccessfulInstanceCreditSpecificationItem]'
                                                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyInstanceCreditSpecificationResult

=head1 ATTRIBUTES


=head2 SuccessfulInstanceCreditSpecifications => ArrayRef[EC2_SuccessfulInstanceCreditSpecificationItem]

Information about the instances whose credit option for CPU usage was
successfully modified.


=head2 UnsuccessfulInstanceCreditSpecifications => ArrayRef[EC2_UnsuccessfulInstanceCreditSpecificationItem]

Information about the instances whose credit option for CPU usage was
not modified.


=head2 _request_id => Str


=cut

