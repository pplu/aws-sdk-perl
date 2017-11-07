package Paws::ES::LogPublishingOption;
  use Moose;
  has CloudWatchLogsLogGroupArn => (is => 'ro', isa => 'Str');
  has Enabled => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::LogPublishingOption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::LogPublishingOption object:

  $service_obj->Method(Att1 => { CloudWatchLogsLogGroupArn => $value, ..., Enabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::LogPublishingOption object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchLogsLogGroupArn

=head1 DESCRIPTION

Log Publishing option that is set for given domain.

Attributes and their details:

=over

=item * CloudWatchLogsLogGroupArn: ARN of the Cloudwatch log group to
which log needs to be published.

=item * Enabled: Whether the log publishing for given log type is
enabled or not

=back


=head1 ATTRIBUTES


=head2 CloudWatchLogsLogGroupArn => Str

  


=head2 Enabled => Bool

  Specifies whether given log publishing option is enabled or not.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

