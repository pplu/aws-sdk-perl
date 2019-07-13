package Paws::Snowball::CompatibleImage;
  use Moose;
  has AmiId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::CompatibleImage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Snowball::CompatibleImage object:

  $service_obj->Method(Att1 => { AmiId => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Snowball::CompatibleImage object:

  $result = $service_obj->Method(...);
  $result->Att1->AmiId

=head1 DESCRIPTION

A JSON-formatted object that describes a compatible Amazon Machine
Image (AMI). For more information on compatible AMIs, see Using Amazon
EC2 Compute Instances
(http://docs.aws.amazon.com/snowball/latest/developer-guide/using-ec2.html)
in the I<AWS Snowball Developer Guide>.

=head1 ATTRIBUTES


=head2 AmiId => Str

  The unique identifier for an individual Snowball Edge AMI.


=head2 Name => Str

  The optional name of a compatible image.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

