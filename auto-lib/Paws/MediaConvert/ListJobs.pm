
package Paws::MediaConvert::ListJobs;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has Order => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'order');
  has Queue => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'queue');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListJobs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-08-29/jobs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConvert::ListJobsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::ListJobs - Arguments for method ListJobs on L<Paws::MediaConvert>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListJobs on the 
AWS Elemental MediaConvert service. Use the attributes of this class
as arguments to method ListJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListJobs.

As an example:

  $service_obj->ListJobs(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int

Optional. Number of jobs, up to twenty, that will be returned at one
time.



=head2 NextToken => Str

Use this string, provided with the response to a previous request, to
request the next batch of jobs.



=head2 Order => Str



Valid values are: C<"ASCENDING">, C<"DESCENDING">

=head2 Queue => Str

Provide a queue name to get back only jobs from that queue.



=head2 Status => Str



Valid values are: C<"SUBMITTED">, C<"PROGRESSING">, C<"COMPLETE">, C<"CANCELED">, C<"ERROR">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListJobs in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

