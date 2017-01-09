
package Paws::Batch::RegisterJobDefinition;
  use Moose;
  has ContainerProperties => (is => 'ro', isa => 'Paws::Batch::ContainerProperties');
  has JobDefinitionName => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::Batch::ParametersMap');
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterJobDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/registerjobdefinition');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::RegisterJobDefinitionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::RegisterJobDefinition - Arguments for method RegisterJobDefinition on Paws::Batch

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterJobDefinition on the 
AWS Batch service. Use the attributes of this class
as arguments to method RegisterJobDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterJobDefinition.

As an example:

  $service_obj->RegisterJobDefinition(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ContainerProperties => L<Paws::Batch::ContainerProperties>

An object with various properties specific for container-based jobs.
This parameter is required if the C<type> parameter is C<container>.



=head2 B<REQUIRED> JobDefinitionName => Str

The name of the job definition to register.



=head2 Parameters => L<Paws::Batch::ParametersMap>

Default parameter substitution placeholders to set in the job
definition. Parameters are specified as a key-value pair mapping.
Parameters in a C<SubmitJob> request override any corresponding
parameter defaults from the job definition.



=head2 B<REQUIRED> Type => Str

The type of job definition.

Valid values are: C<"container">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterJobDefinition in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

