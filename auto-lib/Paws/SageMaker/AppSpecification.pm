package Paws::SageMaker::AppSpecification;
  use Moose;
  has ContainerArguments => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ContainerEntrypoint => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ImageUri => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::AppSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::AppSpecification object:

  $service_obj->Method(Att1 => { ContainerArguments => $value, ..., ImageUri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::AppSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainerArguments

=head1 DESCRIPTION

Configuration to run a processing job in a specified container image.

=head1 ATTRIBUTES


=head2 ContainerArguments => ArrayRef[Str|Undef]

  The arguments for a container used to run a processing job.


=head2 ContainerEntrypoint => ArrayRef[Str|Undef]

  The entrypoint for a container used to run a processing job.


=head2 B<REQUIRED> ImageUri => Str

  The container image to be run by the processing job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

