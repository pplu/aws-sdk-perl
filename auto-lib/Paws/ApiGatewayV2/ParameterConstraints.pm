package Paws::ApiGatewayV2::ParameterConstraints;
  use Moose;
  has Required => (is => 'ro', isa => 'Bool', request_name => 'required', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::ParameterConstraints

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::ParameterConstraints object:

  $service_obj->Method(Att1 => { Required => $value, ..., Required => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::ParameterConstraints object:

  $result = $service_obj->Method(...);
  $result->Att1->Required

=head1 DESCRIPTION

Validation constraints imposed on parameters of a request (path, query
string, headers).

=head1 ATTRIBUTES


=head2 Required => Bool

  Whether or not the parameter is required.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

