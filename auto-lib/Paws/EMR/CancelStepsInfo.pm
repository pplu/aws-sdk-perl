package Paws::EMR::CancelStepsInfo;
  use Moose;
  has Reason => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StepId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::CancelStepsInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::CancelStepsInfo object:

  $service_obj->Method(Att1 => { Reason => $value, ..., StepId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::CancelStepsInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->Reason

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Reason => Str

  


=head2 Status => Str

  


=head2 StepId => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

