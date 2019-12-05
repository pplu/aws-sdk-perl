package Paws::IoT::AuthorizerConfig;
  use Moose;
  has AllowAuthorizerOverride => (is => 'ro', isa => 'Bool', request_name => 'allowAuthorizerOverride', traits => ['NameInRequest']);
  has DefaultAuthorizerName => (is => 'ro', isa => 'Str', request_name => 'defaultAuthorizerName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AuthorizerConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::AuthorizerConfig object:

  $service_obj->Method(Att1 => { AllowAuthorizerOverride => $value, ..., DefaultAuthorizerName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::AuthorizerConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowAuthorizerOverride

=head1 DESCRIPTION

An object that specifies the authorization service for a domain.

=head1 ATTRIBUTES


=head2 AllowAuthorizerOverride => Bool

  A Boolean that specifies whether the domain configuration's
authorization service can be overridden.


=head2 DefaultAuthorizerName => Str

  The name of the authorization service for a domain configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

