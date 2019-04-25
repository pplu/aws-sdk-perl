
package Paws::IoT::ClearDefaultAuthorizer;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ClearDefaultAuthorizer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/default-authorizer');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ClearDefaultAuthorizerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ClearDefaultAuthorizer - Arguments for method ClearDefaultAuthorizer on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ClearDefaultAuthorizer on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ClearDefaultAuthorizer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ClearDefaultAuthorizer.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ClearDefaultAuthorizerResponse = $iot->ClearDefaultAuthorizer();

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ClearDefaultAuthorizer>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ClearDefaultAuthorizer in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

