package Paws::Lambda::LayerVersionContentOutput;
  use Moose;
  has CodeSha256 => (is => 'ro', isa => 'Str');
  has CodeSize => (is => 'ro', isa => 'Int');
  has Location => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::LayerVersionContentOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lambda::LayerVersionContentOutput object:

  $service_obj->Method(Att1 => { CodeSha256 => $value, ..., Location => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lambda::LayerVersionContentOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->CodeSha256

=head1 DESCRIPTION

Details about a version of an AWS Lambda layer
(http://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).

=head1 ATTRIBUTES


=head2 CodeSha256 => Str

  The SHA-256 hash of the layer archive.


=head2 CodeSize => Int

  The size of the layer archive in bytes.


=head2 Location => Str

  A link to the layer archive in Amazon S3 that is valid for 10 minutes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

