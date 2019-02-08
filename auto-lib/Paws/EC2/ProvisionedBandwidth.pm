package Paws::EC2::ProvisionedBandwidth;
  use Moose;
  has Provisioned => (is => 'ro', isa => 'Str', request_name => 'provisioned', traits => ['NameInRequest']);
  has ProvisionTime => (is => 'ro', isa => 'Str', request_name => 'provisionTime', traits => ['NameInRequest']);
  has Requested => (is => 'ro', isa => 'Str', request_name => 'requested', traits => ['NameInRequest']);
  has RequestTime => (is => 'ro', isa => 'Str', request_name => 'requestTime', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ProvisionedBandwidth

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ProvisionedBandwidth object:

  $service_obj->Method(Att1 => { Provisioned => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ProvisionedBandwidth object:

  $result = $service_obj->Method(...);
  $result->Att1->Provisioned

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Provisioned => Str

  Reserved. If you need to sustain traffic greater than the documented
limits
(https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-nat-gateway.html),
contact us through the Support Center
(https://console.aws.amazon.com/support/home?).


=head2 ProvisionTime => Str

  Reserved. If you need to sustain traffic greater than the documented
limits
(https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-nat-gateway.html),
contact us through the Support Center
(https://console.aws.amazon.com/support/home?).


=head2 Requested => Str

  Reserved. If you need to sustain traffic greater than the documented
limits
(https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-nat-gateway.html),
contact us through the Support Center
(https://console.aws.amazon.com/support/home?).


=head2 RequestTime => Str

  Reserved. If you need to sustain traffic greater than the documented
limits
(https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-nat-gateway.html),
contact us through the Support Center
(https://console.aws.amazon.com/support/home?).


=head2 Status => Str

  Reserved. If you need to sustain traffic greater than the documented
limits
(https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/vpc-nat-gateway.html),
contact us through the Support Center
(https://console.aws.amazon.com/support/home?).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
