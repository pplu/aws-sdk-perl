
package Paws::Glue::UpdateJob;
  use Moose;
  has JobName => (is => 'ro', isa => 'Str', required => 1);
  has JobUpdate => (is => 'ro', isa => 'Paws::Glue::JobUpdate', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::UpdateJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateJob - Arguments for method UpdateJob on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateJob on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method UpdateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateJob.

As an example:

  $service_obj->UpdateJob(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/UpdateJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobName => Str

Name of the job definition to update.



=head2 B<REQUIRED> JobUpdate => L<Paws::Glue::JobUpdate>

Specifies the values with which to update the job definition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateJob in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

