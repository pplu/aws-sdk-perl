
package Paws::IoT::DetachThingPrincipal;
  use Moose;
  has Principal => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amzn-principal', required => 1);
  has ThingName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'thingName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachThingPrincipal');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/things/{thingName}/principals');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DetachThingPrincipalResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DetachThingPrincipal - Arguments for method DetachThingPrincipal on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetachThingPrincipal on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DetachThingPrincipal.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetachThingPrincipal.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DetachThingPrincipalResponse = $iot->DetachThingPrincipal(
      Principal => 'MyPrincipal',
      ThingName => 'MyThingName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DetachThingPrincipal>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Principal => Str

If the principal is a certificate, this value must be ARN of the
certificate. If the principal is an Amazon Cognito identity, this value
must be the ID of the Amazon Cognito identity.



=head2 B<REQUIRED> ThingName => Str

The name of the thing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetachThingPrincipal in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

