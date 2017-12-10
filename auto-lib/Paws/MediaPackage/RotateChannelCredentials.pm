
package Paws::MediaPackage::RotateChannelCredentials;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RotateChannelCredentials');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/{id}/credentials');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaPackage::RotateChannelCredentialsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::RotateChannelCredentials - Arguments for method RotateChannelCredentials on L<Paws::MediaPackage>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RotateChannelCredentials on the 
AWS Elemental MediaPackage service. Use the attributes of this class
as arguments to method RotateChannelCredentials.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RotateChannelCredentials.

As an example:

  $service_obj->RotateChannelCredentials(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the channel to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RotateChannelCredentials in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

