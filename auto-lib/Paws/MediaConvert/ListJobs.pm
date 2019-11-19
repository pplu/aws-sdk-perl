
package Paws::MediaConvert::ListJobs;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::MediaConvert::Types qw//;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has Order => (is => 'ro', isa => Str, predicate => 1);
  has Queue => (is => 'ro', isa => Str, predicate => 1);
  has Status => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListJobs');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/2017-08-29/jobs');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MediaConvert::ListJobsResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInQuery' => {
                      'Order' => 'order',
                      'Queue' => 'queue',
                      'NextToken' => 'nextToken',
                      'MaxResults' => 'maxResults',
                      'Status' => 'status'
                    },
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'Order' => {
                            'type' => 'Str'
                          },
               'Queue' => {
                            'type' => 'Str'
                          },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::ListJobs - Arguments for method ListJobs on L<Paws::MediaConvert>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListJobs on the
L<AWS Elemental MediaConvert|Paws::MediaConvert> service. Use the attributes of this class
as arguments to method ListJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListJobs.

=head1 SYNOPSIS

    my $mediaconvert = Paws->service('MediaConvert');
    my $ListJobsResponse = $mediaconvert->ListJobs(
      MaxResults => 1,               # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
      Order      => 'ASCENDING',     # OPTIONAL
      Queue      => 'My__string',    # OPTIONAL
      Status     => 'SUBMITTED',     # OPTIONAL
    );

    # Results:
    my $Jobs      = $ListJobsResponse->Jobs;
    my $NextToken = $ListJobsResponse->NextToken;

    # Returns a L<Paws::MediaConvert::ListJobsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconvert/ListJobs>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Optional. Number of jobs, up to twenty, that will be returned at one
time.



=head2 NextToken => Str

Use this string, provided with the response to a previous request, to
request the next batch of jobs.



=head2 Order => Str

When you request lists of resources, you can optionally specify whether
they are sorted in ASCENDING or DESCENDING order. Default varies by
resource.

Valid values are: C<"ASCENDING">, C<"DESCENDING">

=head2 Queue => Str

Provide a queue name to get back only jobs from that queue.



=head2 Status => Str

A job's status can be SUBMITTED, PROGRESSING, COMPLETE, CANCELED, or
ERROR.

Valid values are: C<"SUBMITTED">, C<"PROGRESSING">, C<"COMPLETE">, C<"CANCELED">, C<"ERROR">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListJobs in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

