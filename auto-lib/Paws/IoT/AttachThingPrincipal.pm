
package Paws::IoT::AttachThingPrincipal;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has Principal => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ThingName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AttachThingPrincipal');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/things/{thingName}/principals');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::AttachThingPrincipalResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'ThingName' => 'thingName'
                  },
  'types' => {
               'ThingName' => {
                                'type' => 'Str'
                              },
               'Principal' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'ThingName' => 1,
                    'Principal' => 1
                  },
  'ParamInHeader' => {
                       'Principal' => 'x-amzn-principal'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AttachThingPrincipal - Arguments for method AttachThingPrincipal on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AttachThingPrincipal on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method AttachThingPrincipal.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AttachThingPrincipal.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $AttachThingPrincipalResponse = $iot->AttachThingPrincipal(
      Principal => 'MyPrincipal',
      ThingName => 'MyThingName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/AttachThingPrincipal>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Principal => Str

The principal, which can be a certificate ARN (as returned from the
CreateCertificate operation) or an Amazon Cognito ID.



=head2 B<REQUIRED> ThingName => Str

The name of the thing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AttachThingPrincipal in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

