package Paws::SageMaker::ModelPackageStatusDetails;
  use Moose;
  has ImageScanStatuses => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ModelPackageStatusItem]');
  has ValidationStatuses => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::ModelPackageStatusItem]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ModelPackageStatusDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ModelPackageStatusDetails object:

  $service_obj->Method(Att1 => { ImageScanStatuses => $value, ..., ValidationStatuses => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ModelPackageStatusDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->ImageScanStatuses

=head1 DESCRIPTION

Specifies the validation and image scan statuses of the model package.

=head1 ATTRIBUTES


=head2 ImageScanStatuses => ArrayRef[L<Paws::SageMaker::ModelPackageStatusItem>]

  The status of the scan of the Docker image container for the model
package.


=head2 B<REQUIRED> ValidationStatuses => ArrayRef[L<Paws::SageMaker::ModelPackageStatusItem>]

  The validation status of the model package.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

