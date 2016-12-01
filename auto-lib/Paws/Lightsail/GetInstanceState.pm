
package Paws::Lightsail::GetInstanceState;
  use Moose;
  has InstanceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInstanceState');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetInstanceStateResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetInstanceState - Arguments for method GetInstanceState on Paws::Lightsail

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetInstanceState on the 
Amazon Lightsail service. Use the attributes of this class
as arguments to method GetInstanceState.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetInstanceState.

As an example:

  $service_obj->GetInstanceState(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceName => Str

The name of the instance to get state information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetInstanceState in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

