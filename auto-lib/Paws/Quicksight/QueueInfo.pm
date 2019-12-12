package Paws::Quicksight::QueueInfo;
  use Moose;
  has QueuedIngestion => (is => 'ro', isa => 'Str', required => 1);
  has WaitingOnIngestion => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::QueueInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Quicksight::QueueInfo object:

  $service_obj->Method(Att1 => { QueuedIngestion => $value, ..., WaitingOnIngestion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Quicksight::QueueInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->QueuedIngestion

=head1 DESCRIPTION

Information about a queued dataset SPICE ingestion.

=head1 ATTRIBUTES


=head2 B<REQUIRED> QueuedIngestion => Str

  The ID of the ongoing ingestion. The queued ingestion is waiting for
the ongoing ingestion to complete.


=head2 B<REQUIRED> WaitingOnIngestion => Str

  The ID of the queued ingestion.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

