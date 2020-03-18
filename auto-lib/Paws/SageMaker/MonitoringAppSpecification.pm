package Paws::SageMaker::MonitoringAppSpecification;
  use Moose;
  has ContainerArguments => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ContainerEntrypoint => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ImageUri => (is => 'ro', isa => 'Str', required => 1);
  has PostAnalyticsProcessorSourceUri => (is => 'ro', isa => 'Str');
  has RecordPreprocessorSourceUri => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::MonitoringAppSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::MonitoringAppSpecification object:

  $service_obj->Method(Att1 => { ContainerArguments => $value, ..., RecordPreprocessorSourceUri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::MonitoringAppSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainerArguments

=head1 DESCRIPTION

Container image configuration object for the monitoring job.

=head1 ATTRIBUTES


=head2 ContainerArguments => ArrayRef[Str|Undef]

  An array of arguments for the container used to run the monitoring job.


=head2 ContainerEntrypoint => ArrayRef[Str|Undef]

  Specifies the entrypoint for a container used to run the monitoring
job.


=head2 B<REQUIRED> ImageUri => Str

  The container image to be run by the monitoring job.


=head2 PostAnalyticsProcessorSourceUri => Str

  An Amazon S3 URI to a script that is called after analysis has been
performed. Applicable only for the built-in (first party) containers.


=head2 RecordPreprocessorSourceUri => Str

  An Amazon S3 URI to a script that is called per row prior to running
analysis. It can base64 decode the payload and convert it into a
flatted json so that the built-in container can use the converted data.
Applicable only for the built-in (first party) containers.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

