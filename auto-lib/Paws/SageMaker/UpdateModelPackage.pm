
package Paws::SageMaker::UpdateModelPackage;
  use Moose;
  has ApprovalDescription => (is => 'ro', isa => 'Str');
  has ModelApprovalStatus => (is => 'ro', isa => 'Str', required => 1);
  has ModelPackageArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateModelPackage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateModelPackageOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateModelPackage - Arguments for method UpdateModelPackage on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateModelPackage on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateModelPackage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateModelPackage.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateModelPackageOutput = $api . sagemaker->UpdateModelPackage(
      ModelApprovalStatus => 'Approved',
      ModelPackageArn     => 'MyModelPackageArn',
      ApprovalDescription => 'MyApprovalDescription',    # OPTIONAL
    );

    # Results:
    my $ModelPackageArn = $UpdateModelPackageOutput->ModelPackageArn;

    # Returns a L<Paws::SageMaker::UpdateModelPackageOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateModelPackage>

=head1 ATTRIBUTES


=head2 ApprovalDescription => Str

A description for the approval status of the model.



=head2 B<REQUIRED> ModelApprovalStatus => Str

The approval status of the model.

Valid values are: C<"Approved">, C<"Rejected">, C<"PendingManualApproval">

=head2 B<REQUIRED> ModelPackageArn => Str

The Amazon Resource Name (ARN) of the model.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateModelPackage in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

