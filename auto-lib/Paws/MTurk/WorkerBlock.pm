package Paws::MTurk::WorkerBlock;
  use Moose;
  has Reason => (is => 'ro', isa => 'Str');
  has WorkerId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::WorkerBlock

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MTurk::WorkerBlock object:

  $service_obj->Method(Att1 => { Reason => $value, ..., WorkerId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MTurk::WorkerBlock object:

  $result = $service_obj->Method(...);
  $result->Att1->Reason

=head1 DESCRIPTION

The WorkerBlock data structure represents a Worker who has been
blocked. It has two elements: the WorkerId and the Reason for the
block.

=head1 ATTRIBUTES


=head2 Reason => Str

  A message explaining the reason the Worker was blocked.


=head2 WorkerId => Str

  The ID of the Worker who accepted the HIT.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

