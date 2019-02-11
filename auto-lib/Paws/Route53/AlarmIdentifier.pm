package Paws::Route53::AlarmIdentifier;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Region => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::AlarmIdentifier

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53::AlarmIdentifier object:

  $service_obj->Method(Att1 => { Name => $value, ..., Region => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53::AlarmIdentifier object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

A complex type that identifies the CloudWatch alarm that you want
Amazon Route 53 health checkers to use to determine whether the
specified health check is healthy.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  The name of the CloudWatch alarm that you want Amazon Route 53 health
checkers to use to determine whether this health check is healthy.

Route 53 supports CloudWatch alarms with the following features:

=over

=item *

Standard-resolution metrics. High-resolution metrics aren't supported.
For more information, see High-Resolution Metrics
(http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/publishingMetrics.html#high-resolution-metrics)
in the I<Amazon CloudWatch User Guide>.

=item *

Statistics: Average, Minimum, Maximum, Sum, and SampleCount. Extended
statistics aren't supported.

=back



=head2 B<REQUIRED> Region => Str

  For the CloudWatch alarm that you want Route 53 health checkers to use
to determine whether this health check is healthy, the region that the
alarm was created in.

For the current list of CloudWatch regions, see Amazon CloudWatch
(http://docs.aws.amazon.com/general/latest/gr/rande.html#cw_region) in
the I<AWS Regions and Endpoints> chapter of the I<Amazon Web Services
General Reference>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

