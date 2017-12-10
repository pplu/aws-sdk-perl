
package Paws::MediaPackage::DescribeChannel;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackage::DescribeChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::DescribeChannel - Arguments for method DescribeChannel on L<Paws::MediaPackage>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeChannel on the 
AWS Elemental MediaPackage service. Use the attributes of this class
as arguments to method DescribeChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeChannel.

As an example:

  $service_obj->DescribeChannel(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of a Channel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeChannel in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

