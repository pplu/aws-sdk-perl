# Generated from default/object.tt
package Paws::Batch::JobDefinition;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Batch::Types qw/Batch_RetryStrategy Batch_JobTimeout Batch_ParametersMap Batch_ContainerProperties Batch_NodeProperties/;
  has ContainerProperties => (is => 'ro', isa => Batch_ContainerProperties);
  has JobDefinitionArn => (is => 'ro', isa => Str, required => 1);
  has JobDefinitionName => (is => 'ro', isa => Str, required => 1);
  has NodeProperties => (is => 'ro', isa => Batch_NodeProperties);
  has Parameters => (is => 'ro', isa => Batch_ParametersMap);
  has RetryStrategy => (is => 'ro', isa => Batch_RetryStrategy);
  has Revision => (is => 'ro', isa => Int, required => 1);
  has Status => (is => 'ro', isa => Str);
  has Timeout => (is => 'ro', isa => Batch_JobTimeout);
  has Type => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Revision' => {
                               'type' => 'Int'
                             },
               'Status' => {
                             'type' => 'Str'
                           },
               'ContainerProperties' => {
                                          'class' => 'Paws::Batch::ContainerProperties',
                                          'type' => 'Batch_ContainerProperties'
                                        },
               'Parameters' => {
                                 'class' => 'Paws::Batch::ParametersMap',
                                 'type' => 'Batch_ParametersMap'
                               },
               'Type' => {
                           'type' => 'Str'
                         },
               'RetryStrategy' => {
                                    'class' => 'Paws::Batch::RetryStrategy',
                                    'type' => 'Batch_RetryStrategy'
                                  },
               'JobDefinitionName' => {
                                        'type' => 'Str'
                                      },
               'NodeProperties' => {
                                     'class' => 'Paws::Batch::NodeProperties',
                                     'type' => 'Batch_NodeProperties'
                                   },
               'Timeout' => {
                              'class' => 'Paws::Batch::JobTimeout',
                              'type' => 'Batch_JobTimeout'
                            },
               'JobDefinitionArn' => {
                                       'type' => 'Str'
                                     }
             },
  'NameInRequest' => {
                       'Revision' => 'revision',
                       'Status' => 'status',
                       'ContainerProperties' => 'containerProperties',
                       'Parameters' => 'parameters',
                       'Type' => 'type',
                       'RetryStrategy' => 'retryStrategy',
                       'JobDefinitionName' => 'jobDefinitionName',
                       'NodeProperties' => 'nodeProperties',
                       'Timeout' => 'timeout',
                       'JobDefinitionArn' => 'jobDefinitionArn'
                     },
  'IsRequired' => {
                    'Type' => 1,
                    'Revision' => 1,
                    'JobDefinitionName' => 1,
                    'JobDefinitionArn' => 1
                  }
}
;
    return $Params_map;
  }


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


=head2 ContainerProperties => Batch_ContainerProperties

  An object with various properties specific to container-based jobs.


=head2 B<REQUIRED> JobDefinitionArn => Str

  The Amazon Resource Name (ARN) for the job definition.


=head2 B<REQUIRED> JobDefinitionName => Str

  The name of the job definition.


=head2 NodeProperties => Batch_NodeProperties

  An object with various properties specific to multi-node parallel jobs.


=head2 Parameters => Batch_ParametersMap

  Default parameters or parameter substitution placeholders that are set
in the job definition. Parameters are specified as a key-value pair
mapping. Parameters in a C<SubmitJob> request override any
corresponding parameter defaults from the job definition. For more
information about specifying parameters, see Job Definition Parameters
(https://docs.aws.amazon.com/batch/latest/userguide/job_definition_parameters.html)
in the I<AWS Batch User Guide>.


=head2 RetryStrategy => Batch_RetryStrategy

  The retry strategy to use for failed jobs that are submitted with this
job definition.


=head2 B<REQUIRED> Revision => Int

  The revision of the job definition.


=head2 Status => Str

  The status of the job definition.


=head2 Timeout => Batch_JobTimeout

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

