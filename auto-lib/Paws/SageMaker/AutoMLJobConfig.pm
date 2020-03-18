package Paws::SageMaker::AutoMLJobConfig;
  use Moose;
  has CompletionCriteria => (is => 'ro', isa => 'Paws::SageMaker::AutoMLJobCompletionCriteria');
  has SecurityConfig => (is => 'ro', isa => 'Paws::SageMaker::AutoMLSecurityConfig');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::AutoMLJobConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::AutoMLJobConfig object:

  $service_obj->Method(Att1 => { CompletionCriteria => $value, ..., SecurityConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::AutoMLJobConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->CompletionCriteria

=head1 DESCRIPTION

A collection of settings used for a job.

=head1 ATTRIBUTES


=head2 CompletionCriteria => L<Paws::SageMaker::AutoMLJobCompletionCriteria>

  How long a job is allowed to run, or how many candidates a job is
allowed to generate.


=head2 SecurityConfig => L<Paws::SageMaker::AutoMLSecurityConfig>

  Security configuration for traffic encryption or Amazon VPC settings.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

