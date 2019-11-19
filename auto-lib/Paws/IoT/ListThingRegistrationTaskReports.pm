
package Paws::IoT::ListThingRegistrationTaskReports;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoT::Types qw//;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has ReportType => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has TaskId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListThingRegistrationTaskReports');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/thing-registration-tasks/{taskId}/reports');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::ListThingRegistrationTaskReportsResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInQuery' => {
                      'MaxResults' => 'maxResults',
                      'NextToken' => 'nextToken',
                      'ReportType' => 'reportType'
                    },
  'IsRequired' => {
                    'ReportType' => 1,
                    'TaskId' => 1
                  },
  'types' => {
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ReportType' => {
                                 'type' => 'Str'
                               },
               'TaskId' => {
                             'type' => 'Str'
                           }
             },
  'ParamInURI' => {
                    'TaskId' => 'taskId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListThingRegistrationTaskReports - Arguments for method ListThingRegistrationTaskReports on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListThingRegistrationTaskReports on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ListThingRegistrationTaskReports.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListThingRegistrationTaskReports.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ListThingRegistrationTaskReportsResponse =
      $iot->ListThingRegistrationTaskReports(
      ReportType => 'ERRORS',
      TaskId     => 'MyTaskId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $NextToken  = $ListThingRegistrationTaskReportsResponse->NextToken;
    my $ReportType = $ListThingRegistrationTaskReportsResponse->ReportType;
    my $ResourceLinks =
      $ListThingRegistrationTaskReportsResponse->ResourceLinks;

    # Returns a L<Paws::IoT::ListThingRegistrationTaskReportsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ListThingRegistrationTaskReports>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return per request.



=head2 NextToken => Str

The token to retrieve the next set of results.



=head2 B<REQUIRED> ReportType => Str

The type of task report.

Valid values are: C<"ERRORS">, C<"RESULTS">

=head2 B<REQUIRED> TaskId => Str

The id of the task.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListThingRegistrationTaskReports in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

