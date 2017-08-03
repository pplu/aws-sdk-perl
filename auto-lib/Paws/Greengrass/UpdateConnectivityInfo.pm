
package Paws::Greengrass::UpdateConnectivityInfo;
  use Moose;
  has ConnectivityInfo => (is => 'ro', isa => 'ArrayRef[Paws::Greengrass::ConnectivityInfo]');
  has ThingName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ThingName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConnectivityInfo');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/things/{ThingName}/connectivityInfo');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::UpdateConnectivityInfoResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::UpdateConnectivityInfo - Arguments for method UpdateConnectivityInfo on Paws::Greengrass

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConnectivityInfo on the 
AWS Greengrass service. Use the attributes of this class
as arguments to method UpdateConnectivityInfo.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConnectivityInfo.

As an example:

  $service_obj->UpdateConnectivityInfo(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ConnectivityInfo => ArrayRef[L<Paws::Greengrass::ConnectivityInfo>]

Connectivity info array



=head2 B<REQUIRED> ThingName => Str

Thing Name




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConnectivityInfo in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

