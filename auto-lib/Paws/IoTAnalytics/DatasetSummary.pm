package Paws::IoTAnalytics::DatasetSummary;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::IoTAnalytics::DatasetActionSummary]', request_name => 'actions', traits => ['NameInRequest']);
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has DatasetName => (is => 'ro', isa => 'Str', request_name => 'datasetName', traits => ['NameInRequest']);
  has LastUpdateTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdateTime', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Triggers => (is => 'ro', isa => 'ArrayRef[Paws::IoTAnalytics::DatasetTrigger]', request_name => 'triggers', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::DatasetSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::DatasetSummary object:

  $service_obj->Method(Att1 => { Actions => $value, ..., Triggers => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::DatasetSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Actions

=head1 DESCRIPTION

A summary of information about a data set.

=head1 ATTRIBUTES


=head2 Actions => ArrayRef[L<Paws::IoTAnalytics::DatasetActionSummary>]

  A list of "DataActionSummary" objects.


=head2 CreationTime => Str

  The time the data set was created.


=head2 DatasetName => Str

  The name of the data set.


=head2 LastUpdateTime => Str

  The last time the data set was updated.


=head2 Status => Str

  The status of the data set.


=head2 Triggers => ArrayRef[L<Paws::IoTAnalytics::DatasetTrigger>]

  A list of triggers. A trigger causes data set content to be populated
at a specified time interval or when another data set is populated. The
list of triggers can be empty or contain up to five DataSetTrigger
objects



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

