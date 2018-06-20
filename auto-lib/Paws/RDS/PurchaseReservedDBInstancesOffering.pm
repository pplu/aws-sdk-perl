
package Paws::RDS::PurchaseReservedDBInstancesOffering;
  use Moose;
  has DBInstanceCount => (is => 'ro', isa => 'Int');
  has ReservedDBInstanceId => (is => 'ro', isa => 'Str');
  has ReservedDBInstancesOfferingId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PurchaseReservedDBInstancesOffering');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::PurchaseReservedDBInstancesOfferingResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PurchaseReservedDBInstancesOfferingResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::PurchaseReservedDBInstancesOffering - Arguments for method PurchaseReservedDBInstancesOffering on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PurchaseReservedDBInstancesOffering on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method PurchaseReservedDBInstancesOffering.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PurchaseReservedDBInstancesOffering.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To purchase a reserved DB instance offering
    # This example purchases a reserved DB instance offering that matches the
    # specified settings.
    my $PurchaseReservedDBInstancesOfferingResult =
      $rds->PurchaseReservedDBInstancesOffering(
      {
        'ReservedDBInstanceId' => 'myreservationid',
        'ReservedDBInstancesOfferingId' =>
          'fb29428a-646d-4390-850e-5fe89926e727'
      }
      );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/PurchaseReservedDBInstancesOffering>

=head1 ATTRIBUTES


=head2 DBInstanceCount => Int

The number of instances to reserve.

Default: C<1>



=head2 ReservedDBInstanceId => Str

Customer-specified identifier to track this reservation.

Example: myreservationID



=head2 B<REQUIRED> ReservedDBInstancesOfferingId => Str

The ID of the Reserved DB instance offering to purchase.

Example: 438012d3-4052-4cc7-b2e3-8d3372e0e706



=head2 Tags => ArrayRef[L<Paws::RDS::Tag>]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PurchaseReservedDBInstancesOffering in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

