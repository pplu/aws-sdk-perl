package Paws::EC2::CoipAddressUsage;
  use Moose;
  has AllocationId => (is => 'ro', isa => 'Str', request_name => 'allocationId', traits => ['NameInRequest']);
  has AwsAccountId => (is => 'ro', isa => 'Str', request_name => 'awsAccountId', traits => ['NameInRequest']);
  has AwsService => (is => 'ro', isa => 'Str', request_name => 'awsService', traits => ['NameInRequest']);
  has CoIp => (is => 'ro', isa => 'Str', request_name => 'coIp', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CoipAddressUsage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CoipAddressUsage object:

  $service_obj->Method(Att1 => { AllocationId => $value, ..., CoIp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CoipAddressUsage object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocationId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AllocationId => Str

The allocation ID of the address.


=head2 AwsAccountId => Str

The AWS account ID.


=head2 AwsService => Str

The AWS service.


=head2 CoIp => Str

The customer-owned IP address.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
