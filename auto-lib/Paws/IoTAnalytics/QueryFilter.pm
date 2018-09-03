package Paws::IoTAnalytics::QueryFilter;
  use Moose;
  has DeltaTime => (is => 'ro', isa => 'Paws::IoTAnalytics::DeltaTime', request_name => 'deltaTime', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::QueryFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::QueryFilter object:

  $service_obj->Method(Att1 => { DeltaTime => $value, ..., DeltaTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::QueryFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->DeltaTime

=head1 DESCRIPTION

Information which is used to filter message data, to segregate it
according to the time frame in which it arrives.

=head1 ATTRIBUTES


=head2 DeltaTime => L<Paws::IoTAnalytics::DeltaTime>

  Used to limit data to that which has arrived since the last execution
of the action. When you create data set contents using message data
from a specified time frame, some message data may still be "in flight"
when processing begins, and so will not arrive in time to be processed.
Use this field to make allowances for the "in flight" time of you
message data, so that data not processed from a previous time frame
will be included with the next time frame. Without this, missed message
data would be excluded from processing during the next time frame as
well, because its timestamp places it within the previous time frame.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

