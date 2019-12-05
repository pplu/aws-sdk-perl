package Paws::SageMaker::NetworkConfig;
  use Moose;
  has EnableNetworkIsolation => (is => 'ro', isa => 'Bool');
  has VpcConfig => (is => 'ro', isa => 'Paws::SageMaker::VpcConfig');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::NetworkConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::NetworkConfig object:

  $service_obj->Method(Att1 => { EnableNetworkIsolation => $value, ..., VpcConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::NetworkConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->EnableNetworkIsolation

=head1 DESCRIPTION

Networking options for a job, such as network traffic encryption
between containers, whether to allow inbound and outbound network calls
to and from containers, and the VPC subnets and security groups to use
for VPC-enabled jobs.

=head1 ATTRIBUTES


=head2 EnableNetworkIsolation => Bool

  Whether to allow inbound and outbound network calls to and from the
containers used for the processing job.


=head2 VpcConfig => L<Paws::SageMaker::VpcConfig>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

