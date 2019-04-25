package Paws::Batch::JobDefinition;
  use Moose;
  has ContainerProperties => (is => 'ro', isa => 'Paws::Batch::ContainerProperties', request_name => 'containerProperties', traits => ['NameInRequest']);
  has JobDefinitionArn => (is => 'ro', isa => 'Str', request_name => 'jobDefinitionArn', traits => ['NameInRequest'], required => 1);
  has JobDefinitionName => (is => 'ro', isa => 'Str', request_name => 'jobDefinitionName', traits => ['NameInRequest'], required => 1);
  has NodeProperties => (is => 'ro', isa => 'Paws::Batch::NodeProperties', request_name => 'nodeProperties', traits => ['NameInRequest']);
  has Parameters => (is => 'ro', isa => 'Paws::Batch::ParametersMap', request_name => 'parameters', traits => ['NameInRequest']);
  has RetryStrategy => (is => 'ro', isa => 'Paws::Batch::RetryStrategy', request_name => 'retryStrategy', traits => ['NameInRequest']);
  has Revision => (is => 'ro', isa => 'Int', request_name => 'revision', traits => ['NameInRequest'], required => 1);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Timeout => (is => 'ro', isa => 'Paws::Batch::JobTimeout', request_name => 'timeout', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::JobDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::JobDefinition object:

  $service_obj->Method(Att1 => { ContainerProperties => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::JobDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainerProperties

=head1 DESCRIPTION

An object representing an AWS Batch job definition.

=head1 ATTRIBUTES


=head2 ContainerProperties => L<Paws::Batch::ContainerProperties>

  An object with various properties specific to container-based jobs.


=head2 B<REQUIRED> JobDefinitionArn => Str

  The Amazon Resource Name (ARN) for the job definition.


=head2 B<REQUIRED> JobDefinitionName => Str

  The name of the job definition.


=head2 NodeProperties => L<Paws::Batch::NodeProperties>

  An object with various properties specific to multi-node parallel jobs.


=head2 Parameters => L<Paws::Batch::ParametersMap>

  Default parameters or parameter substitution placeholders that are set
in the job definition. Parameters are specified as a key-value pair
mapping. Parameters in a C<SubmitJob> request override any
corresponding parameter defaults from the job definition.


=head2 RetryStrategy => L<Paws::Batch::RetryStrategy>

  The retry strategy to use for failed jobs that are submitted with this
job definition.


=head2 B<REQUIRED> Revision => Int

  The revision of the job definition.


=head2 Status => Str

  The status of the job definition.


=head2 Timeout => L<Paws::Batch::JobTimeout>

  The timeout configuration for jobs that are submitted with this job
definition. You can specify a timeout duration after which AWS Batch
terminates your jobs if they have not finished.


=head2 B<REQUIRED> Type => Str

  The type of job definition.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

