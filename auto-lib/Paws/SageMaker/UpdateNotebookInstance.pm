
package Paws::SageMaker::UpdateNotebookInstance;
  use Moose;
  has InstanceType => (is => 'ro', isa => 'Str');
  has NotebookInstanceName => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateNotebookInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateNotebookInstanceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateNotebookInstance - Arguments for method UpdateNotebookInstance on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateNotebookInstance on the 
Amazon SageMaker Service service. Use the attributes of this class
as arguments to method UpdateNotebookInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateNotebookInstance.

As an example:

  $service_obj->UpdateNotebookInstance(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 InstanceType => Str

The Amazon ML compute instance type.

Valid values are: C<"ml.t2.medium">, C<"ml.m4.xlarge">, C<"ml.p2.xlarge">

=head2 B<REQUIRED> NotebookInstanceName => Str

The name of the notebook instance to update.



=head2 RoleArn => Str

Amazon Resource Name (ARN) of the IAM role to associate with the
instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateNotebookInstance in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

