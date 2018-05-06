package Paws::GuardDuty::InstanceDetails;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest']);
  has IamInstanceProfile => (is => 'ro', isa => 'Paws::GuardDuty::IamInstanceProfile', request_name => 'iamInstanceProfile', traits => ['NameInRequest']);
  has ImageDescription => (is => 'ro', isa => 'Str', request_name => 'imageDescription', traits => ['NameInRequest']);
  has ImageId => (is => 'ro', isa => 'Str', request_name => 'imageId', traits => ['NameInRequest']);
  has InstanceId => (is => 'ro', isa => 'Str', request_name => 'instanceId', traits => ['NameInRequest']);
  has InstanceState => (is => 'ro', isa => 'Str', request_name => 'instanceState', traits => ['NameInRequest']);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest']);
  has LaunchTime => (is => 'ro', isa => 'Str', request_name => 'launchTime', traits => ['NameInRequest']);
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::NetworkInterface]', request_name => 'networkInterfaces', traits => ['NameInRequest']);
  has Platform => (is => 'ro', isa => 'Str', request_name => 'platform', traits => ['NameInRequest']);
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::ProductCode]', request_name => 'productCodes', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::Tag]', request_name => 'tags', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::InstanceDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GuardDuty::InstanceDetails object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GuardDuty::InstanceDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

The information about the EC2 instance associated with the activity
that prompted GuardDuty to generate a finding.

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

  The availability zone of the EC2 instance.


=head2 IamInstanceProfile => L<Paws::GuardDuty::IamInstanceProfile>

  


=head2 ImageDescription => Str

  The image description of the EC2 instance.


=head2 ImageId => Str

  The image ID of the EC2 instance.


=head2 InstanceId => Str

  The ID of the EC2 instance.


=head2 InstanceState => Str

  The state of the EC2 instance.


=head2 InstanceType => Str

  The type of the EC2 instance.


=head2 LaunchTime => Str

  The launch time of the EC2 instance.


=head2 NetworkInterfaces => ArrayRef[L<Paws::GuardDuty::NetworkInterface>]

  The network interface information of the EC2 instance.


=head2 Platform => Str

  The platform of the EC2 instance.


=head2 ProductCodes => ArrayRef[L<Paws::GuardDuty::ProductCode>]

  The product code of the EC2 instance.


=head2 Tags => ArrayRef[L<Paws::GuardDuty::Tag>]

  The tags of the EC2 instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

