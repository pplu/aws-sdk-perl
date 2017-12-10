package Paws::CloudFront::LambdaFunctionAssociations;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CloudFront::LambdaFunctionAssociation]', request_name => 'LambdaFunctionAssociation', traits => ['NameInRequest']);
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::LambdaFunctionAssociations

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::LambdaFunctionAssociations object:

  $service_obj->Method(Att1 => { Items => $value, ..., Quantity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::LambdaFunctionAssociations object:

  $result = $service_obj->Method(...);
  $result->Att1->Items

=head1 DESCRIPTION

A complex type that specifies a list of Lambda functions associations
for a cache behavior.

If you want to invoke one or more Lambda functions triggered by
requests that match the C<PathPattern> of the cache behavior, specify
the applicable values for C<Quantity> and C<Items>. Note that there can
be up to 4 C<LambdaFunctionAssociation> items in this list (one for
each possible value of C<EventType>) and each C<EventType> can be
associated with the Lambda function only once.

If you don't want to invoke any Lambda functions for the requests that
match C<PathPattern>, specify C<0> for C<Quantity> and omit C<Items>.

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::CloudFront::LambdaFunctionAssociation>]

  B<Optional>: A complex type that contains C<LambdaFunctionAssociation>
items for this cache behavior. If C<Quantity> is C<0>, you can omit
C<Items>.


=head2 B<REQUIRED> Quantity => Int

  The number of Lambda function associations for this cache behavior.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

