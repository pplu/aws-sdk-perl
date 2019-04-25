package Paws::KinesisAnalyticsV2::CloudWatchLoggingOption;
  use Moose;
  has LogStreamARN => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::CloudWatchLoggingOption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::CloudWatchLoggingOption object:

  $service_obj->Method(Att1 => { LogStreamARN => $value, ..., LogStreamARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::CloudWatchLoggingOption object:

  $result = $service_obj->Method(...);
  $result->Att1->LogStreamARN

=head1 DESCRIPTION

Provides a description of Amazon CloudWatch logging options, including
the log stream Amazon Resource Name (ARN).

=head1 ATTRIBUTES


=head2 B<REQUIRED> LogStreamARN => Str

  The ARN of the CloudWatch log to receive application messages.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

