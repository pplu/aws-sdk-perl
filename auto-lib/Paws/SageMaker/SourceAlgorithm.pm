package Paws::SageMaker::SourceAlgorithm;
  use Moose;
  has AlgorithmName => (is => 'ro', isa => 'Str', required => 1);
  has ModelDataUrl => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::SourceAlgorithm

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::SourceAlgorithm object:

  $service_obj->Method(Att1 => { AlgorithmName => $value, ..., ModelDataUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::SourceAlgorithm object:

  $result = $service_obj->Method(...);
  $result->Att1->AlgorithmName

=head1 DESCRIPTION

Specifies an algorithm that was used to create the model package. The
algorithm must be either an algorithm resource in your Amazon SageMaker
account or an algorithm in AWS Marketplace that you are subscribed to.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlgorithmName => Str

  The name of an algorithm that was used to create the model package. The
algorithm must be either an algorithm resource in your Amazon SageMaker
account or an algorithm in AWS Marketplace that you are subscribed to.


=head2 ModelDataUrl => Str

  The Amazon S3 path where the model artifacts, which result from model
training, are stored. This path must point to a single C<gzip>
compressed tar archive (C<.tar.gz> suffix).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

