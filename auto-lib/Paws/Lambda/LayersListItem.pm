package Paws::Lambda::LayersListItem;
  use Moose;
  has LatestMatchingVersion => (is => 'ro', isa => 'Paws::Lambda::LayerVersionsListItem');
  has LayerArn => (is => 'ro', isa => 'Str');
  has LayerName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::LayersListItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lambda::LayersListItem object:

  $service_obj->Method(Att1 => { LatestMatchingVersion => $value, ..., LayerName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lambda::LayersListItem object:

  $result = $service_obj->Method(...);
  $result->Att1->LatestMatchingVersion

=head1 DESCRIPTION

Details about an AWS Lambda layer
(http://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).

=head1 ATTRIBUTES


=head2 LatestMatchingVersion => L<Paws::Lambda::LayerVersionsListItem>

  The newest version of the layer.


=head2 LayerArn => Str

  The Amazon Resource Name (ARN) of the function layer.


=head2 LayerName => Str

  The name of the layer.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

