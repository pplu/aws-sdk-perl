package Paws::EC2::ElasticGpuAssociation;
  use Moose;
  has ElasticGpuAssociationId => (is => 'ro', isa => 'Str', request_name => 'elasticGpuAssociationId', traits => ['NameInRequest']);
  has ElasticGpuAssociationState => (is => 'ro', isa => 'Str', request_name => 'elasticGpuAssociationState', traits => ['NameInRequest']);
  has ElasticGpuAssociationTime => (is => 'ro', isa => 'Str', request_name => 'elasticGpuAssociationTime', traits => ['NameInRequest']);
  has ElasticGpuId => (is => 'ro', isa => 'Str', request_name => 'elasticGpuId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ElasticGpuAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ElasticGpuAssociation object:

  $service_obj->Method(Att1 => { ElasticGpuAssociationId => $value, ..., ElasticGpuId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ElasticGpuAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->ElasticGpuAssociationId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ElasticGpuAssociationId => Str

  The ID of the association.


=head2 ElasticGpuAssociationState => Str

  The state of the association between the instance and the Elastic
Graphics accelerator.


=head2 ElasticGpuAssociationTime => Str

  The time the Elastic Graphics accelerator was associated with the
instance.


=head2 ElasticGpuId => Str

  The ID of the Elastic Graphics accelerator.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
