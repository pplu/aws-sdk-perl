package Paws::CloudWatchEvents::PutEventsRequestEntry;
  use Moose;
  has Detail => (is => 'ro', isa => 'Str');
  has DetailType => (is => 'ro', isa => 'Str');
  has Resources => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Source => (is => 'ro', isa => 'Str');
  has Time => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::PutEventsRequestEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchEvents::PutEventsRequestEntry object:

  $service_obj->Method(Att1 => { Detail => $value, ..., Time => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchEvents::PutEventsRequestEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Detail

=head1 DESCRIPTION

Contains information about the event to be used in PutEvents.

=head1 ATTRIBUTES


=head2 Detail => Str

  In the JSON sense, an object containing fields, which may also contain
nested sub-objects. No constraints are imposed on its contents.


=head2 DetailType => Str

  Free-form string used to decide what fields to expect in the event
detail.


=head2 Resources => ArrayRef[Str|Undef]

  AWS resources, identified by Amazon Resource Name (ARN), which the
event primarily concerns. Any number, including zero, may be present.


=head2 Source => Str

  The source of the event.


=head2 Time => Str

  Timestamp of event, per RFC3339. If no timestamp is provided, the
timestamp of the PutEvents call will be used.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

