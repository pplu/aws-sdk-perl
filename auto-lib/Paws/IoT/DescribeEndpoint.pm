
package Paws::IoT::DescribeEndpoint;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/endpoint');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DescribeEndpointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEndpointResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeEndpoint - Arguments for method DescribeEndpoint on Paws::IoT

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEndpoint on the 
AWS IoT service. Use the attributes of this class
as arguments to method DescribeEndpoint.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEndpoint.

As an example:

  $service_obj->DescribeEndpoint(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEndpoint in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

