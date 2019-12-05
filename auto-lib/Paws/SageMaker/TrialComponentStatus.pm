package Paws::SageMaker::TrialComponentStatus;
  use Moose;
  has Message => (is => 'ro', isa => 'Str');
  has PrimaryStatus => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::TrialComponentStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::TrialComponentStatus object:

  $service_obj->Method(Att1 => { Message => $value, ..., PrimaryStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::TrialComponentStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->Message

=head1 DESCRIPTION

The status of the trial component.

=head1 ATTRIBUTES


=head2 Message => Str

  If the component failed, a message describing why.


=head2 PrimaryStatus => Str

  The status of the trial component.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

