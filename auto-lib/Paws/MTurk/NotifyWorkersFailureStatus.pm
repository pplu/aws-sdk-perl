package Paws::MTurk::NotifyWorkersFailureStatus;
  use Moose;
  has NotifyWorkersFailureCode => (is => 'ro', isa => 'Str');
  has NotifyWorkersFailureMessage => (is => 'ro', isa => 'Str');
  has WorkerId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::NotifyWorkersFailureStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MTurk::NotifyWorkersFailureStatus object:

  $service_obj->Method(Att1 => { NotifyWorkersFailureCode => $value, ..., WorkerId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MTurk::NotifyWorkersFailureStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->NotifyWorkersFailureCode

=head1 DESCRIPTION

When MTurk encounters an issue with notifying the Workers you
specified, it returns back this object with failure details.

=head1 ATTRIBUTES


=head2 NotifyWorkersFailureCode => Str

  Encoded value for the failure type.


=head2 NotifyWorkersFailureMessage => Str

  A message detailing the reason the Worker could not be notified.


=head2 WorkerId => Str

  The ID of the Worker.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

