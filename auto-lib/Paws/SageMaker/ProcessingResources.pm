package Paws::SageMaker::ProcessingResources;
  use Moose;
  has ClusterConfig => (is => 'ro', isa => 'Paws::SageMaker::ProcessingClusterConfig', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ProcessingResources

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ProcessingResources object:

  $service_obj->Method(Att1 => { ClusterConfig => $value, ..., ClusterConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ProcessingResources object:

  $result = $service_obj->Method(...);
  $result->Att1->ClusterConfig

=head1 DESCRIPTION

Identifies the resources, ML compute instances, and ML storage volumes
to deploy for a processing job. In distributed training, you specify
more than one instance.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterConfig => L<Paws::SageMaker::ProcessingClusterConfig>

  The configuration for the resources in a cluster used to run the
processing job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

