package Paws::IoTAnalytics::Dataset;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::IoTAnalytics::DatasetAction]', request_name => 'actions', traits => ['NameInRequest']);
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has ContentDeliveryRules => (is => 'ro', isa => 'ArrayRef[Paws::IoTAnalytics::DatasetContentDeliveryRule]', request_name => 'contentDeliveryRules', traits => ['NameInRequest']);
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has LastUpdateTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdateTime', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has RetentionPeriod => (is => 'ro', isa => 'Paws::IoTAnalytics::RetentionPeriod', request_name => 'retentionPeriod', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Triggers => (is => 'ro', isa => 'ArrayRef[Paws::IoTAnalytics::DatasetTrigger]', request_name => 'triggers', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::Dataset

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::Dataset object:

  $service_obj->Method(Att1 => { Actions => $value, ..., Triggers => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::Dataset object:

  $result = $service_obj->Method(...);
  $result->Att1->Actions

=head1 DESCRIPTION

Information about a data set.

=head1 ATTRIBUTES


=head2 Actions => ArrayRef[L<Paws::IoTAnalytics::DatasetAction>]

  The "DatasetAction" objects that automatically create the data set
contents.


=head2 Arn => Str

  The ARN of the data set.


=head2 ContentDeliveryRules => ArrayRef[L<Paws::IoTAnalytics::DatasetContentDeliveryRule>]

  When data set contents are created they are delivered to destinations
specified here.


=head2 CreationTime => Str

  When the data set was created.


=head2 LastUpdateTime => Str

  The last time the data set was updated.


=head2 Name => Str

  The name of the data set.


=head2 RetentionPeriod => L<Paws::IoTAnalytics::RetentionPeriod>

  [Optional] How long, in days, message data is kept for the data set.


=head2 Status => Str

  The status of the data set.


=head2 Triggers => ArrayRef[L<Paws::IoTAnalytics::DatasetTrigger>]

  The "DatasetTrigger" objects that specify when the data set is
automatically updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

