# Generated from default/object.tt
package Paws::SageMaker::LabelingJobInputConfig;
  use Moo;
  use Types::Standard qw//;
  use Paws::SageMaker::Types qw/SageMaker_LabelingJobDataSource SageMaker_LabelingJobDataAttributes/;
  has DataAttributes => (is => 'ro', isa => SageMaker_LabelingJobDataAttributes);
  has DataSource => (is => 'ro', isa => SageMaker_LabelingJobDataSource, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DataSource' => {
                                 'class' => 'Paws::SageMaker::LabelingJobDataSource',
                                 'type' => 'SageMaker_LabelingJobDataSource'
                               },
               'DataAttributes' => {
                                     'class' => 'Paws::SageMaker::LabelingJobDataAttributes',
                                     'type' => 'SageMaker_LabelingJobDataAttributes'
                                   }
             },
  'IsRequired' => {
                    'DataSource' => 1
                  }
}
;
    return $Params_map;
  }


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


=head2 DataAttributes => SageMaker_LabelingJobDataAttributes

  Attributes of the data specified by the customer.


=head2 B<REQUIRED> DataSource => SageMaker_LabelingJobDataSource

  The location of the input data.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

