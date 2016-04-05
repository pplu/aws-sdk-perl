
package Paws::IoTData::Publish;
  use Moose;
  has Payload => (is => 'ro', isa => 'Str');
  has Qos => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'qos' );
  has Topic => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'topic' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Publish');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/topics/{topic}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTData::Publish - Arguments for method Publish on Paws::IoTData

=head1 DESCRIPTION

This class represents the parameters used for calling the method Publish on the 
AWS IoT Data Plane service. Use the attributes of this class
as arguments to method Publish.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Publish.

As an example:

  $service_obj->Publish(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Payload => Str

The state information, in JSON format.



=head2 Qos => Int

The Quality of Service (QoS) level.



=head2 B<REQUIRED> Topic => Str

The name of the MQTT topic.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Publish in L<Paws::IoTData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

