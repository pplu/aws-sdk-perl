package Paws::SageMaker::DesiredWeightAndCapacity;
  use Moose;
  has DesiredInstanceCount => (is => 'ro', isa => 'Int');
  has DesiredWeight => (is => 'ro', isa => 'Num');
  has VariantName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DesiredWeightAndCapacity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::DesiredWeightAndCapacity object:

  $service_obj->Method(Att1 => { DesiredInstanceCount => $value, ..., VariantName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::DesiredWeightAndCapacity object:

  $result = $service_obj->Method(...);
  $result->Att1->DesiredInstanceCount

=head1 DESCRIPTION

Specifies weight and capacity values for a production variant.

=head1 ATTRIBUTES


=head2 DesiredInstanceCount => Int

  The variant's capacity.


=head2 DesiredWeight => Num

  The variant's weight.


=head2 B<REQUIRED> VariantName => Str

  The name of the variant to update.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

