package Paws::SageMaker::AutoMLSecurityConfig;
  use Moose;
  has EnableInterContainerTrafficEncryption => (is => 'ro', isa => 'Bool');
  has VolumeKmsKeyId => (is => 'ro', isa => 'Str');
  has VpcConfig => (is => 'ro', isa => 'Paws::SageMaker::VpcConfig');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::AutoMLSecurityConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::AutoMLSecurityConfig object:

  $service_obj->Method(Att1 => { EnableInterContainerTrafficEncryption => $value, ..., VpcConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::AutoMLSecurityConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->EnableInterContainerTrafficEncryption

=head1 DESCRIPTION

Security options.

=head1 ATTRIBUTES


=head2 EnableInterContainerTrafficEncryption => Bool

  Whether to use traffic encryption between the container layers.


=head2 VolumeKmsKeyId => Str

  The key used to encrypt stored data.


=head2 VpcConfig => L<Paws::SageMaker::VpcConfig>

  VPC configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

