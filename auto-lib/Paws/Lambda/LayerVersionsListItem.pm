package Paws::Lambda::LayerVersionsListItem;
  use Moose;
  has CompatibleRuntimes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CreatedDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LayerVersionArn => (is => 'ro', isa => 'Str');
  has LicenseInfo => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::LayerVersionsListItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lambda::LayerVersionsListItem object:

  $service_obj->Method(Att1 => { CompatibleRuntimes => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lambda::LayerVersionsListItem object:

  $result = $service_obj->Method(...);
  $result->Att1->CompatibleRuntimes

=head1 DESCRIPTION

Details about a version of an AWS Lambda layer
(http://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).

=head1 ATTRIBUTES


=head2 CompatibleRuntimes => ArrayRef[Str|Undef]

  The layer's compatible runtimes.


=head2 CreatedDate => Str

  The date that the version was created, in ISO 8601 format. For example,
C<2018-11-27T15:10:45.123+0000>.


=head2 Description => Str

  The description of the version.


=head2 LayerVersionArn => Str

  The ARN of the layer version.


=head2 LicenseInfo => Str

  The layer's open-source license.


=head2 Version => Int

  The version number.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

