package Paws::CloudWatchEvents::PutEventsResultEntry;
  use Moose;
  has ErrorCode => (is => 'ro', isa => 'Str');
  has ErrorMessage => (is => 'ro', isa => 'Str');
  has EventId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::PutEventsResultEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchEvents::PutEventsResultEntry object:

  $service_obj->Method(Att1 => { ErrorCode => $value, ..., EventId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchEvents::PutEventsResultEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCode

=head1 DESCRIPTION

A PutEventsResult contains a list of PutEventsResultEntry.

=head1 ATTRIBUTES


=head2 ErrorCode => Str

  The error code representing why the event submission failed on this
entry.


=head2 ErrorMessage => Str

  The error message explaining why the event submission failed on this
entry.


=head2 EventId => Str

  The ID of the event submitted to Amazon CloudWatch Events.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

