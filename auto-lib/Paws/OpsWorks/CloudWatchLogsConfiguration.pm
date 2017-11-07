package Paws::OpsWorks::CloudWatchLogsConfiguration;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool');
  has LogStreams => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorks::CloudWatchLogsLogStream]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::CloudWatchLogsConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::CloudWatchLogsConfiguration object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., LogStreams => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::CloudWatchLogsConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

Describes the Amazon CloudWatch logs configuration for a layer.

=head1 ATTRIBUTES


=head2 Enabled => Bool

  Whether CloudWatch Logs is enabled for a layer.


=head2 LogStreams => ArrayRef[L<Paws::OpsWorks::CloudWatchLogsLogStream>]

  A list of configuration options for CloudWatch Logs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

