package Paws::EC2::InstanceTypeOffering;
  use Moose;
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest']);
  has Location => (is => 'ro', isa => 'Str', request_name => 'location', traits => ['NameInRequest']);
  has LocationType => (is => 'ro', isa => 'Str', request_name => 'locationType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceTypeOffering

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstanceTypeOffering object:

  $service_obj->Method(Att1 => { InstanceType => $value, ..., LocationType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstanceTypeOffering object:

  $result = $service_obj->Method(...);
  $result->Att1->InstanceType

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 InstanceType => Str

The instance type. For more information, see Instance Types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html)
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 Location => Str

The identifier for the location. This depends on the location type. For
example, if the location type is C<region>, the location is the Region
code (for example, C<us-east-2>.)


=head2 LocationType => Str

The location type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
