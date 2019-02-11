package Paws::SageMaker::LabelingJobInputConfig;
  use Moose;
  has DataAttributes => (is => 'ro', isa => 'Paws::SageMaker::LabelingJobDataAttributes');
  has DataSource => (is => 'ro', isa => 'Paws::SageMaker::LabelingJobDataSource', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::LabelingJobInputConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::LabelingJobInputConfig object:

  $service_obj->Method(Att1 => { DataAttributes => $value, ..., DataSource => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::LabelingJobInputConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->DataAttributes

=head1 DESCRIPTION

Input configuration information for a labeling job.

=head1 ATTRIBUTES


=head2 DataAttributes => L<Paws::SageMaker::LabelingJobDataAttributes>

  Attributes of the data specified by the customer.


=head2 B<REQUIRED> DataSource => L<Paws::SageMaker::LabelingJobDataSource>

  The location of the input data.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

