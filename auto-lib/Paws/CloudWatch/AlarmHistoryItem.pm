package Paws::CloudWatch::AlarmHistoryItem;
  use Moose;
  has AlarmName => (is => 'ro', isa => 'Str');
  has HistoryData => (is => 'ro', isa => 'Str');
  has HistoryItemType => (is => 'ro', isa => 'Str');
  has HistorySummary => (is => 'ro', isa => 'Str');
  has Timestamp => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::AlarmHistoryItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatch::AlarmHistoryItem object:

  $service_obj->Method(Att1 => { AlarmName => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatch::AlarmHistoryItem object:

  $result = $service_obj->Method(...);
  $result->Att1->AlarmName

=head1 DESCRIPTION

Represents the history of a specific alarm.

=head1 ATTRIBUTES


=head2 AlarmName => Str

  The descriptive name for the alarm.


=head2 HistoryData => Str

  Data about the alarm, in JSON format.


=head2 HistoryItemType => Str

  The type of alarm history item.


=head2 HistorySummary => Str

  A summary of the alarm history, in text format.


=head2 Timestamp => Str

  The time stamp for the alarm history item.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

