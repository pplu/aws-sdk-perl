
package Paws::AlexaForBusiness::ListBusinessReportSchedules;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBusinessReportSchedules');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::ListBusinessReportSchedulesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::ListBusinessReportSchedules - Arguments for method ListBusinessReportSchedules on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBusinessReportSchedules on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method ListBusinessReportSchedules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBusinessReportSchedules.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $ListBusinessReportSchedulesResponse = $a4b->ListBusinessReportSchedules(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $BusinessReportSchedules =
      $ListBusinessReportSchedulesResponse->BusinessReportSchedules;
    my $NextToken = $ListBusinessReportSchedulesResponse->NextToken;

# Returns a L<Paws::AlexaForBusiness::ListBusinessReportSchedulesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/ListBusinessReportSchedules>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of schedules listed in the call.



=head2 NextToken => Str

The token used to list the remaining schedules from the previous API
call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBusinessReportSchedules in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

