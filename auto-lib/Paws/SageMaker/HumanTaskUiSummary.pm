package Paws::SageMaker::HumanTaskUiSummary;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has HumanTaskUiArn => (is => 'ro', isa => 'Str', required => 1);
  has HumanTaskUiName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::HumanTaskUiSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::HumanTaskUiSummary object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., HumanTaskUiName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::HumanTaskUiSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Container for human task user interface information.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

  A timestamp when SageMaker created the human task user interface.


=head2 B<REQUIRED> HumanTaskUiArn => Str

  The Amazon Resource Name (ARN) of the human task user interface.


=head2 B<REQUIRED> HumanTaskUiName => Str

  The name of the human task user interface.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

