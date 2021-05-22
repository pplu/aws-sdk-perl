
package Paws::CloudWatch::StopMetricStreams;
  use Moose;
  has Names => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopMetricStreams');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatch::StopMetricStreamsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'StopMetricStreamsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::StopMetricStreams - Arguments for method StopMetricStreams on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopMetricStreams on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method StopMetricStreams.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopMetricStreams.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    my $StopMetricStreamsOutput = $monitoring->StopMetricStreams(
      Names => [
        'MyMetricStreamName', ...    # min: 1, max: 255
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/StopMetricStreams>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Names => ArrayRef[Str|Undef]

The array of the names of metric streams to stop streaming.

This is an "all or nothing" operation. If you do not have permission to
access all of the metric streams that you list here, then none of the
streams that you list in the operation will stop streaming.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopMetricStreams in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

