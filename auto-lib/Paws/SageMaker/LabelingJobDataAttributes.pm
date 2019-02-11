package Paws::SageMaker::LabelingJobDataAttributes;
  use Moose;
  has ContentClassifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::LabelingJobDataAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::LabelingJobDataAttributes object:

  $service_obj->Method(Att1 => { ContentClassifiers => $value, ..., ContentClassifiers => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::LabelingJobDataAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->ContentClassifiers

=head1 DESCRIPTION

Attributes of the data specified by the customer. Use these to describe
the data to be labeled.

=head1 ATTRIBUTES


=head2 ContentClassifiers => ArrayRef[Str|Undef]

  Declares that your content is free of personally identifiable
information or adult content. Amazon SageMaker may restrict the Amazon
Mechanical Turk workers that can view your task based on this
information.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

