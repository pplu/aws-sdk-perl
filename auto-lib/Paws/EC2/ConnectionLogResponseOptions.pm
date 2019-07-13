package Paws::EC2::ConnectionLogResponseOptions;
  use Moose;
  has CloudwatchLogGroup => (is => 'ro', isa => 'Str');
  has CloudwatchLogStream => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ConnectionLogResponseOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ConnectionLogResponseOptions object:

  $service_obj->Method(Att1 => { CloudwatchLogGroup => $value, ..., Enabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ConnectionLogResponseOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudwatchLogGroup

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CloudwatchLogGroup => Str

  The name of the Amazon CloudWatch Logs log group to which connection
logging data is published.


=head2 CloudwatchLogStream => Str

  The name of the Amazon CloudWatch Logs log stream to which connection
logging data is published.


=head2 Enabled => Bool

  Indicates whether client connection logging is enabled for the Client
VPN endpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
