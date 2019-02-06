package Paws::Lambda::Layer;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CodeSize => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::Layer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lambda::Layer object:

  $service_obj->Method(Att1 => { Arn => $value, ..., CodeSize => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lambda::Layer object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

An AWS Lambda layer
(http://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the function layer.


=head2 CodeSize => Int

  The size of the layer archive in bytes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

