package Paws::Snowball::Ec2AmiResource;
  use Moose;
  has AmiId => (is => 'ro', isa => 'Str', required => 1);
  has SnowballAmiId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::Ec2AmiResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Snowball::Ec2AmiResource object:

  $service_obj->Method(Att1 => { AmiId => $value, ..., SnowballAmiId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Snowball::Ec2AmiResource object:

  $result = $service_obj->Method(...);
  $result->Att1->AmiId

=head1 DESCRIPTION

A JSON-formatted object that contains the IDs for an Amazon Machine
Image (AMI), including the Amazon EC2 AMI ID and the Snowball Edge AMI
ID. Each AMI has these two IDs to simplify identifying the AMI in both
the AWS Cloud and on the device.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AmiId => Str

  The ID of the AMI in Amazon EC2.


=head2 SnowballAmiId => Str

  The ID of the AMI on the supported device.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

