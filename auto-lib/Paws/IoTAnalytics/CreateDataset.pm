
package Paws::IoTAnalytics::CreateDataset;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::IoTAnalytics::DatasetAction]', traits => ['NameInRequest'], request_name => 'actions', required => 1);
  has DatasetName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetName', required => 1);
  has Triggers => (is => 'ro', isa => 'ArrayRef[Paws::IoTAnalytics::DatasetTrigger]', traits => ['NameInRequest'], request_name => 'triggers');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDataset');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/datasets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTAnalytics::CreateDatasetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::CreateDataset - Arguments for method CreateDataset on L<Paws::IoTAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDataset on the 
AWS IoT Analytics service. Use the attributes of this class
as arguments to method CreateDataset.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDataset.

As an example:

  $service_obj->CreateDataset(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Actions => ArrayRef[L<Paws::IoTAnalytics::DatasetAction>]

A list of actions that create the data set. Only one action is
supported at this time.



=head2 B<REQUIRED> DatasetName => Str

The name of the data set.



=head2 Triggers => ArrayRef[L<Paws::IoTAnalytics::DatasetTrigger>]

A list of triggers. A trigger causes data set content to be populated
at a specified time or time interval. The list of triggers can be empty
or contain up to five B<DataSetTrigger> objects.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDataset in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

