
package Paws::EC2::ModifyDefaultCreditSpecificationResult;
  use Moose;
  has InstanceFamilyCreditSpecification => (is => 'ro', isa => 'Paws::EC2::InstanceFamilyCreditSpecification', request_name => 'instanceFamilyCreditSpecification', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyDefaultCreditSpecificationResult

=head1 ATTRIBUTES


=head2 InstanceFamilyCreditSpecification => L<Paws::EC2::InstanceFamilyCreditSpecification>

The default credit option for CPU usage of the instance family.


=head2 _request_id => Str


=cut

