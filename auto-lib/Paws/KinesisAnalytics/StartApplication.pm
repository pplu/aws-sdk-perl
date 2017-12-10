
package Paws::KinesisAnalytics::StartApplication;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has InputConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalytics::InputConfiguration]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalytics::StartApplicationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::StartApplication - Arguments for method StartApplication on L<Paws::KinesisAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartApplication on the 
Amazon Kinesis Analytics service. Use the attributes of this class
as arguments to method StartApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartApplication.

As an example:

  $service_obj->StartApplication(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

Name of the application.



=head2 B<REQUIRED> InputConfigurations => ArrayRef[L<Paws::KinesisAnalytics::InputConfiguration>]

Identifies the specific input, by ID, that the application starts
consuming. Amazon Kinesis Analytics starts reading the streaming source
associated with the input. You can also specify where in the streaming
source you want Amazon Kinesis Analytics to start reading.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartApplication in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

