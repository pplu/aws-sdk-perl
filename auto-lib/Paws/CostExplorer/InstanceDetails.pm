# Generated from default/object.tt
package Paws::CostExplorer::InstanceDetails;
  use Moo;
  use Types::Standard qw//;
  use Paws::CostExplorer::Types qw/CostExplorer_ESInstanceDetails CostExplorer_ElastiCacheInstanceDetails CostExplorer_EC2InstanceDetails CostExplorer_RedshiftInstanceDetails CostExplorer_RDSInstanceDetails/;
  has EC2InstanceDetails => (is => 'ro', isa => CostExplorer_EC2InstanceDetails);
  has ElastiCacheInstanceDetails => (is => 'ro', isa => CostExplorer_ElastiCacheInstanceDetails);
  has ESInstanceDetails => (is => 'ro', isa => CostExplorer_ESInstanceDetails);
  has RDSInstanceDetails => (is => 'ro', isa => CostExplorer_RDSInstanceDetails);
  has RedshiftInstanceDetails => (is => 'ro', isa => CostExplorer_RedshiftInstanceDetails);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ElastiCacheInstanceDetails' => {
                                                 'class' => 'Paws::CostExplorer::ElastiCacheInstanceDetails',
                                                 'type' => 'CostExplorer_ElastiCacheInstanceDetails'
                                               },
               'ESInstanceDetails' => {
                                        'class' => 'Paws::CostExplorer::ESInstanceDetails',
                                        'type' => 'CostExplorer_ESInstanceDetails'
                                      },
               'RedshiftInstanceDetails' => {
                                              'class' => 'Paws::CostExplorer::RedshiftInstanceDetails',
                                              'type' => 'CostExplorer_RedshiftInstanceDetails'
                                            },
               'EC2InstanceDetails' => {
                                         'class' => 'Paws::CostExplorer::EC2InstanceDetails',
                                         'type' => 'CostExplorer_EC2InstanceDetails'
                                       },
               'RDSInstanceDetails' => {
                                         'class' => 'Paws::CostExplorer::RDSInstanceDetails',
                                         'type' => 'CostExplorer_RDSInstanceDetails'
                                       }
             }
}
;
    return $Params_map;
  }


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


=head2 EC2InstanceDetails => CostExplorer_EC2InstanceDetails

  The Amazon EC2 instances that AWS recommends that you purchase.


=head2 ElastiCacheInstanceDetails => CostExplorer_ElastiCacheInstanceDetails

  The ElastiCache instances that AWS recommends that you purchase.


=head2 ESInstanceDetails => CostExplorer_ESInstanceDetails

  The Amazon ES instances that AWS recommends that you purchase.


=head2 RDSInstanceDetails => CostExplorer_RDSInstanceDetails

  The Amazon RDS instances that AWS recommends that you purchase.


=head2 RedshiftInstanceDetails => CostExplorer_RedshiftInstanceDetails

  The Amazon Redshift instances that AWS recommends that you purchase.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

