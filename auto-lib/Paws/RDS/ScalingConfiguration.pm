package Paws::RDS::ScalingConfiguration;
  use Moose;
  has AutoPause => (is => 'ro', isa => 'Bool');
  has MaxCapacity => (is => 'ro', isa => 'Int');
  has MinCapacity => (is => 'ro', isa => 'Int');
  has SecondsUntilAutoPause => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ScalingConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::ScalingConfiguration object:

  $service_obj->Method(Att1 => { AutoPause => $value, ..., SecondsUntilAutoPause => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::ScalingConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoPause

=head1 DESCRIPTION

Contains the scaling configuration of an Aurora Serverless DB cluster.

For more information, see Using Amazon Aurora Serverless
(http://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless.html)
in the I<Amazon Aurora User Guide>.

=head1 ATTRIBUTES


=head2 AutoPause => Bool

  A value that specifies whether to allow or disallow automatic pause for
an Aurora DB cluster in C<serverless> DB engine mode. A DB cluster can
be paused only when it's idle (it has no connections).

If a DB cluster is paused for more than seven days, the DB cluster
might be backed up with a snapshot. In this case, the DB cluster is
restored when there is a request to connect to it.


=head2 MaxCapacity => Int

  The maximum capacity for an Aurora DB cluster in C<serverless> DB
engine mode.

Valid capacity values are C<2>, C<4>, C<8>, C<16>, C<32>, C<64>,
C<128>, and C<256>.

The maximum capacity must be greater than or equal to the minimum
capacity.


=head2 MinCapacity => Int

  The minimum capacity for an Aurora DB cluster in C<serverless> DB
engine mode.

Valid capacity values are C<2>, C<4>, C<8>, C<16>, C<32>, C<64>,
C<128>, and C<256>.

The minimum capacity must be less than or equal to the maximum
capacity.


=head2 SecondsUntilAutoPause => Int

  The time, in seconds, before an Aurora DB cluster in C<serverless> mode
is paused.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

