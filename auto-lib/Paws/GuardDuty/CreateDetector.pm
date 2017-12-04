
package Paws::GuardDuty::CreateDetector;
  use Moose;
  has Enable => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'enable');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDetector');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::CreateDetectorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::CreateDetector - Arguments for method CreateDetector on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDetector on the 
Amazon GuardDuty service. Use the attributes of this class
as arguments to method CreateDetector.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDetector.

As an example:

  $service_obj->CreateDetector(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Enable => Bool

A boolean value that specifies whether the detector is to be enabled.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDetector in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

