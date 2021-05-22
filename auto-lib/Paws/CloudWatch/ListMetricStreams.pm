
package Paws::CloudWatch::ListMetricStreams;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMetricStreams');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatch::ListMetricStreamsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListMetricStreamsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::ListMetricStreams - Arguments for method ListMetricStreams on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMetricStreams on the
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method ListMetricStreams.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMetricStreams.

=head1 SYNOPSIS

    my $monitoring = Paws->service('CloudWatch');
    my $ListMetricStreamsOutput = $monitoring->ListMetricStreams(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Entries   = $ListMetricStreamsOutput->Entries;
    my $NextToken = $ListMetricStreamsOutput->NextToken;

    # Returns a L<Paws::CloudWatch::ListMetricStreamsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/monitoring/ListMetricStreams>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in one operation.



=head2 NextToken => Str

Include this value, if it was returned by the previous call, to get the
next set of metric streams.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMetricStreams in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

