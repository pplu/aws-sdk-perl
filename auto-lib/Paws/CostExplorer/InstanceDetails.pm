package Paws::CostExplorer::InstanceDetails;
  use Moose;
  has EC2InstanceDetails => (is => 'ro', isa => 'Paws::CostExplorer::EC2InstanceDetails');
  has ElastiCacheInstanceDetails => (is => 'ro', isa => 'Paws::CostExplorer::ElastiCacheInstanceDetails');
  has ESInstanceDetails => (is => 'ro', isa => 'Paws::CostExplorer::ESInstanceDetails');
  has RDSInstanceDetails => (is => 'ro', isa => 'Paws::CostExplorer::RDSInstanceDetails');
  has RedshiftInstanceDetails => (is => 'ro', isa => 'Paws::CostExplorer::RedshiftInstanceDetails');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::InstanceDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::InstanceDetails object:

  $service_obj->Method(Att1 => { EC2InstanceDetails => $value, ..., RedshiftInstanceDetails => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::InstanceDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->EC2InstanceDetails

=head1 DESCRIPTION

Details about the instances that AWS recommends that you purchase.

=head1 ATTRIBUTES


=head2 EC2InstanceDetails => L<Paws::CostExplorer::EC2InstanceDetails>

  The Amazon EC2 instances that AWS recommends that you purchase.


=head2 ElastiCacheInstanceDetails => L<Paws::CostExplorer::ElastiCacheInstanceDetails>

  The ElastiCache instances that AWS recommends that you purchase.


=head2 ESInstanceDetails => L<Paws::CostExplorer::ESInstanceDetails>

  The Amazon ES instances that AWS recommends that you purchase.


=head2 RDSInstanceDetails => L<Paws::CostExplorer::RDSInstanceDetails>

  The Amazon RDS instances that AWS recommends that you purchase.


=head2 RedshiftInstanceDetails => L<Paws::CostExplorer::RedshiftInstanceDetails>

  The Amazon Redshift instances that AWS recommends that you purchase.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

