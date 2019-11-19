# Generated from json/callargs_class.tt

package Paws::ApplicationInsights::DescribeObservation;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApplicationInsights::Types qw//;
  has ObservationId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeObservation');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ApplicationInsights::DescribeObservationResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ObservationId' => 1
                  },
  'types' => {
               'ObservationId' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::DescribeObservation - Arguments for method DescribeObservation on L<Paws::ApplicationInsights>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeObservation on the
L<Amazon CloudWatch Application Insights|Paws::ApplicationInsights> service. Use the attributes of this class
as arguments to method DescribeObservation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeObservation.

=head1 SYNOPSIS

    my $applicationinsights = Paws->service('ApplicationInsights');
    my $DescribeObservationResponse = $applicationinsights->DescribeObservation(
      ObservationId => 'MyObservationId',

    );

    # Results:
    my $Observation = $DescribeObservationResponse->Observation;

   # Returns a L<Paws::ApplicationInsights::DescribeObservationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/applicationinsights/DescribeObservation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ObservationId => Str

The ID of the observation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeObservation in L<Paws::ApplicationInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

