package Paws::EC2::SpotDatafeedSubscription;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', xmlname => 'bucket', traits => ['Unwrapped']);
  has Fault => (is => 'ro', isa => 'Paws::EC2::SpotInstanceStateFault', xmlname => 'fault', traits => ['Unwrapped']);
  has OwnerId => (is => 'ro', isa => 'Str', xmlname => 'ownerId', traits => ['Unwrapped']);
  has Prefix => (is => 'ro', isa => 'Str', xmlname => 'prefix', traits => ['Unwrapped']);
  has State => (is => 'ro', isa => 'Str', xmlname => 'state', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SpotDatafeedSubscription

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SpotDatafeedSubscription object:

  $service_obj->Method(Att1 => { Bucket => $value, ..., State => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SpotDatafeedSubscription object:

  $result = $service_obj->Method(...);
  $result->Att1->Bucket

=head1 ATTRIBUTES

=head2 Bucket => Str

  The Amazon S3 bucket where the Spot instance data feed is located.

=head2 Fault => L<Paws::EC2::SpotInstanceStateFault>

  The fault codes for the Spot instance request, if any.

=head2 OwnerId => Str

  The AWS account ID of the account.

=head2 Prefix => Str

  The prefix that is prepended to data feed files.

=head2 State => Str

  The state of the Spot instance data feed subscription.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
